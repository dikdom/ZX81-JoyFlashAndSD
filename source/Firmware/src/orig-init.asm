/**
 *  This is a copy of the original RAM-CHECK and the RAM INITIALIZATION routines
 *  (copied from https://www.tablix.org/~avian/spectrum/rom/zx81.htm ) 
 */
L03CB:  LD      H,B             ;
        LD      L,C             ;
        LD      A,$3F           ;

;; RAM-FILL
L03CF:  LD      (HL),$02        ;
        DEC     HL              ;
        CP      H               ;
        JR      NZ,L03CF        ; to RAM-FILL

;; RAM-READ
L03D5:  AND     A               ;
        SBC     HL,BC           ;
        ADD     HL,BC           ;
        INC     HL              ;
        JR      NC,L03E2        ; to SET-TOP

        DEC     (HL)            ;
        JR      Z,L03E2         ; to SET-TOP

        DEC     (HL)            ;
        JR      Z,L03D5         ; to RAM-READ

;; SET-TOP
L03E2:  LD      (RAMTOP),HL      ; set system variable RAMTOP to first byte 
                                ; above the BASIC system area.

; ----------------------------
; THE 'INITIALIZATION' ROUTINE
; ----------------------------
;
;

;; INITIAL
L03E5:  LD      HL,($4004)      ; fetch system variable RAMTOP.
        DEC     HL              ; point to last system byte.
        LD      (HL),$3E        ; make GO SUB end-marker $3E - too high for
                                ; high order byte of line number.
                                ; (was $3F on ZX80)
        DEC     HL              ; point to unimportant low-order byte.
        LD      SP,HL           ; and initialize the stack-pointer to this
                                ; location.
        DEC     HL              ; point to first location on the machine stack
        DEC     HL              ; which will be filled by next CALL/PUSH.
        LD      ($4002),HL      ; set the error stack pointer ERR_SP to
                                ; the base of the now empty machine stack.

; Now set the I register so that the video hardware knows where to find the
; character set. This ROM only uses the character set when printing to 
; the ZX Printer. The TV picture is formed by the external video hardware. 
; Consider also, that this 8K ROM can be retro-fitted to the ZX80 instead of 
; its original 4K ROM so the video hardware could be on the ZX80.

        LD      A,$1E           ; address for this ROM is $1E00.
        LD      I,A             ; set I register from A.
        IM      1               ; select Z80 Interrupt Mode 1.

        LD      IY,$4000        ; set IY to the start of RAM so that the 
                                ; system variables can be indexed.
        LD      (IY+$3B),$40    ; set CDFLAG 0100 0000. Bit 6 indicates 
                                ; Compute nad Display required.

        LD      HL,$407D        ; The first location after System Variables -
                                ; 16509 decimal.
        LD      ($400C),HL      ; set system variable D_FILE to this value.
        LD      B,$19           ; prepare minimal screen of 24 NEWLINEs
                                ; following an initial NEWLINE.

;; LINE
L0408:  LD      (HL),$76        ; insert NEWLINE (HALT instruction)
        INC     HL              ; point to next location.
        DJNZ    L0408           ; loop back for all twenty five to LINE

        LD      ($4010),HL      ; set system variable VARS to next location

		CALL CLEAR
;        CALL    L149A           ; routine CLEAR sets $80 end-marker and the 
                                ; dynamic memory pointers E_LINE, STKBOT and
                                ; STKEND.

