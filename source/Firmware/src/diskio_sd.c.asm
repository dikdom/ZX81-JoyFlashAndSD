;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 19766-9ffe2042c-20220723
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Sun Aug 20 23:04:32 2023


	C_LINE	0,"./diskio_sd.c"

	MODULE	X__diskio_sd_c


;	INCLUDE "z80_crt0.hdr"


	C_LINE	0,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	0,"c:\apps\z88dk\lib\config\\..\..\/include/sys/compiler.h"
	C_LINE	10,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	0,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	17,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	26,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	35,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	40,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	45,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	50,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	55,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	60,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	65,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	70,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	75,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	80,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	85,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	89,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	90,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	91,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	93,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	94,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	95,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	101,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	106,"c:\apps\z88dk\lib\config\\..\..\/include/sys/types.h"
	C_LINE	11,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	13,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	14,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	15,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	17,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	18,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	19,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	21,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	22,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	23,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	25,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	26,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	27,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	29,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	30,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	31,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	33,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	34,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	35,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	37,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	38,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	40,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	41,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	43,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	44,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	49,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	52,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	54,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	55,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
	C_LINE	14,"./diskio_sd.c"
	C_LINE	0,"c:\apps\z88dk\lib\config\\..\..\/include/stdbool.h"
	C_LINE	12,"c:\apps\z88dk\lib\config\\..\..\/include/stdbool.h"
	C_LINE	15,"./diskio_sd.c"
	C_LINE	0,"./diskio_sd.h"
	C_LINE	85,"./diskio_sd.h"
	C_LINE	86,"./diskio_sd.h"
	C_LINE	87,"./diskio_sd.h"
	C_LINE	88,"./diskio_sd.h"
	C_LINE	89,"./diskio_sd.h"
	C_LINE	103,"./diskio_sd.h"
	C_LINE	106,"./diskio_sd.h"
	C_LINE	115,"./diskio_sd.h"
	C_LINE	122,"./diskio_sd.h"
	C_LINE	132,"./diskio_sd.h"
	C_LINE	145,"./diskio_sd.h"
	C_LINE	161,"./diskio_sd.h"
	C_LINE	176,"./diskio_sd.h"
	C_LINE	17,"./diskio_sd.c"
	C_LINE	0,"./sdandjoy.h"
	C_LINE	5,"./sdandjoy.h"
	C_LINE	6,"./sdandjoy.h"
	C_LINE	7,"./sdandjoy.h"
	C_LINE	8,"./sdandjoy.h"
	C_LINE	9,"./sdandjoy.h"
	C_LINE	10,"./sdandjoy.h"
	C_LINE	12,"./sdandjoy.h"
	C_LINE	16,"./sdandjoy.h"
	C_LINE	23,"./diskio_sd.c"
	C_LINE	105,"./diskio_sd.c"
	C_LINE	107,"./diskio_sd.c"
	C_LINE	117,"./diskio_sd.c"
	C_LINE	118,"./diskio_sd.c"
	C_LINE	121,"./diskio_sd.c"
	C_LINE	122,"./diskio_sd.c"
	C_LINE	123,"./diskio_sd.c"
	C_LINE	124,"./diskio_sd.c"
	C_LINE	125,"./diskio_sd.c"
	C_LINE	135,"./diskio_sd.c"
	SECTION	code_compiler
	

SPI_CS    = 0
SPI_CLK   = 1
SPI_DI    = 2
SD_SPI_CS = 3

; selecting SPI - DI and CLK low
@_sd_cs_lower
	ld a,(CTRL_SHADOW)
	AND $C0 + (1 << SD_SPI_CS) + (1 << SPI_DI)	; CLK low
	OUT (CTRL_PORT), A	; CLK low!
	AND ~(1 << SPI_CS)
	OUT (CTRL_PORT), A	; CS low!
	ld (CTRL_SHADOW), A
	ret

; deselecting SPI - DI high
@_sd_cs_raise
	ld A,(CTRL_SHADOW)
	AND $C0
	OR (1<< SD_SPI_CS) + (1 << SPI_CS) + (1<<SPI_DI)
	OUT (CTRL_PORT), A
	LD (CTRL_SHADOW), A
	ret

; on the falling edge - CLK expected high at start, low at end
@_sd_read_byte
	ld bc,$08:CTRL_PORT
	ld a,(CTRL_SHADOW)
.read_byte_loop
	OR (1<<SPI_CLK) + (1<<SPI_DI)		; at first this should have no effect (7)
    OUT (CTRL_PORT), A	; (11)
	AND ~(1<<SPI_CLK)   ; (7)
	OUT (CTRL_PORT), A  ; (11)
    IN E,(C)
	RR E
	RL L
	DJNZ .read_byte_loop
	ld (CTRL_SHADOW), A
	ld h,0
	ret

; on the rising edge - CLK expected low at start, high at end
@_sd_write_byte
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
_sd_write_byte_fast_entry
	ld b,$08
	ld a,(CTRL_SHADOW)
.write_byte_loop
    AND $C0 + (1 << SPI_CS) ; makes sure CLK and DI is low, CS is not touched
	RL L
	jr nc, .bit_set_done
	OR 1<<SPI_DI
.bit_set_done
    OUT (CTRL_PORT), A
	OR 1<<SPI_CLK
	OUT (CTRL_PORT), A
	DJNZ .write_byte_loop
	ld (CTRL_SHADOW), A
	ret

@_sd_read_block
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld bc,-512
.loop_sd_read_block
	push hl
	push bc
	call _sd_read_byte
	ld a,l
	pop bc
	pop hl
	ld (hl), a
	inc hl
	inc c
	jr nz, .loop_sd_read_block
	inc b
	jr nz, .loop_sd_read_block
	ret

@_sd_write_block
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld bc,-512
.loop_sd_write_block
	push hl
	push bc
	ld l, (hl)
	call _sd_write_byte_fast_entry
	pop bc
	pop hl
	inc hl
	inc c
	jr nz, .loop_sd_write_block
	inc b
	jr nz, .loop_sd_write_block
	ret

@_sd_clock
	ret


@_hbios
	ld hl,(FRAMES)
	ld de,0
	ex de, hl
	xor a
	sbc hl, de
	ld de, $00
	ret



; Function deselect flags 0x00000200 __smallc 
; void deselect()
	C_LINE	138,"./diskio_sd.c::deselect::0::0"
@_deselect
	call	_sd_cs_raise
	ld	hl,255	;const
	push	hl
	call	_sd_write_byte
	pop	bc
	ret


	C_LINE	151,"./diskio_sd.c::deselect::0::1"

; Function select flags 0x00000200 __smallc 
; void select(unsigned char pdrv)
; parameter 'unsigned char pdrv' at sp+2 size(1)
	C_LINE	154,"./diskio_sd.c::select::0::1"
@_select
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_sd_cs_lower
	pop	bc
	ret


	C_LINE	162,"./diskio_sd.c::select::0::2"

; Function wait_ready flags 0x00000200 __smallc 
; unsigned char BYTEwait_ready(unsigned char want_ff)
; parameter 'unsigned char want_ff' at sp+2 size(1)
	C_LINE	164,"./diskio_sd.c::wait_ready::0::2"
@_wait_ready
	dec	sp
i_2
	ld	hl,0	;const
	add	hl,sp
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_4	;
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	cp	255
	jp	z,i_3	;EOS
	jp	i_6	;EOS
i_4
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	cp	255
	jp	z,i_2	;EOS
i_3
	pop	hl
	push	hl
	ld	h,0
	inc	sp
	ret


	C_LINE	182,"./diskio_sd.c::wait_ready::0::6"

; Function read_data flags 0x00000200 __smallc 
; unsigned char BYTEread_data(unsigned char BYTE* buff, unsigned char length)
; parameter 'unsigned char length' at sp+2 size(1)
; parameter 'unsigned char BYTE* buff' at sp+4 size(2)
	C_LINE	187,"./diskio_sd.c::read_data::0::6"
_read_data
	push	bc
	ld	hl,0	;const
	add	hl,sp
	ld	(hl),0
	jp	i_10	;EOS
i_8
	ld	hl,0	;const
	add	hl,sp
	inc	(hl)
i_10
	pop	hl
	push	hl
	ld	a,l
	sub	100
	jp	nc,i_9	;
	ld	hl,1	;const
	add	hl,sp
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)
	cp	255
	jp	z,i_8	;EOS
i_9
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)
	cp	254
	jp	z,i_12	;
	ld	hl,0	;const
	pop	bc
	ret


i_15
	ld	hl,6	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
;mark line here!	
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
i_13
	ld	hl,4	;const
	add	hl,sp
	dec	(hl)
	ld	l,(hl)
	ld	h,0
	ld	a,h
	or	l
	jp	nz,i_15	;EOS
i_14
	call	_sd_read_byte
	call	_sd_read_byte
	ld	hl,5	;const
	pop	bc
	ret


	C_LINE	211,"./diskio_sd.c::read_data::0::9"

; Function read_sector flags 0x00000200 __smallc 
; unsigned char BYTEread_sector(unsigned char BYTE* buff)
; parameter 'unsigned char BYTE* buff' at sp+2 size(2)
	C_LINE	215,"./diskio_sd.c::read_sector::0::9"
@_read_sector
	push	bc
	ld	hl,0	;const
	add	hl,sp
	ld	(hl),0
	jp	i_18	;EOS
i_16
	ld	hl,0	;const
	add	hl,sp
	inc	(hl)
i_18
	pop	hl
	push	hl
	ld	a,l
	sub	100
	jp	nc,i_17	;
	ld	hl,1	;const
	add	hl,sp
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)
	cp	255
	jp	z,i_16	;EOS
i_17
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)
	cp	254
	jp	z,i_20	;
	ld	hl,0	;const
	pop	bc
	ret


i_20
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_sd_read_block
	pop	bc
	call	_sd_read_byte
	call	_sd_read_byte
	ld	hl,5	;const
	pop	bc
	ret


	C_LINE	236,"./diskio_sd.c::read_sector::0::11"

; Function write_sector flags 0x00000200 __smallc 
; unsigned char BYTEwrite_sector(const unsigned char BYTE* buff, unsigned char token)
; parameter 'unsigned char token' at sp+2 size(1)
; parameter 'const unsigned char BYTE* buff' at sp+4 size(2)
	C_LINE	241,"./diskio_sd.c::write_sector::0::11"
@_write_sector
	ld	hl,1	;const
	push	hl
	call	_wait_ready
	pop	bc
	call	l_lneg
	jp	nc,i_21	;
	ld	hl,0	;const
	ret


i_21
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_sd_write_byte
	pop	bc
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	cp	253
	jp	z,i_22	;
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_sd_write_block
	ld	hl,255	;const
	ex	(sp),hl
	call	_sd_write_byte
	ld	hl,255	;const
	ex	(sp),hl
	call	_sd_write_byte
	pop	bc
	call	_sd_read_byte
	ld	a,l
	and	31
	ld	l,a
	ld	h,0
	ret


i_22
	ld	hl,5	;const
	ret


	C_LINE	260,"./diskio_sd.c::write_sector::0::13"

; Function send_cmd flags 0x00000200 __smallc 
; unsigned int WORDsend_cmd(unsigned char cmd, unsigned long arg)
; parameter 'unsigned long arg' at sp+2 size(4)
; parameter 'unsigned char cmd' at sp+6 size(1)
	C_LINE	265,"./diskio_sd.c::send_cmd::0::13"
@_send_cmd
	push	bc
	push	bc
	dec	sp
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,l
	and	a
	jr	z,$+3
	scf
	jp	c,i_24	;
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)
	cp	12
	jp	z,i_23	;
i_24
	ld	hl,1	;const
	push	hl
	call	_wait_ready
	pop	bc
i_23
	ld	hl,11	;const
	add	hl,sp
	ld	a,128
	and	(hl)
	jp	z,i_26	;
	ld	hl,119	;const	(CMD55 -> $40 + 55)
	push	hl
	call	_sd_write_byte
	ld	hl,0	;const
	ex	(sp),hl
	call	_sd_write_byte
	ld	hl,0	;const
	ex	(sp),hl
	call	_sd_write_byte
	ld	hl,0	;const
	ex	(sp),hl
	call	_sd_write_byte
	ld	hl,0	;const
	ex	(sp),hl
	call	_sd_write_byte
	ld	hl,165	;const	($A5)
	ex	(sp),hl
	call	_sd_write_byte
	pop	bc
	call	_sd_read_byte
	dec	sp
	pop	hl
	ld	l,$FF
; 	ld	l,8
	push	hl
	jp	i_29	;EOS
i_27
	ld	hl,0	;const
	add	hl,sp
	dec	(hl)
i_29
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	_sd_read_byte
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	a,l
	and	128
	jp	z,i_30	;
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_30	;
	jp	i_27	;EOS
i_28
	inc	sp
	ld	hl,3	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,1
	and	a
	sbc	hl,de
	jp	nc,i_32	;
	call	_deselect
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	h,a
	ld	l,0
	inc	sp
	pop	bc
	pop	bc
	ret

i_32
	ld	hl,255	;const
	push	hl
	call	_sd_write_byte
	pop	bc
i_26
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	set	6,l
	ld	a,l
	and	127
	ld	l,a
	ld	h,0
	ld	l,a		;l_sxt
	rla
	sbc	a
	ld	h,a
	push	hl
	call	_sd_write_byte	; sd_write_byte((0x40|cmd)&0x7F);
	pop	bc
	ld	hl,1	;const
	add	hl,sp
	push	hl
	ld	hl,12	;const
	add	hl,sp
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,1	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	inc	hl
	cp	255
	jr	nz,$+3
	dec	(hl)
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_sd_write_byte
	pop	bc
	ld	hl,1	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	inc	hl
	cp	255
	jr	nz,$+3
	dec	(hl)
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_sd_write_byte
	pop	bc
	ld	hl,1	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	inc	hl
	cp	255
	jr	nz,$+3
	dec	(hl)
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_sd_write_byte
	pop	bc
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_sd_write_byte
	pop	bc
	ld	hl,0	;const
	add	hl,sp
	ld	(hl),165
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	nz,i_33	;
	ld	hl,0	;const
	add	hl,sp
	ld	(hl),149
i_33
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)
	cp	8
	jp	nz,i_34	;
	ld	hl,0	;const
	add	hl,sp
	ld	(hl),135
i_34
	pop	hl
	push	hl
	ld	h,0
	push	hl
	call	_sd_write_byte
	pop	bc
	call	_sd_read_byte
	dec	sp
	pop	hl
	ld	l,$FF
;	ld	l,8
	push	hl
	jp	i_37	;EOS
i_35
	ld	hl,0	;const
	add	hl,sp
	dec	(hl)
i_37
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	_sd_read_byte
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	a,l
	and	128
	jp	z,i_38	;
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_38	;
	jp	i_35	;EOS
i_36
	inc	sp
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	h,a
	ld	l,0
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)
	cp	12
	jp	z,i_41	;
	cp	38
	jp	nz,i_40	;
i_41
	ld	hl,1	;const
	push	hl
	call	_wait_ready
	pop	bc
i_40
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)
	cp	13
	jp	z,i_44	;
	cp	141
	jp	nz,i_43	;
i_44
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_sd_read_byte
	pop	de
	call	l_or
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_43
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	sp
	pop	bc
	pop	bc
	ret


	C_LINE	347,"./diskio_sd.c::send_cmd::0::19"

; Function disk_initialize flags 0x00000288 __smallc __z88dk_fastcall 
; unsigned char DSTATUSdisk_initialize(unsigned char pdrv)
; parameter 'unsigned char pdrv' at sp+2 size(1)
	C_LINE	351,"./diskio_sd.c::disk_initialize::0::19"
@disk_initialize
	GLOBAL	_disk_initialize
_disk_initialize
	push	hl
	ld	hl,65520	;const
	add	hl,sp
	ld	sp,hl
	xor	a
	ld	(_CardType),a
	ld	a,1
	ld	(_Stat),a
	ld	hl,16	;const
	add	hl,sp
	ld	a,1
	sub	(hl)
	jp	nc,i_46	;
	ld	hl,18	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,1	;const
	ret


i_46
	ld	hl,1	;const
	push	hl
	call	_sd_clock
	pop	bc
	dec	sp
	pop	hl
	ld	l,10
	push	hl
	jp	i_49	;EOS
i_47
	ld	hl,0	;const
	add	hl,sp
	dec	(hl)
i_49
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_48	;
	ld	hl,255	;const
	push	hl
	call	_sd_write_byte
	pop	bc
	jp	i_47	;EOS
i_48
	inc	sp
	ld	hl,16	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_select
	pop	bc
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,257	;const
	push	hl
	call	_hbios
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	l_glong
	ld	bc,200
	add	hl,bc
	jr	nc,$+3
	inc	de
	pop	bc
	call	l_plong
i_52
	ld	hl,10	;const
	add	hl,sp
	push	hl
	ld	hl,0	;const
	push	hl
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	de,256
	and	a
	sbc	hl,de
	jp	z,i_51	;EOS
i_53
	ld	hl,253	;const
	push	hl
	call	_sd_write_byte
	pop	bc
	ld	hl,0	;const
	push	hl
	jp	i_56	;EOS
i_54
	pop	hl
	inc	hl
	push	hl
i_56
	pop	hl
	push	hl
	ld	de,520
	and	a
	sbc	hl,de
	jp	nc,i_55	;
	call	_sd_read_byte
	jp	i_54	;EOS
i_55
	pop	bc
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,257	;const
	push	hl
	call	_hbios
	pop	bc
	pop	bc
	call	l_plong
i_50
	ld	hl,4	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	call	l_long_ugt
	jp	c,i_52	;EOS
i_51
	ld	hl,10	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,256
	and	a
	sbc	hl,de
	jp	nz,i_57	;
	ld	hl,10	;const
	add	hl,sp
	push	hl
	ld	hl,8	;const
	push	hl
	ld	hl,426	;const
	ld	de,0
	push	de
	push	hl
	call	_send_cmd	; send_cmd(CMD8, 0x1AA))
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	de,256
	and	a
	sbc	hl,de
	jp	nz,i_58	;
	ld	hl,8	;const
	add	hl,sp
	push	hl
	ld	hl,14	;const
	add	hl,sp
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,8	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,8	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,8	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,14	;const
	add	hl,sp
	ld	a,(hl)
	cp	1
	jp	nz,i_60	;
	ld	hl,15	;const
	add	hl,sp
	ld	a,(hl)
	cp	170
	jp	nz,i_60	;
i_61_i_60
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,257	;const
	push	hl
	call	_hbios
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	l_glong
	ld	bc,50
	add	hl,bc
	jr	nc,$+3
	inc	de
	pop	bc
	call	l_plong
i_64
	ld	hl,10	;const
	add	hl,sp
	push	hl
	ld	hl,169	;const
	push	hl
	ld	l,0	
	ld	de,16384
	push	de
	push	hl
	call	_send_cmd	; send_cmd(ACMD41, HIGH_CAPACITY_SUPPORT)
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	a,h
	or	l
	jp	z,i_63	;EOS
i_65
	ld	hl,255	;const
	push	hl
	call	_sd_write_byte
	pop	bc
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,257	;const
	push	hl
	call	_hbios
	pop	bc
	pop	bc
	call	l_plong
i_62
	ld	hl,4	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	call	l_long_ugt
	jp	c,i_64	;EOS
i_63
	ld	hl,10	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_66	;
	ld	hl,58	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd	; send_cmd(CMD58, 0)
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_67	;
	ld	hl,8	;const
	add	hl,sp
	push	hl
	ld	hl,14	;const
	add	hl,sp
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,8	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,8	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,8	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,12	;const
	add	hl,sp
	ld	a,64
	and	(hl)
	jp	z,i_68	;
	ld	hl,12	;const
	jp	i_69	;
i_68
	ld	hl,4	;const
i_69
	ld	a,l
	ld	(_CardType),a
	jp	i_70	;EOS
i_58
	ld	hl,10	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,1280
	and	a
	sbc	hl,de
	jp	nz,i_71	;
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,257	;const
	push	hl
	call	_hbios
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	l_glong
	ld	bc,50
	add	hl,bc
	jr	nc,$+3
	inc	de
	pop	bc
	call	l_plong
i_74
	ld	hl,10	;const
	add	hl,sp
	push	hl
	ld	hl,169	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	a,h
	or	l
	jp	z,i_73	;EOS
i_75
	ld	hl,255	;const
	push	hl
	call	_sd_write_byte
	pop	bc
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,257	;const
	push	hl
	call	_hbios
	pop	bc
	pop	bc
	call	l_plong
i_72
	ld	hl,4	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	call	l_long_ugt
	jp	c,i_74	;EOS
i_73
	ld	hl,10	;const
	add	hl,sp
	ld	de,0	;const
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ld	a,d
	or	e
	jp	z,i_76	;
	ld	a,2
	ld	(_CardType),a
	jp	i_77	;EOS
i_76
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,257	;const
	push	hl
	call	_hbios
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	l_glong
	ld	bc,50
	add	hl,bc
	jr	nc,$+3
	inc	de
	pop	bc
	call	l_plong
i_80
	ld	hl,10	;const
	add	hl,sp
	push	hl
	ld	hl,1	;const
	push	hl
	dec	hl
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	de,256
	and	a
	sbc	hl,de
	jp	z,i_79	;EOS
i_81
	ld	hl,255	;const
	push	hl
	call	_sd_write_byte
	pop	bc
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,257	;const
	push	hl
	call	_hbios
	pop	bc
	pop	bc
	call	l_plong
i_78
	ld	hl,4	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	call	l_long_ugt
	jp	c,i_80	;EOS
i_79
	ld	hl,10	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,256
	and	a
	sbc	hl,de
	jp	nz,i_82	;
	ld	a,1
	ld	(_CardType),a
	jp	i_83	;EOS
i_82
	xor	a
	ld	(_CardType),a
	jp	i_84	;EOS
i_71
	xor	a
	ld	(_CardType),a
i_70
	ld	a,(_CardType)
	and	a
	jp	z,i_86	;
	ld	a,(_CardType)
	cp	4
	ld	hl,0	;const
	jr	z,$+3
	inc	hl
	set	3,l
	ld	a,h
	or	l
	jp	z,i_86	;
i_87_i_86
	ld	hl,16	;const
	push	hl
	ld	hl,512	;const
	ld	de,0
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_88	;
	xor	a
	ld	(_CardType),a
i_57
	ld	hl,2	;const
	push	hl
	call	_sd_clock
	pop	bc
	call	_deselect
	ld	a,(_CardType)
	and	a
	jp	z,i_89	;
	ld	hl,(_Stat)
	ld	h,0
	res	0,l
	ld	h,0
	ld	a,l
	ld	(_Stat),a
i_89
	ld	hl,(_Stat)
	ld	h,0
	exx
	ld	hl,18	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret


	C_LINE	470,"./diskio_sd.c::disk_initialize::0::35"

; Function disk_status flags 0x00000288 __smallc __z88dk_fastcall 
; unsigned char DSTATUSdisk_status(unsigned char pdrv)
; parameter 'unsigned char pdrv' at sp+2 size(1)
	C_LINE	474,"./diskio_sd.c::disk_status::0::35"
@disk_status
	GLOBAL	_disk_status
._disk_status
	push	hl
	ld	a,l
	and	a
	jp	z,i_91	;
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	cp	1
	jp	nz,i_90	;
i_91
	ld	hl,(_Stat)
	ld	h,0
	pop	bc
	ret


i_90
	ld	hl,1	;const
	pop	bc
	ret


i_93
	pop	bc
	ret


	C_LINE	493,"./diskio_sd.c::disk_status::0::36"

; Function disk_read flags 0x00000280 __smallc 
; const int DRESULTdisk_read(unsigned char pdrv, unsigned char BYTE* buff, unsigned long sector, unsigned int count)
; parameter 'unsigned int count' at sp+2 size(2)
; parameter 'unsigned long sector' at sp+4 size(4)
; parameter 'unsigned char BYTE* buff' at sp+8 size(2)
; parameter 'unsigned char pdrv' at sp+10 size(1)
	C_LINE	500,"./diskio_sd.c::disk_read::0::36"
@disk_read
	GLOBAL	_disk_read
_disk_read
	ld	hl,2560
	push	hl
	dec	sp
	ld	hl,13	;const
	add	hl,sp
	ld	a,1
	sub	(hl)
	jp	c,i_95	;
	ld	hl,5	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_lneg
	jp	nc,i_94	;
i_95
	ld	hl,4	;const
	inc	sp
	pop	bc
	ret


i_94
	ld	a,(_Stat)
	and	1
	jp	z,i_97	;
	ld	hl,3	;const
	inc	sp
	pop	bc
	ret


i_100
	ld	hl,13	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_select
	pop	bc
	ld	hl,(_CardType)
	ld	h,0
	ld	a,8
	and	l
	ld	l,a
	call	l_lneg
	jp	nc,i_101	;
	ld	hl,7	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mult
	pop	bc
	call	l_plong
i_101
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,7	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,1
	and	a
	sbc	hl,de
	jp	nc,i_102	;
	ld	hl,18	;const
	jp	i_103	;
i_102
	ld	hl,17	;const
i_103
	pop	de
	ld	a,l
	ld	(de),a
	pop	hl
	push	hl
	ld	h,0
	push	hl
	ld	hl,9	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_104	;
i_107
	ld	hl,1	;const
	add	hl,sp
	push	hl
	ld	hl,13	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_read_sector
	pop	bc
	pop	de
	ld	a,l
	ld	(de),a
	cp	5
	jp	nz,i_106	;EOS
i_108
	ld	hl,11	;const
	add	hl,sp
	push	hl
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	h
	inc	h
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_105
	ld	hl,5	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	inc	hl
	cp	255
	jr	nz,$+3
	dec	(hl)
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_107	;EOS
i_106
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	cp	18
	jp	nz,i_109	;
	ld	hl,12	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
i_104
	call	_deselect
i_98
	ld	hl,2	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	and	a
	jp	z,i_110	;
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)
	cp	5
	jp	z,i_110	;
	jp	i_100	;EOS
i_99
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)
	cp	5
	jp	nz,i_112	;
	ld	hl,0	;const
	jp	i_113	;
i_112
	ld	hl,1	;const
i_113
	inc	sp
	pop	bc
	ret


	C_LINE	543,"./diskio_sd.c::disk_read::0::40"

; Function disk_write flags 0x00000280 __smallc 
; const int DRESULTdisk_write(unsigned char pdrv, const unsigned char BYTE* buff, unsigned long sector, unsigned int count)
; parameter 'unsigned int count' at sp+2 size(2)
; parameter 'unsigned long sector' at sp+4 size(4)
; parameter 'const unsigned char BYTE* buff' at sp+8 size(2)
; parameter 'unsigned char pdrv' at sp+10 size(1)
	C_LINE	550,"./diskio_sd.c::disk_write::0::40"
.disk_write
	GLOBAL	_disk_write
@_disk_write
	ld	hl,2560
	push	hl
	ld	hl,12	;const
	add	hl,sp
	ld	a,1
	sub	(hl)
	jp	c,i_115	;
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_lneg
	jp	nc,i_114	;
i_115
	ld	hl,4	;const
	pop	bc
	ret


i_114
	ld	a,(_Stat)
	and	1
	jp	z,i_117	;
	ld	hl,3	;const
	pop	bc
	ret


i_117
	ld	a,(_Stat)
	and	4
	jp	z,i_118	;
	ld	hl,2	;const
	pop	bc
	ret


i_121
	ld	hl,12	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_select
	pop	bc
	ld	hl,(_CardType)
	ld	h,0
	ld	a,8
	and	l
	ld	l,a
	call	l_lneg
	jp	nc,i_122	;
	ld	hl,6	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mult
	pop	bc
	call	l_plong
i_122
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	dec	hl
	ld	a,h
	or	l
	jp	nz,i_123	;
	ld	hl,24	;const
	push	hl
	ld	l,8	
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_124	;
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,12	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,254	;const
	push	hl
	call	_write_sector
	pop	bc
	pop	bc
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,4	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_125	;EOS
i_123
	ld	a,(_CardType)
	and	6
	jp	z,i_126	;
	ld	hl,151	;const
	push	hl
	ld	l,6	
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,0
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
i_126
	ld	hl,25	;const
	push	hl
	ld	l,8	
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_127	;
i_130
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,12	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,252	;const
	push	hl
	call	_write_sector
	pop	bc
	pop	bc
	pop	de
	ld	a,l
	ld	(de),a
	cp	5
	jp	nz,i_129	;EOS
i_131
	ld	hl,10	;const
	add	hl,sp
	push	hl
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	h
	inc	h
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_128
	ld	hl,4	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	inc	hl
	cp	255
	jr	nz,$+3
	dec	(hl)
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_130	;EOS
i_129
	ld	a,(_CardType)
	and	6
	jp	z,i_133	;
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	cp	5
	jp	nz,i_133	;
i_134_i_133
	ld	hl,0	;const
	push	hl
	ld	l,253	
	push	hl
	call	_write_sector
	pop	bc
	pop	bc
i_125
	call	_deselect
i_119
	ld	hl,1	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	and	a
	jp	z,i_135	;
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	cp	5
	jp	z,i_135	;
	jp	i_121	;EOS
i_120
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_137	;
	ld	hl,1	;const
	jp	i_138	;
i_137
	ld	hl,0	;const
i_138
	pop	bc
	ret


	C_LINE	600,"./diskio_sd.c::disk_write::0::47"

; Function disk_ioctl flags 0x00000280 __smallc 
; const int DRESULTdisk_ioctl(unsigned char pdrv, unsigned char cmd, void * buff)
; parameter 'void * buff' at sp+2 size(2)
; parameter 'unsigned char cmd' at sp+4 size(1)
; parameter 'unsigned char pdrv' at sp+6 size(1)
	C_LINE	606,"./diskio_sd.c::disk_ioctl::0::47"
@disk_ioctl
	GLOBAL	_disk_ioctl
_disk_ioctl
	ld	hl,65499	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,39	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	pop	bc
	push	hl
	push	de
	ld	hl,39	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	bc
	push	hl
	ld	hl,43	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	call	disk_status
	ld	a,l
	and	1
	jp	z,i_139	;
	ld	hl,37	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,3	;const
	ret


i_139
	ld	hl,43	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_select
	pop	bc
	ld	hl,35	;const
	add	hl,sp
	ld	(hl),1
	inc	hl
	ld	(hl),0
	ld	hl,41	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
i_142
	ld	a,l
	and	a
	jp	z,i_143	;
	cp	+(1% 256)
	jp	z,i_144	;
	cp	+(2% 256)
	jp	z,i_150	;
	cp	+(3% 256)
	jp	z,i_151	;
	cp	+(4% 256)
	jp	z,i_165	;
	cp	+(10% 256)
	jp	z,i_175	;
	cp	+(11% 256)
	jp	z,i_176	;
	cp	+(12% 256)
	jp	z,i_180	;
	cp	+(13% 256)
	jp	z,i_184	;
	cp	+(14% 256)
	jp	z,i_189	;
	jp	i_193	;EOS
i_143
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_141	;EOS
i_144
	ld	hl,9	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_146	;
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,16	;const
	push	hl
	call	_read_data
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_146	;
i_147_i_146
	ld	hl,4	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,l
	rlca
	rlca
	and	3
	ld	l,a
	cp	1
	jp	nz,i_148	;
	ld	hl,21	;const
	add	hl,sp
	push	hl
	ld	hl,15	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	ld	hl,16	;const
	add	hl,sp
	ld	h,(hl)
	ld	l,0
	pop	de
	add	hl,de
	push	hl
	ld	hl,15	;const
	add	hl,sp
	ld	a,(hl)
	and	63
	ld	e,a
	ld	d,0
	ld	hl,0	;const
	exx
	pop	hl
	ld	de,0
	push	de
	push	hl
	exx
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	inc	hl
	ld	a,h
	or	l
	jr	nz,$+3
	inc	de
	pop	bc
	call	l_plong
	ld	hl,39	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,23	;const
	add	hl,sp
	ld	a,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	h,a
	ld	l,0
	ld	a,2
	call	l_long_aslo
	pop	bc
	call	l_plong
	jp	i_149	;EOS
i_148
	ld	hl,20	;const
	add	hl,sp
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)
	and	15
	ld	l,a
	ld	h,0
	push	hl
	ld	hl,18	;const
	add	hl,sp
	ld	a,(hl)
	and	128
	ld	l,a
	ld	h,0
	rlca
	and	1
	ld	l,a
	pop	de
	add	hl,de
	push	hl
	ld	hl,17	;const
	add	hl,sp
	ld	a,(hl)
	and	3
	ld	l,a
	ld	h,0
	add	hl,hl
	pop	de
	add	hl,de
	inc	hl
	inc	hl
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,21	;const
	add	hl,sp
	push	hl
	ld	hl,14	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,l
	rlca
	rlca
	and	3
	ld	l,a
	push	hl
	ld	hl,15	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	push	hl
	ld	hl,14	;const
	add	hl,sp
	ld	a,(hl)
	and	3
	ld	l,a
	ld	h,0
	sla	l
	sla	l
	ld	h,l
	ld	l,0
	pop	de
	add	hl,de
	inc	hl
	ld	de,0
	pop	bc
	call	l_plong
	ld	hl,39	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,23	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,26	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	bc,-9
	add	hl,bc
	ld	de,0
	call	l_long_asl
	pop	bc
	call	l_plong
i_149
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_141	;EOS
i_150
	ld	hl,39	;const
	add	hl,sp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	(hl),0
	inc	hl
	ld	(hl),2
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_141	;EOS
i_151
	ld	a,(_CardType)
	and	4
	jp	z,i_152	;
	ld	hl,141	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_154	;
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,16	;const
	push	hl
	call	_read_data
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_154	;
i_155_i_154
	ld	hl,20	;const
	add	hl,sp
	ld	(hl),48
	jp	i_158	;EOS
i_156
	ld	hl,20	;const
	add	hl,sp
	dec	(hl)
i_158
	ld	hl,20	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,h
	or	l
	jp	z,i_157	;
	call	_sd_read_byte
	jp	i_156	;EOS
i_157
	ld	hl,39	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,16	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,l
	rrca
	rrca
	rrca
	rrca
	and	15
	ld	l,a
	ld	de,0
	ld	bc,0
	push	bc
	ld	bc,16
	push	bc
	call	l_long_asl
	pop	bc
	call	l_plong
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_159	;EOS
i_152
	ld	hl,9	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_161	;
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,16	;const
	push	hl
	call	_read_data
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_161	;
i_162_i_161
	ld	a,(_CardType)
	and	2
	jp	z,i_163	;
	ld	hl,39	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,16	;const
	add	hl,sp
	ld	a,(hl)
	and	63
	ld	l,a
	ld	h,0
	add	hl,hl
	push	hl
	ld	hl,19	;const
	add	hl,sp
	ld	a,(hl)
	and	128
	ld	l,a
	ld	h,0
	ld	de,7
	call	l_asr_u_hl_by_e
	pop	de
	add	hl,de
	inc	hl
	push	hl
	ld	hl,21	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,l
	rlca
	rlca
	and	3
	ld	l,a
	dec	hl
	pop	de
	call	l_asl
	ld	de,0
	pop	bc
	call	l_plong
	jp	i_164	;EOS
i_163
	ld	hl,39	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,16	;const
	add	hl,sp
	ld	a,(hl)
	and	124
	ld	l,a
	ld	h,0
	rrca
	rrca
	and	63
	ld	l,a
	inc	hl
	push	hl
	ld	hl,19	;const
	add	hl,sp
	ld	a,(hl)
	and	3
	ld	l,a
	ld	h,0
	add	hl,hl
	add	hl,hl
	add	hl,hl
	push	hl
	ld	hl,21	;const
	add	hl,sp
	ld	a,(hl)
	and	224
	ld	l,a
	ld	h,0
	rlca
	rlca
	rlca
	and	7
	ld	l,a
	pop	de
	add	hl,de
	inc	hl
	pop	de
	call	l_mult_u
	ld	de,0
	pop	bc
	call	l_plong
i_164
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_141	;EOS
i_165
	ld	hl,(_CardType)
	ld	h,0
	ld	a,6
	and	l
	ld	l,a
	call	l_lneg
	jp	c,i_141	;EOS
i_166
	ld	hl,43	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	ld	hl,11	;const
	push	hl
	ld	l,8	
	add	hl,sp
	push	hl
	call	disk_ioctl
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	nz,i_141	;EOS
i_167
	ld	hl,4	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,l
	rlca
	rlca
	and	3
	ld	l,a
	call	l_lneg
	jp	nc,i_169	;
	ld	hl,14	;const
	add	hl,sp
	bit	6,(hl)
	jp	nz,i_169	;
	jp	i_141	;EOS
i_168
	ld	hl,33	;const
	add	hl,sp
	ex	de,hl
	ld	hl,39	;const
	add	hl,sp
	ldi
	ldi
	ld	hl,29	;const
	add	hl,sp
	push	hl
	ld	hl,35	;const
	add	hl,sp
	call	l_glonghlp
	pop	bc
	call	l_plong
	ld	hl,25	;const
	add	hl,sp
	push	hl
	ld	hl,35	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,4
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,(_CardType)
	ld	h,0
	ld	a,8
	and	l
	ld	l,a
	call	l_lneg
	jp	nc,i_171	;
	ld	hl,29	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mult
	pop	bc
	call	l_plong
	ld	hl,25	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mult
	pop	bc
	call	l_plong
i_171
	ld	hl,32	;const
	push	hl
	ld	l,31	
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_173	;
	ld	hl,33	;const
	push	hl
	ld	l,27	
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_173	;
	ld	hl,38	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_173	;
	ld	hl,1	;const
	push	hl
	call	_wait_ready
	pop	bc
	ld	a,h
	or	l
	jp	z,i_173	;
i_174_i_173
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_141	;EOS
i_175
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	ld	hl,_CardType
	ld	a,(hl)
	pop	de
	ld	(de),a
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_141	;EOS
i_176
	ld	hl,9	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_178	;
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,16	;const
	push	hl
	call	_read_data
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_178	;
i_179_i_178
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_141	;EOS
i_180
	ld	hl,10	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_182	;
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,16	;const
	push	hl
	call	_read_data
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_182	;
i_183_i_182
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_141	;EOS
i_184
	ld	hl,58	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_185	;
	ld	hl,20	;const
	add	hl,sp
	ld	(hl),4
	jp	i_188	;EOS
i_186
	ld	hl,20	;const
	add	hl,sp
	dec	(hl)
i_188
	ld	hl,20	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_187	;
	pop	de
	pop	hl
	inc	hl
	push	hl
	push	de
	dec	hl
	push	hl
	call	_sd_read_byte
	pop	de
	ld	a,l
	ld	(de),a
	jp	i_186	;EOS
i_187
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_141	;EOS
i_189
	ld	hl,141	;const
	push	hl
	ld	l,0	
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_send_cmd
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_191	;
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,64	;const
	push	hl
	call	_read_data
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_191	;
i_192_i_191
	ld	hl,35	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_141	;EOS
i_193
	ld	hl,35	;const
	add	hl,sp
	ld	(hl),4
	inc	hl
	ld	(hl),0
i_141
	call	_deselect
	ld	hl,35	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	exx
	ld	hl,37	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret


; --- Start of Optimiser additions ---
i_7 = i_6
i_12 = i_15
i_67 = i_66
i_66 = i_59
i_83 = i_77
i_84 = i_70
i_88 = i_85
i_85 = i_57
i_97 = i_100
i_109 = i_104
i_118 = i_121
i_132 = i_127
i_127 = i_125
i_160 = i_159
i_5 = i_6
i_6 = i_2
i_11 = i_8
i_19 = i_16
i_30 = i_28
i_31_i_30 = i_27
i_38 = i_36
i_39_i_38 = i_35
i_60 = i_59
i_59 = i_70
i_77 = i_84
i_86 = i_85
i_110 = i_99
i_111_i_110 = i_100
i_124 = i_125
i_133 = i_132
i_135 = i_120
i_136_i_135 = i_121
i_146 = i_145
i_145 = i_141
i_154 = i_153
i_153 = i_159
i_161 = i_160
i_159 = i_141
i_169 = i_168
i_170_i_169 = i_141
i_173 = i_172
i_172 = i_141
i_178 = i_177
i_177 = i_141
i_182 = i_181
i_181 = i_141
i_185 = i_141
i_191 = i_190
i_190 = i_141


; --- Start of Static Variables ---

	SECTION	bss_compiler
_Stat	defs	1
_CardType	defs	1
	SECTION	code_compiler
	


; --- Start of Scope Defns ---

	GLOBAL	disk_initialize
	GLOBAL	disk_status
	GLOBAL	disk_read
	GLOBAL	disk_write
	GLOBAL	disk_ioctl
	GLOBAL	_sd_cs_raise
	GLOBAL	_sd_cs_lower
	GLOBAL	_sd_read_byte
	GLOBAL	_sd_write_byte
	GLOBAL	_sd_clock
	GLOBAL	_hbios
	GLOBAL	_sd_read_block
	GLOBAL	_sd_write_block


; --- End of Scope Defns ---


; --- End of Compilation ---
