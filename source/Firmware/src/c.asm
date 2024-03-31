@l_lneg
   ; HL = !HL
   ; set carry if result is zero

   ld a,h
   or l
   ld hl,0
   ret nz
   scf
   inc l
   ret 
  
@l_or
   ; "or" HL and DE into HL
   ld a,l
   or e
   ld l,a

   ld a,h
   or d
   ld h,a

   ret 

@l_and
   ; "and" HL and DE into HL
   ld a,l
   and e
   ld l,a

   ld a,h
   and d
   ld h,a

   ret  

@l_asl
   ; shift DE left arithmetically by HL, move to HL

   ld a,l
   ex de,hl
   
l_lsl_hl:
l_small_lsl_hl:
   ; logical shift left 16-bit number
   ;
   ; enter : hl = 16-bit number
   ;          a = shift amount
   ;
   ; exit  : hl = hl << a
   ;
   ; uses  : af, b, hl
   or a
   ret z

   cp 16
   jp nc, error_znc

   ld b,a
.shift_loop:
   add hl,hl
   djnz .shift_loop

   ret 

@l_mult_u
l_small_mul_16_16x16:
   ; multiplication of two 16-bit numbers into a 16-bit product
   ;
   ; enter : de = 16-bit multiplicand
   ;         hl = 16-bit multiplicand
   ;
   ; exit  : hl = 16-bit product
   ;         carry reset
   ;
   ; uses  : af, bc, de, hl

   inc h
   dec h
   jr z, .eight_bit_1
   
   inc d
   dec d
   jr z, .eight_bit_0
   
   ld c,l
   ld a,h
   ld b,16
   
   jr rejoin

.eight_bit_0:
   ex de,hl

.eight_bit_1:

l_small_mul_16_16x8
   ; multiplication of a 16-bit number by an 8-bit number into 16-bit product
   ;
   ; enter :  l = 8-bit multiplicand
   ;         de = 16-bit multiplicand
   ;
   ; exit  : hl = 16-bit product
   ;         carry reset
   ;
   ; uses  : af, bc, hl

   ld a,l
   ld b,8
rejoin:
   ld hl,0
.loop_0:
   ; ac = 16-bit multiplicand
   ; de = 16-bit multiplicand
   ;  b = iterations
   add hl,hl
   rl c
   rla
   jr nc, .loop_1
   add hl,de
.loop_1:
   djnz .loop_0
   or a
   ret 

@l_div_u
; unsigned division
; hl = de/hl, de = de%hl

; defc l_div_u = l_divu_16_16x16 - 1 
   ; entry point to swap dividend / divisor

   ex de,hl
l_divu_16_16x16:
l_small_divu_16_16x16:

   ; unsigned division of 16-bit numbers
   ;
   ; enter : hl = 16-bit dividend
   ;         de = 16-bit divisor
   ;
   ; exit  : success
   ;
   ;            hl = quotient
   ;            de = remainder
   ;            carry reset
   ;
   ;         divide by zero
   ;
   ;            hl = $ffff = UINT_MAX
   ;            de = dividend
   ;            carry set, errno = EDOM
   ;
   ; uses  : af, bc, de, hl

   ld a,d
   or e
   jr z, divide_zero

l0_small_divu_16_16x16:

   ; skip divide by zero check

   inc d
   dec d
   jr z, l0_small_divu_16_16x8

divisor_sixteen_bit:

   ; result of the first eight iterations are known
   ; so let's initialize as if that already happened

   ld a,l
   ld l,h
   ld h,0
   ld b,8

.loop_16_0:

   rla
   adc hl,hl
   
   sbc hl,de
   jr nc, .loop_16_1
   add hl,de

.loop_16_1:

   ccf
   djnz .loop_16_0

   rla
   
   ld d,b
   ld e,a
   ex de,hl

   or a
   ret

   ; entry point to swap dividend / divisor
   
   ex de,hl

l_small_divu_16_16x8:

   ; unsigned division of 16-bit by 8-bit
   ;
   ; enter : hl = 16-bit dividend
   ;          e = 8-bit divisor
   ;
   ; exit  : success
   ;
   ;            hl = quotient
   ;            de = remainder
   ;            carry reset
   ;
   ;         divide by zero
   ;
   ;            hl = $ffff = UINT_MAX
   ;            de = dividend
   ;            carry set, errno = EDOM
   ;
   ; uses  : af, bc, de, hl

   inc e
   dec e
   jr z, divide_zero

l0_small_divu_16_16x8:

   xor a
   ld d,a
   ld b,16

.loop_8_0:

   add hl,hl
   rla
   jr c, .loop_8_2
   
   cp e
   jr c, .loop_8_1

.loop_8_2:

   sub e
   inc l

.loop_8_1:

   djnz .loop_8_0

   ld e,a
   
   or a
   ret

divide_zero:

   ex de,hl
   ld l,$ff                    ; unspecified error

errno_mc:
   ; set errno = l
   ; set hl = -1
   ; set carry flag
      
;   ld h,0
;   ld (_errno),hl
error_mc:
   ; set hl = -1
   ; set carry flag
   ld hl,-1
   scf
   ret 

@l_plong
   ld a,l
   
   ld (bc),a
   inc bc
   
   ld a,h
   
   ld (bc),a
   inc bc
   
   ld a,e
   
   ld (bc),a
   inc bc
   
   ld a,d
   
   ld (bc),a
   ret 
   
@l_glong2sp
; Fetch long from hl and push to stack
    ld      e,(hl)
    inc     hl
    ld      d,(hl)
    inc     hl
    ld      a,(hl)
    inc     hl
    ld      h,(hl)
    ld      l,a
    ex      (sp),hl
    push    de
    jp      (hl)
 
@l_glonghlp
;Fetch long dehl from (hl)
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a

@l_glong
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ex de,hl
    ret 

@l_long_ugt

   ; PRIMARY > SECONDARY, carry set if true
   ; HL set to 0 (false) or 1 (true)

   ; dehl  = secondary
   ; stack = primary, ret
   
   call l_long_ucmp
   jr z, .false
   
   ccf
   ret c
.false:
   dec l
   ret 
l_long_ucmp:
   ; computes (primary - secondary)
   ;
   ; dehl  = secondary
   ; stack = primary, return address 1, return address 2

   pop bc                      ; bc = return address 2

   exx

   pop bc                      ; bc = return address 1

   pop hl
   pop de                      ; dehl = primary

   push bc                     ; save return address 1
   ld a,l

   exx

   push bc                     ; save return address 2

   sub l
   ld l,a

   exx
   ld a,h
   exx

   sbc a,h
   ld h,a

   exx
   ld a,e
   exx

   sbc a,e
   ld e,a

   exx
   ld a,d
   exx

   sbc a,d
   ld d,a

   ; dehl = result, a = d

   jp C, .negative

.positive:

   ld a,d
   or e
   or h
   or l

.negative:

   ld hl,1
   ret 

@l_long_aslo
l_lsl_dehl:
l_small_lsl_dehl:

   ; logical shift left 32-bit number
   ;
   ; enter : dehl = 32-bit number
   ;            a = shift amount
   ;
   ; exit  : dehl = dehl << a
   ;
   ; uses  : af, b, de, hl

   or a
   ret z

   cp 32
   jp nc, error_lznc
   
   ld b,a
   ld a,e

.shift_loop:

   add hl,hl
   rla
   rl d
   
   djnz .shift_loop
   
   ld e,a
   ret 
   
@l_long_asl
   ; Shift primary left by secondary
   ;
   ; Primary is on the stack, and is 32 bits long therefore we need only
   ; concern ourselves with l (secondary) as our counter

   ld a,l                      ; a = shift amount
   
   pop hl                      ; hl = return address
   pop de                      ; de = primary.LSW
   ex (sp),hl                  ; hl = primary.MSW
   
   ex de,hl                    ; dehl = primary
   jp l_lsl_dehl

error_lznc:
   ; set dehl = 0
   ; reset carry flag
   ld de,0
error_znc:
   ; set hl = 0
   ; reset carry flag
   ld hl,0
   scf
   ccf
   
   ret 


@l_long_mult
;       Multiply 32 bit numbers
;
;       Entry: dehl=arg1
;       Stack: return address, arg2
;
;       Exit:  dehl=result
   ; dehl = arg1
   ; stack = arg2, ret

   exx
   pop bc
   
   pop hl
   pop de
   
   push bc
l_muls_32_32x32 
l_small_muls_32_32x32:
   ; signed multiplication of two 32-bit signed numbers
   ;
   ; error reported on overflow
   ;
   ; enter : dehl = signed 32-bit number
   ;         dehl'= signed 32-bit number
   ;
   ; exit  : success
   ;
   ;            dehl = signed 32-bit product
   ;            carry reset
   ;
   ;         signed overflow (LIA-1 enabled only)
   ;
   ;            dehl = LONG_MAX or LONG_MIN
   ;            carry set, errno = ERANGE
   ;
   ; uses  : af, bc. de, hl, bc', de', hl'

   ; determine sign of result
   
   ld a,d
   exx
   xor d

   push af

   ; make multiplicands positive

   bit 7,d
   call NZ,l_neg_dehl

   exx

   bit 7,d
   call NZ,l_neg_dehl

   ; multiply & check for overflow

   call l_small_mul_32_32x32

   pop af
   ret P

   ; correct sign of result

   jp l_neg_dehl

l_mulu_32_32x32:
l_small_mul_32_32x32:

    ; multiplication of two 32-bit numbers into a 32-bit product
    ;
    ; enter : dehl = 32-bit multiplicand (more leading zeroes = better performance)
    ;         dehl'= 32-bit multiplicand
    ;
    ; exit  : dehl = 32-bit product
    ;         carry reset
    ;
    ; uses  : af, bc, de, hl, bc', de', hl'

    ld a,e
    or d
    exx

    or e
    or d
    jr Z,l0_small_mul_32_16x16  ; demote if both are uint16_t

    xor a
    push hl
    exx
    ld c,l
    ld b,h
    pop hl
    push de
    ex de,hl
    ld l,a
    ld h,a
    exx
    pop bc
    ld l,a
    ld h,a

l0_small_mul_32_32x32:

    ; dede' = 32-bit multiplicand
    ; bcbc' = 32-bit multiplicand
    ; hlhl' = 0

    ld a,b
    ld b,32

.loop_0:

    rra
    rr c
    exx
    rr b
    rr c
    jr nc, .loop_1

    add hl,de
    exx
    adc hl,de
    exx

.loop_1:

    sla e
    rl d
    exx
    rl e
    rl d

    djnz .loop_0

    push hl
    exx
    pop de

    or a
    ret 

l_neg_dehl:

   ; negate dehl
   ;
   ; enter : dehl = long
   ;
   ; exit  : dehl = -long
   ;
   ; uses  : af, de, hl, carry unaffected
   
   ld a,l
   cpl
   ld l,a
   
   ld a,h
   cpl
   ld h,a
   
   ld a,e
   cpl
   ld e,a
   
   ld a,d
   cpl
   ld d,a
   
   inc l
   ret nz
   
   inc h
   ret nz
   
   inc de
   ret 
   
l0_small_mul_32_16x16:

    ; multiplication of two 16-bit numbers into a 32-bit product
    ;
    ; enter : hl'= 16-bit multiplier   = y
    ;         hl = 16-bit multiplicand = x
    ;
    ; exit  : dehl = 32-bit product
    ;         carry reset
    ;
    ; uses  : af, bc, de, hl, bc', de', hl'

    push hl
    exx
    pop de

l_small_mul_32_16x16 
    ; multiplication of two 16-bit numbers into a 32-bit product
    ;
    ; enter : de = 16-bit multiplicand
    ;         hl = 16-bit multiplicand
    ;
    ; exit  : dehl = 32-bit product
    ;         carry reset
    ;
    ; uses  : af, bc, de, hl

;    ld bc,hl
	ld b,h
	ld c,l

    ld a,16
    ld hl,0

.loop_0:
    ; bc = 16-bit multiplicand
    ; de = 16-bit multiplicand
    ;  a = iterations

    add hl,hl
    rl e
    rl d

    jp NC,.loop_1
    add hl,bc
    jp NC,.loop_1
    inc de

.loop_1:
    dec a
    jp NZ,.loop_0

    or a
    ret 
	
@l_long_ne

   ; DEHL != secondary, carry set if true
   ; stack = secondary, ret

   pop bc	; bloody IX is used by the ZX81 std ROM. IY too. HL is an in- and an out-parameter
   ld a,c
   ld (.IX1 + 1), a
   ld (.IX2 + 1), a
   ld a,b
   ld (.IX1 + 2), a
   ld (.IX2 + 2), a
   
   pop bc
   
   ld a,c
   cp l
   jr nz, .notequal_0
   
   ld a,b
   cp h
   jr nz, .notequal_0
   
   pop bc
   
   ld a,c
   cp e
   jr nz, .notequal_1
   
   ld a,b
   cp d
   jr nz, .notequal_1
.equal:

   ld hl,0
.IX1
   jp ($1975)

.notequal_0:

   pop bc

.notequal_1:

   scf
   ld hl,1
.IX2
   jp ($1975) 
   
@l_long_uge
   ; PRIMARY >= SECONDARY, carry set if true
   ; HL set to 0 (false) or 1 (true)
   
   ; dehl  = secondary
   ; stack = primary, ret
   
   call l_long_ucmp
   
   ccf
   ret c
   
   dec l
   ret 
   
@l_long_mult_u
   ; dehl = arg1
   ; stack = arg2, ret

   exx
   pop bc
   
   pop hl
   pop de
   
   push bc
   jp l_mulu_32_32x32 
   
@l_long_mod_u
   and a
   jr  common
@l_long_div_u
   scf
common:

   ; dehl  = divisor
   ; stack = dividend, ret
   
   exx
   pop bc
   
   pop hl
   pop de
   
   push bc
   jp c,l_divu_32_32x32 - 1
   call l_divu_32_32x32 - 1
   exx
   ret 
   
   exx
l_divu_32_32x32:
l_small_divu_32_32x32:

   ; unsigned division of 32-bit numbers
   ;
   ; enter : dehl = 32-bit divisor
   ;         dehl'= 32-bit dividend
   ;
   ; exit  : success
   ;
   ;            dehl = 32-bit quotient
   ;            dehl'= 32-bit remainder
   ;            carry reset
   ;
   ;         divide by zero
   ;
   ;            dehl = $ffffffff = ULONG_MAX
   ;            dehl'= dividend
   ;            carry set, errno = EDOM
   ;
   ; uses  : af, bc, de, hl, bc', de', hl'

   ld a,d
   or e
   or h
   or l
   jr z, divide_zero_32x32  

l0_small_divu_32_32x32:

   xor a
   push hl
   exx
   ld c,l
   ld b,h
   pop hl
   push de
   ex de,hl
   ld l,a
   ld h,a
   exx
   pop bc
   ld l,a
   ld h,a

l1_small_divu_32_32x32:
   
   ; dede' = 32-bit divisor
   ; bcbc' = 32-bit dividend
   ; hlhl' = 0

   ld a,b
   ld b,32

.loop_0:

   exx
   rl c
   rl b
   exx
   rl c
   rla
   
   exx
   adc hl,hl
   exx
   adc hl,hl
   
   exx
   sbc hl,de
   exx
   sbc hl,de
   jr nc, .loop_1

   exx
   add hl,de
   exx
   adc hl,de

.loop_1:

   ccf
   djnz .loop_0

   exx
   rl c
   rl b
   exx
   rl c
   rla

   ; quotient  = acbc'
   ; remainder = hlhl'
   
   push hl
   exx
   pop de
   push bc
   exx
   pop hl
   ld e,c
   ld d,a
   
   ret

divide_zero_32x32:
   
   dec de
;   jp error_divide_by_zero_mc 
   jp errno_mc - 2 

@l_long_asr_u
   ; Shift primary (on stack) right by secondary, 

   ld a,l                      ; a = shift amount
   
   pop hl                      ; hl = return address
   pop de                      ; de = primary.LSW
   ex (sp),hl                  ; hl = primary.MSW
   
   ex de,hl
l_lsr_dehl:
l_small_lsr_dehl:

   ; logical shift right 32-bit unsigned long
   ;
   ; enter : dehl = 32-bit number
   ;            a = shift amount
   ;
   ; exit  : dehl = dehl >> a
   ;
   ; uses  : af, b, de, hl

   or a
   ret z
   
   cp 32
   jp nc, error_lznc
   
   ld b,a
   ld a,e

.shift_loop:

   srl d
   rra
   rr h
   rr l
   
   djnz .shift_loop
   
   ld e,a
   ret 

   
@l_long_eq
   ; dehl == secondary?  carry if true
   ;
   ; dehl  = primary
   ; stack = secondary, ret
   
   pop bc	; bloody IX is used by the ZX81 std ROM. IY too. HL is an in- and an out-parameter
   ld a,c
   ld (.IX1 + 1), a
   ld (.IX2 + 1), a
   ld a,b
   ld (.IX1 + 2), a
   ld (.IX2 + 2), a
   
   pop bc
   
   ld a,c
   cp l
   jr nz, .notequal_0
   
   ld a,b
   cp h
   jr nz, .notequal_0
   
   pop bc
   
   ld a,c
   cp e
   jr nz, .notequal_1
   
   ld a,b
   cp d
   jr nz, .notequal_1

.equal:
   scf
   ld hl,1
.IX1:
   jp ($1975)

.notequal_0:
   pop bc

.notequal_1:
   xor a
	ld l,a
	ld h,a
.IX2:
   jp ($1975) 
   
@l_long_and

   ; primary = dehl
   ; stack = secondary, ret
   ; 90 cycles

   pop bc	; bloody IX is used by the ZX81 std ROM. IY too. HL is an in- and an out-parameter
   ld a,c
   ld (.IX1 + 1), a
   ld a,b
   ld (.IX1 + 2), a

   pop bc
   ld a,c
   and l
   ld l,a
   ld a,b
   and h
   ld h,a
   pop bc
   ld a,c
   and e
   ld e,a
   ld a,b
   and d
   ld d,a
.IX1
   jp ($1975) 
   
@l_long_or

   ; dehl = primary
   ; stack = secondary, ret

   pop bc	; bloody IX is used by the ZX81 std ROM. IY too. HL is an in- and an out-parameter
   ld a,c
   ld (.IX1 + 1), a
   ld a,b
   ld (.IX1 + 2), a

   
   pop bc
   
   ld a,c
   or l
   ld l,a
   
   ld a,b
   or h
   ld h,a
   
   pop bc
   
   ld a,c
   or e
   ld e,a
   
   ld a,b
   or d
   ld d,a
.IX1   
   jp ($1975) 
   
@l_long_com
l_cpl_dehl:
   ; uses : af, de, hl
   
   ld a,d
   cpl
   ld d,a
   
   ld a,e
   cpl
   ld e,a

l_cpl_dehl_hl:

   ld a,h
   cpl
   ld h,a
   
   ld a,l
   cpl
   ld l,a
   
   ret 

@l_long_ule

   ; PRIMARY <= SECONDARY, carry set if true
   ; HL set to 0 (false) or 1 (true)

   ; dehl  = secondary
   ; stack = primary, ret

   call l_long_ucmp
   ret c
   
   scf
   ret z
   
   dec l
   
   or a
   ret 
   
@l_long_ult

   ; PRIMARY < SECONDARY, carry set if true
   ;  HL set to 0 (false) or 1 (true)
   
   ; dehl  = secondary
   ; stack = primary, ret
   
   call l_long_ucmp
   ret c
   
   dec l
   ret 

@l_asr_u
        ex      de,hl
@l_asr_u_hl_by_e
@l_asr_u_1
    dec     e
    ret     m
	srl	h
    rr      l
    jp      l_asr_u_1 

@l_inclong
l_inc_dehl

   ; increment 32-bit value
   ;
   ; enter : dehl = 32 bit number
   ;
   ; exit  : dehl = dehl + 1
   ;
   ; uses  : f, de, hl

   inc l
   ret nz
   
   inc h
   ret nz
   
   inc de
   ret 

@l_eq
   ; de == hl
   ; carry set if true
   
   or a
   sbc hl,de
   
   scf
	inc hl
   ret z
	
   xor a
   ld l,a
   ld h,a
   ret 

@l_ge
   ; DE >= HL [signed

   ; set carry if true

   ld a,h
   add a,$80
   ld b,a
   
   ld a,d
   add a,$80
   
   cp b
   ccf
   jp nz, l_compare_result
   
   ld a,e
   cp l
   ccf
   
   jp l_compare_result 

@l_uge
   ; DE >= HL [unsigned

   ; set carry if true

   ld a,d
   cp h
   
   ccf
   jp nz, l_compare_result
   
   ld a,e
   cp l
   
   ccf
   jp l_compare_result 

@l_le
   ; DE <= HL [signed

   ; set carry if true

   ld a,d
   add a,$80
   ld b,a
   
   ld a,h
   add a,$80
   
   cp b
   ccf
   jp nz, l_compare_result
   
   ld a,l
   cp e
   ccf
   
   jp l_compare_result 

@l_gcharspsp
    add     hl,sp
    inc     hl
    inc     hl
    ld      a,(hl)
    ld      l,a
    rlca
    sbc     a,a
    ld      h,a
    ex      (sp),hl
    jp      (hl)
 
@memcmp_callee

   pop hl
   pop bc
   pop de
   ex (sp),hl
   ex de,hl

;   jp asm_memcmp
asm_memcmp:

   ; enter : bc = uint n
   ;         hl = void *s2
   ;         de = void *s1
   ;
   ; exit  :  a = h = *s1-*s2 of last char compared
   ;         de = ptr in s1 to first differing char
   ;
   ;         if s1==s2 : hl=0, bc=0,  nc+z flags set
   ;         if s1<<s2 : hl<0, c+nz flags set
   ;         if s1>>s2 : hl>0, nc+nz flags set
   ;
   ; uses  : af, bc, de, hl

   ld a,b
   or c
   jr Z,equal

asm0_memcmp:
.loop:
   ld a,(de)                   ; a = *s1
   
   cpi                         ; *s1 - *s2

   jr nz,different

   inc de
   

   jp PE,.loop

equal:
;   ld hl,bc
   ld h,b
   ld l,c
   ret

different
   dec hl
   sub (hl)
   ld h,a
   ret 

@memcpy_callee

   pop hl
   pop bc
   pop de
   ex (sp),hl
   ex de,hl

;   jp asm_memccpy 
asm_memcpy:

   ; enter : bc = size_t n
   ;         hl = void *s2 = src
   ;         de = void *s1 = dst
   ;
   ; exit  : hl = void *s1 = dst
   ;         de = ptr in s1 to one byte past last byte copied
   ;         bc = 0
   ;         carry reset
   ;
   ; uses  : af, bc, de, hl

   ld a,b
   or c
   jr Z,zero_n

asm0_memcpy:
   push de

   ldir

   pop hl
   or a
   ret

asm1_memcpy:
zero_n:
;   ld hl,de
   ld h,d
   ld l,e
   ret 

l_compare_result:

   ; return hl=1 if carry set, hl=0 otherwise
   
   ld hl,0
   ret nc
   inc hl    ; do not disturb z flag
   ret 
