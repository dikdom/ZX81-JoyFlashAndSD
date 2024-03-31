/**
 * This is right after the ZX81 is initialized.
 * We have to print the welcome screen and either
 * select a program to load, load it and run
 * or
 * exit to the BASIC
 */
 
WINDOW_HEIGHT EQU 16
WINDOW_POS EQU CTRL_SHADOW + 1       ; DW
SELECTED_LINE EQU WINDOW_POS + 2	 ; DB
NUM_OF_ENTRIES EQU SELECTED_LINE + 1 ; DW
CURR_LINE EQU NUM_OF_ENTRIES + 2     ; DB
CURR_LINE_ADDR EQU CURR_LINE + 1     ; DW
CURR_NUM_ADDR EQU CURR_LINE_ADDR + 2 ; DW
TEMP_AREA EQU CURR_NUM_ADDR + 2      ; 32 bytes
LAST_PRESSED_KEY EQU TEMP_AREA + 32  ; DB
PRESSED_KEY_CNT EQU LAST_PRESSED_KEY + 1  ; DB
CURR_ENTRY_ADDR EQU PRESSED_KEY_CNT + 1  ; DW
CURRENT_DIR_FADDR EQU CURR_ENTRY_ADDR + 2 ; 3 bytes


ON_SCREEN_ENTRIES EQU $BA00
REPEAT_KEY_COUNTER_FIRST EQU $0e
REPEAT_KEY_COUNTER_SECOND EQU $06

KEY_1      EQU 1
KEY_UP     EQU 2
KEY_DOWN   EQU 3
KEY_LEFT   EQU 4
KEY_RIGHT  EQU 5
KEY_SELECT EQU 6

  JP LOAD_TESTPRG
  CALL INIT_VARIABLES
  CALL DRAW_SCREEN
  CALL SET_VARIABLES_FROM_DIRHEADER
  CALL PRINT_FULL_BOX

HANDLE_INPUT:
  CALL CHECK_KEMPSTON
  xor a
  cp c
  jr nz,SKIP_KEYBOARD_CHECK
  call CHECK_56780
SKIP_KEYBOARD_CHECK:
  push bc
  ld a,c
  push af
  ld b, 2
  ld c, 0
  call PRINT_AT
  pop af
  call PRINT_HEX
  ld a,(LAST_PRESSED_KEY)
  call PRINT_HEX
  ld a,(PRESSED_KEY_CNT)
  call PRINT_HEX
  xor a
  RST $10
  ld hl,(NUM_OF_ENTRIES)
  push hl
  ld a,h
  call PRINT_HEX
  pop hl
  ld a,l
  call PRINT_HEX
  xor a
  RST $10
  ld hl,(WINDOW_POS)
  push hl
  ld a,h
  call PRINT_HEX
  pop hl
  ld a,l
  call PRINT_HEX
  pop bc

  ld a,(LAST_PRESSED_KEY)
  cp C
  ld hl,PRESSED_KEY_CNT
  jr nz,NEW_KEY_PRESSED
  ld a,(hl)	; same key-press as before
  dec a
  ld (hl),a
  cp REPEAT_KEY_COUNTER_FIRST - 2 ; debounce
  jr z,KEY_PRESSED_FIRST
  OR A
  jr z,KEY_PRESSED
  jr HANDLE_INPUT
NEW_KEY_PRESSED:
  ld a,c
  ld (LAST_PRESSED_KEY), a
  ld a, REPEAT_KEY_COUNTER_FIRST
  ld (hl), a
  jr HANDLE_INPUT
KEY_PRESSED:
  ld a,REPEAT_KEY_COUNTER_SECOND
  ld (hl), a
KEY_PRESSED_FIRST:
  ld a,c
  cp KEY_UP
  jr z,PROCESS_KEY_UP
  cp KEY_DOWN
  jp z,PROCESS_KEY_DOWN
  cp KEY_LEFT
  jp z,PROCESS_KEY_LEFT
  cp KEY_RIGHT
  jp z,PROCESS_KEY_RIGHT
  cp KEY_SELECT
  jp z,PROCESS_KEY_SELECT
  cp KEY_1
  jp z,PROCESS_EXIT
  jp HANDLE_INPUT

PROCESS_KEY_UP:
  ld a,(SELECTED_LINE)
  ld (CURR_LINE), a
  call SET_CURR_LINE_ADDR
  ld a, (CURR_LINE)
  or a
  jr z, ON_TOP_OF_BOX
  ld b,0
  ld (hl), b
  ld de,31
  add hl,de
  ld (hl), b
  dec a
  ld de,31+33
  scf
  ccf
  sbc hl,de
  ld b,_GT
  ld (hl), b
  ld de,31
  add hl,de
  ld b, _LT
  ld (hl), b
  ld hl, SELECTED_LINE
  dec (hl)
  jp HANDLE_INPUT
ON_TOP_OF_BOX:
  ld hl,(WINDOW_POS)
  ld a,l
  or h
  jp z, HANDLE_INPUT ; we are at the top of the window (pos: 0)
  
  ld hl, WINDOW_POS
  dec (hl)
  
  ld hl, ON_SCREEN_ENTRIES + 31 + (WINDOW_HEIGHT - 2)*32
  ld de, ON_SCREEN_ENTRIES + 31 + (WINDOW_HEIGHT - 1)*32
  ld bc, (WINDOW_HEIGHT - 1)*32
  lddr
  
  xor a
  ld hl, (D_FILE)
  ld de, 1+4*33
  add hl, de
  ld (hl), a
  ld de, 31
  add hl, de
  ld (hl), a
  
  ld hl, (D_FILE)
  ld de, 1+(4 + WINDOW_HEIGHT - 2)*33 + 31
  add hl, de
  push hl
  ld de, 33
  add hl, de
  ex de, hl
  pop hl
  ld bc, (WINDOW_HEIGHT - 1)*33
  lddr
  
  ld b,0
  ld c,1
  call PRINT_ENTRIES

  jp HANDLE_INPUT
  
PROCESS_KEY_DOWN:
  ld hl,(WINDOW_POS)
  ld a,(SELECTED_LINE)
  ld e,a
  ld d,0
  add hl,de
  inc hl
  ex de, hl
  ld hl, (NUM_OF_ENTRIES)
  xor a
  sbc hl,de
  jp c, HANDLE_INPUT
  ld a,h
  or l
  jp z, HANDLE_INPUT
  ld a,(SELECTED_LINE)
  cp (WINDOW_HEIGHT - 1)
  jr z,ON_BOTTOM_OF_BOX
  ld a,(SELECTED_LINE)
  ld (CURR_LINE), a
  call SET_CURR_LINE_ADDR
  xor a
  ld (hl),a
  ld de,31
  add hl,de
  ld (hl),a
  ld de,2
  add hl,de
  ld a,_GT
  ld (hl), a
  ld de,31
  add hl,de
  ld a,_LT
  ld (hl), a
  ld hl, SELECTED_LINE
  inc (hl)
  jp HANDLE_INPUT
ON_BOTTOM_OF_BOX:
  ld hl, WINDOW_POS
  inc (hl)
  
  ld hl, ON_SCREEN_ENTRIES + 32
  ld de, ON_SCREEN_ENTRIES
  ld bc, (WINDOW_HEIGHT - 1)*32
  ldir
  
; removing the selection ><
  xor a
  ld hl, (D_FILE)
  ld de, 1+(3 + WINDOW_HEIGHT)*33
  add hl, de
  ld (hl), a
  ld de, 31
  add hl, de
  ld (hl), a

; moving the screen 
  ld hl, (D_FILE)
  ld de, 1+4*33
  add hl, de
  push hl
  ld de, 33
  add hl, de
  pop de
  ld bc, (WINDOW_HEIGHT - 1) * 33
  ldir
  
  ld b,(WINDOW_HEIGHT - 1)
  ld c,1
  call PRINT_ENTRIES
  
  jp HANDLE_INPUT
  
PROCESS_KEY_LEFT:
  ld hl, (WINDOW_POS)
  ld de, WINDOW_HEIGHT
  xor a
  sbc hl, de
  jr c, LESS_THAN_A_PAGE
PRINT_FULL_SCREEN:
  ld (WINDOW_POS), hl
  CALL PRINT_FULL_BOX
  JP HANDLE_INPUT
LESS_THAN_A_PAGE:
  ld hl, (WINDOW_POS)
  ld a,l
  or h
  jr z, PAGE_UP_ON_FIRST_PAGE
PAGE_UP_MOVE_TO_FIRST_PAGE:
  ld hl, 0
  jr PRINT_FULL_SCREEN
PAGE_UP_ON_FIRST_PAGE:
  ld a, (SELECTED_LINE)
  ld (CURR_LINE), a
  call SET_CURR_LINE_ADDR
  xor a
  ld (hl), a
  ld de,31
  add hl,de
  ld (hl), a
  ld (SELECTED_LINE), a
  ld (CURR_LINE), a
  call SET_CURR_LINE_ADDR
  call PRINT_SELECTION
  jp HANDLE_INPUT

PROCESS_KEY_RIGHT:
  ld hl, WINDOW_HEIGHT
  ld de, (NUM_OF_ENTRIES)
  xor a
  sbc hl,de
  jr nc,PAGE_DOWN_ONE_PAGE_ONLY
  ld hl, (WINDOW_POS)
  ld de, WINDOW_HEIGHT
  add hl, de
  ld de, (NUM_OF_ENTRIES)
  xor a
  sbc hl, de
  jr z, PAGE_DOWN_THIS_IS_THE_LAST_PAGE
  ld hl, (WINDOW_POS)
  ld de, WINDOW_HEIGHT + WINDOW_HEIGHT
  add  hl, de
  ld de, (NUM_OF_ENTRIES)
  xor a
  sbc hl, de
  jr nc, PAGE_DOWN_IS_ALMOST_OK
  ld hl,(WINDOW_POS)
  ld de, WINDOW_HEIGHT
  add hl, de
  ld (WINDOW_POS), hl
  jr FULL_BOX_VARS_SET
PAGE_DOWN_ONE_PAGE_ONLY:
  xor a
  ld (CURR_LINE), a
  call SET_CURR_LINE_ADDR
  ld (hl), a
  ld de,31
  add hl,de
  ld (hl), a
  ld a,(NUM_OF_ENTRIES)
  dec a
  ld (SELECTED_LINE), a
  ld (CURR_LINE), a
  call SET_CURR_LINE_ADDR
  call PRINT_SELECTION
  jp HANDLE_INPUT
PAGE_DOWN_THIS_IS_THE_LAST_PAGE:
  ld a,(SELECTED_LINE)
  ld b, a
  ld a, WINDOW_HEIGHT - 1
  ld (SELECTED_LINE), a
  ld c, 1
  call PRINT_ENTRIES
  ld a,(SELECTED_LINE)
  ld b,a
  ld c,1
  call PRINT_ENTRIES
  jp HANDLE_INPUT
PAGE_DOWN_IS_ALMOST_OK:
  ld hl, (NUM_OF_ENTRIES)
  ld de, WINDOW_HEIGHT
  xor a
  sbc hl, de
  ld (WINDOW_POS), hl
FULL_BOX_VARS_SET:
  call PRINT_FULL_BOX
  JP HANDLE_INPUT

PROCESS_KEY_SELECT:
  ld b, 2
  ld c, 0
  call PRINT_AT
  
  ld a,(SELECTED_LINE)
  ld e,a
  ld d,0
  ld b,5
MUL_32_ON_SELECT
  SLA e
  RL D
  DJNZ MUL_32_ON_SELECT
  ld hl,ON_SCREEN_ENTRIES
  add hl,de
  ld a,$01
  cp (hl)
  jr z, HANDLE_FILE_SELECT ; a file is selected
  ld de, 5
  add hl, de
  ld b, 3
  ld de, CURRENT_DIR_FADDR
CDFADDR_COPY_LOOP:
  ld a,(hl)
  ld (de),a
  dec hl
  inc de
  djnz CDFADDR_COPY_LOOP
  xor a
  ld (SELECTED_LINE), a
  ld (WINDOW_POS), a
  ld (WINDOW_POS+1), a
  call SET_VARIABLES_FROM_DIRHEADER
  call PRINT_FULL_BOX
  ld hl,(NUM_OF_ENTRIES)
  ld de, WINDOW_HEIGHT
  xor a
  sbc hl,de
  jp nc, HANDLE_INPUT
  ld hl,(D_FILE)
  ld de,1 + 33*4	; skip the first HALT and 4 lines (32 chars + HALT)
  add hl,de         ; Cy is reset
  ld a,(NUM_OF_ENTRIES) ; low byte of NUM_OF_ENTRIES, but it is less than 16, so it's ok
  ld b,a
  ld c,a
  ld de,33
SET_CLEAR_START_ADDR_LOOP:
  add hl,de
  DJNZ SET_CLEAR_START_ADDR_LOOP
CLEAR_LINES_LOOP:
  xor a
  ld b,32
CLEAR_ONE_LINE_LOOP
  ld (hl), a
  inc hl
  DJNZ CLEAR_ONE_LINE_LOOP
  inc hl
  inc c
  ld a,WINDOW_HEIGHT
  cp c
  jr nz, CLEAR_LINES_LOOP
  JP HANDLE_INPUT
HANDLE_FILE_SELECT:
  push hl
  ld de,3
  add hl,de
  ld a,(hl)
  inc hl
  ld b,(hl)
  inc hl
  ld c,(hl)
  ld d,a
  ld h,b
  ld l,c
  call PRINT_HEX
  ld a,b
  call PRINT_HEX
  ld a,c
  call PRINT_HEX
  call SPI_START
  call W25Q_INITIATE_READ_DATA
  pop hl
  inc hl ; entry structure: #0 is type, #1-#2 is size of file, #3-#5 is flash addr (file or subdirectory), #6 - caption
  ld c,(hl)
  inc hl
  ld b,(hl)
  push bc
  xor a
  rst $10
  ld a,b
  push bc
  call PRINT_HEX
  pop bc
  ld a,c
  call PRINT_HEX
  pop bc
  ld de,$4009
  CALL FAST
LOOP_LOAD_BYTES:
  call W25Q_READ_DATA
  LD (DE), A
;  IN A, ($FE)
;  OUT ($FF), A
  inc de
  dec bc
  ld a,b
  or c
  jr nz,LOOP_LOAD_BYTES
  call SPI_STOP

  ld hl,$0676 ; magic number #1
  push hl
  ld a,$80    ; magic number #2
  ld ($4001),A
  ld a,$FF     ; magic number #1
  ld ($4000), a
  JP SLOW
  
LOAD_TESTPRG:
  ld hl,$0676 ; magic number #1
  push hl
  ld a,$80    ; magic number #2
  ld ($4001),A
  ld a,$FF     ; magic number #1
  ld ($4000), a
  ld hl, 0
  add hl, sp
  ld a,h
  call PRINT_HEX
  ld a,l
  call PRINT_HEX
  ld hl, $4000
LOADTEST_PLOOP:
  xor a
  RST $10
  ld a,(hl)
  call PRINT_HEX
  inc hl
  ld a,l
  cp $09
  jr nz, LOADTEST_PLOOP
  xor a
  RST $10
  push IX
  pop hl
  ld a,h
  call PRINT_HEX
  ld a,l
  call PRINT_HEX
  xor a
  RST $10
  push IY
  pop hl
  ld a,h
  call PRINT_HEX
  ld a,l
  call PRINT_HEX
  
LOADTEST_KLOOP:
  ld a,(LAST_K)
  ld hl,LAST_K + 1
  and (hl)
  cp $FF
  jr z,LOADTEST_KLOOP

  call FAST
  ld bc, TESTPRG_END - TESTPRG_START - 8
  ld hl, TESTPRG_START
  ld de, $4009
  ldir
  JP SLOW_PER_FAST
  
  
PROCESS_EXIT:
  JP UPPER
  
CHECK_KEMPSTON:
  IN a,($1F)
  ld c,$00
  cp $FF	; no kempston if selected 
  ret z
  AND $1F ; only the least 5 bits are interesting - active high
  OR A
  ret z	 ; no joy movement
  ld c, KEY_UP
  cp $01 ; up
  ret z
  ld c, KEY_DOWN
  cp $02
  ret z
  ld c, KEY_LEFT
  cp $04
  ret z
  ld c,KEY_RIGHT
  cp $08
  ret z
  ld c,KEY_SELECT
  cp $10
  ret z
  ld c,$00	; should not reach here
  ret
  
CHECK_56780:
  ld a,(LAST_K)
  cp $F7
  jr z,KEY_LINE_A11
  cp $EF
  ld c, $00
  ret nz
; KEY_LINE_A12  
  ld a,(LAST_K + 1)
  
  ld c,KEY_DOWN
  cp $DF
  ret z
  
  ld c,KEY_UP
  cp $EF
  ret z

  ld c,KEY_RIGHT
  cp $F7
  ret z

  ld c,KEY_SELECT
  cp $FD
  ret z
  
  jr NO_KEY_FOUND
KEY_LINE_A11:
  ld a,(LAST_K + 1)
  
  ld c,KEY_LEFT
  cp $DF
  ret z
  
  ld c,KEY_1
  cp $FD
  ret z

NO_KEY_FOUND:
  ld c,$00
  ret
  
SET_VARIABLES_FROM_DIRHEADER:
  ld hl, CURRENT_DIR_FADDR
  ld e, (hl)
  inc hl
  ld d, (hl)
  ld hl, $0010
  xor a
  add hl, de
  ld a,(CURRENT_DIR_FADDR+2)
  ld d,a
  jr nc, HIGH_BYTE_OK
  inc d
HIGH_BYTE_OK:
  CALL SPI_START
  call W25Q_INITIATE_READ_DATA
  call W25Q_READ_DATA
  ld e,a
  call W25Q_READ_DATA
  ld d,a
  ld hl,NUM_OF_ENTRIES
  ld (hl), e
  inc hl
  ld (hl), d
  call SPI_STOP
  ret

INIT_VARIABLES:
  xor a
  ld (WINDOW_POS), A
  ld (WINDOW_POS+1), A
  ld (SELECTED_LINE), A
  ld (CURRENT_DIR_FADDR), A
  ld (CURRENT_DIR_FADDR+1), A
  ld (CURRENT_DIR_FADDR+2), A
  dec a
  ld (LAST_PRESSED_KEY), A
  ret
  
PRINT_FULL_BOX:
  ld b,0
  ld c,WINDOW_HEIGHT
  call PRINT_ENTRIES
  
  ret

PRINT_ENTRIES:
; let's check first if there are entries to display
  ld hl, (NUM_OF_ENTRIES)
  ex de, hl
  ld hl,(WINDOW_POS)
  xor a
  sbc hl, de
  ret nc	; no, there is nothing to display (window_pos must be < num of entries)
  ld a,b
  ld (CURR_LINE), a ; what line are we displaying
  CALL SET_ENTRY_ADDR
; let's position the flash to the entries
  ld hl,(WINDOW_POS)
  ld e,b
  ld d,0
  add hl,de
  inc hl ; 32 bytes for the flash header
  ld b,5
LOOP_MUL_32:
  SLA L
  RL H
  RL D
  DJNZ LOOP_MUL_32
  push de
  push hl
  ld hl, CURRENT_DIR_FADDR
  ld e,(hl)
  inc hl
  ld d, (hl)
  inc hl
  ld a, (hl)
  pop hl
  add hl,de
  pop de
  adc d
  ld d,a  
  CALL SPI_START
  call W25Q_INITIATE_READ_DATA

; let's set the line start addr
  call SET_CURR_LINE_ADDR
  
LOOP_PRINT_ENTRIES:
; let's check if this is still a displayable line
  ld hl,(WINDOW_POS)
  ld a,(CURR_LINE)
  ld e,a
  ld d,0
  add hl,de
  ex de, hl
  ld hl,(NUM_OF_ENTRIES)
  ex de,hl
  xor a
  sbc hl,de
  ret nc

  CALL READ_ONE_ENTRY
  CALL COPY_ENTRY
  CALL PRINT_ENTRY
  
; inc curr_line and curr_line_addr  
  ld hl,CURR_LINE
  inc (hl)
  ld de,33
  ld hl,(CURR_LINE_ADDR)
  add hl,de
  ld (CURR_LINE_ADDR), hl
  
  ld hl,(CURR_ENTRY_ADDR)
  ld de,$20
  add hl,de
  ld (CURR_ENTRY_ADDR), hl
  
  dec c
  jr nz, LOOP_PRINT_ENTRIES
  CALL SPI_STOP
  ret

; Prints one line - one entry from the flash
PRINT_ENTRY:
  push bc
  ld hl,(CURR_LINE_ADDR)
  xor a
  ld (hl), a
  inc hl
  ld de,TEMP_AREA + 6
  ex de,hl
  ld b,22
PE_LOOP_FNAME_PRINT:
  ld a,(hl)
  cp $ff
  jr z,FILE_NAME_DONE
  ld (de),a
  inc hl
  inc de
  DJNZ PE_LOOP_FNAME_PRINT
FILE_NAME_DONE:
  xor a
  or b
  jr z,FILE_NAME_FIELD_DONE
  xor a
FILE_NAME_FIELD_FILL_LOOP:
  ld (de),a
  inc de
  djnz FILE_NAME_FIELD_FILL_LOOP
FILE_NAME_FIELD_DONE:
  CALL PRINT_SIZE
; clear selection from the end of the line
  ld hl,(CURR_LINE_ADDR)
  ld de,31
  add hl,de
  xor a
  ld (hl),a

  CALL PRINT_SELECTION
  
  pop bc
  ret

SET_CURR_LINE_ADDR:
  ld hl,(D_FILE)
  ld de,1 + 33*4	; skip the first HALT and 4 lines (32 chars + HALT)
  add hl,de
  ld a,(CURR_LINE)
  or a
  jr z,PES_LINE_ADDR_SET
  ld b,a
  ld de,33
PES_MUL_WITH_33:
  add hl,de
  djnz PES_MUL_WITH_33
PES_LINE_ADDR_SET:
  ld (CURR_LINE_ADDR), hl
  ret

PRINT_SIZE:
  ld hl,(CURR_LINE_ADDR)
  ld de,25
  add hl,de
  ld (CURR_NUM_ADDR), HL
  ld a,(TEMP_AREA)
  cp $01 ; file
  jr z,PRINT_FILE_SIZE
  ex de, hl
  ld hl, DIR_TYPE_STR
  ld b,5
PRINT_DIR_TYPE_LOOP:
  ld a,(hl)
  ld (de), a
  inc hl
  inc de
  djnz PRINT_DIR_TYPE_LOOP
  ret
PRINT_FILE_SIZE:
  ld hl,(TEMP_AREA + 1)
  call PRINT_DEC
  ret
  
PRINT_SELECTION:
  ld a,(CURR_LINE)
  ld hl,SELECTED_LINE
  cp (hl)
  ret nz
  ld hl,(CURR_LINE_ADDR)
  ld a,_GT
  ld (hl), a
  ld de, 31
  add hl,de
  ld a,_LT
  ld (hl), a
  ret

READ_ONE_ENTRY:
  ld hl,TEMP_AREA
  ld b,$20
LOOP_READ_ONE_ENTRY
  call W25Q_READ_DATA
  ld (hl),a
  inc hl
  djnz LOOP_READ_ONE_ENTRY
  ret

SET_ENTRY_ADDR:
  ld l,b
  ld h,0
  sla l
  rl h
  sla l
  rl h
  sla l
  rl h
  sla l
  rl h
  sla l
  rl h
  ld de,ON_SCREEN_ENTRIES
  add hl,de
  ld (CURR_ENTRY_ADDR), hl
  ret

COPY_ENTRY:
  push bc
  ld hl, TEMP_AREA
  ld de, (CURR_ENTRY_ADDR)
  ld bc,$20
  ldir
  pop bc
  ret

; B - row pos, starting with 0
; C - col pos, starting with 0
; HL - pointer to $FF terminated string

OWN_PRINT_AT:
  push HL
  ld hl,(D_FILE)
  ld d,0
  inc hl ; let's skip the first $76
  xor a
  or b
  jr z,LINE_ADDR_OK
  ld e,33 ; 32 chars + NL
ADD_LINE_NUM
  add hl,de
  djnz ADD_LINE_NUM
LINE_ADDR_OK:
  ld e,c
  add hl,de
  pop de
OWN_PRINT_CHAR:
  ld a,(de)
  cp $FF
  ret z
  ld (hl),a
  inc hl
  inc de
  jr OWN_PRINT_CHAR
  
GET_FLASH_SIZE:
  CALL SPI_START
  CALL W25Q_READ_JEDEC
  CALL SPI_STOP  
  ld a,$EF
  cp D
  jr nz, UNKNOWN_FLASH_CHIP
  ld a,$40
  cp H
  jr nz, UNKNOWN_FLASH_CHIP
  ld a,$14
  cp L
  jr nc, UNKNOWN_FLASH_CHIP
  ld a,$18
  cp L
  jr c, UNKNOWN_FLASH_CHIP
  ld a,l
  sub $14
  ret
  
UNKNOWN_FLASH_CHIP:
  xor a
  ret

DRAW_SCREEN:

  ld b,0
  ld c,1
  ld hl, SCREEN_HEADER1_STR
  call OWN_PRINT_AT 

  ld b,1
  ld c,10
  ld hl, SCREEN_HEADER2_STR
  call OWN_PRINT_AT

  ld b,1
  ld c,21
  call PRINT_AT
  ld a,VERSION_MAJOR + _0
  RST $10
  
  ld b,1
  ld c,23
  call PRINT_AT
  ld a,(VERSION_MINOR/10) + _0
  RST $10
  
  ld b,1
  ld c,24
  call PRINT_AT
  ld a,(VERSION_MINOR % 10) + _0
  RST $10

  ld b,3
  ld c,1
  ld hl, TABLE_HEADER_STR
  call OWN_PRINT_AT

  ld b,20
  ld c,1
  call PRINT_AT
  ld b,30
LOOP_TABLE_END_LINE:
  ld a,_DASH
  RST $10
  DJNZ LOOP_TABLE_END_LINE
  
  ld b,21
  ld c,0
  ld hl, SCREEN_FOOTER1_STR
  call OWN_PRINT_AT

  ld b,22
  ld c,0
  ld hl, SCREEN_FOOTER2_STR
  call OWN_PRINT_AT
  
  ld b,23
  ld c,0
  ld hl, SCREEN_FOOTER3_STR
  call OWN_PRINT_AT
  
  call GET_FLASH_SIZE
  SLA A
  ld e,a
  ld d,0
  ld hl,FLASH_SIZE_VECTOR
  add hl,de
  ld e,(hl)
  inc hl
  ld d,(hl)
  ex de,hl
  ld b,23
  ld c,27
  call OWN_PRINT_AT
  
  ret


;Number in hl to decimal ASCII
;Thanks to z80 Bits
;inputs:	hl = number to ASCII
;example: hl=300 outputs "00300"
PRINT_DEC:
            PUSH    hl 
            XOR     a
            LD      bc,10000 
            SBC     HL,BC 
			
            POP     HL 
            JR      nc,PRINT_DEC_5
			call    PRINT_ONE_CHARACTER
            PUSH    hl 
            XOR     a
            LD      bc,1000 
            SBC     HL,BC 
            POP     HL 
            JR      nc,PRINT_DEC_4 
			call    PRINT_ONE_CHARACTER
            PUSH    hl 
            XOR     a
            LD      bc,100 
            SBC     HL,BC 
            POP     HL 
            JR      nc,PRINT_DEC_3
			call    PRINT_ONE_CHARACTER
            PUSH    hl 
            XOR     a
            LD      bc,10 
            SBC     HL,BC 
            POP     HL 
            JR      nc,PRINT_DEC_2 
			call    PRINT_ONE_CHARACTER
            JR      PRINT_DEC_1 

PRINT_DEC_5:    
            LD      bc,$D8F0 ; -10000
            CALL    NUM1 
PRINT_DEC_4:    
            LD      bc,$FC18 ; -1000
            CALL    NUM1
PRINT_DEC_3:    
            LD      bc,-100 
            CALL    NUM1 
PRINT_DEC_2:    
            LD      bc,-10 
            CALL    NUM1 
PRINT_DEC_1:    
            LD      bc,-1 
NUM1:                
            LD      a,_0 - 1
NUM2:                
            INC     a 
            ADD     hl,bc 
            JR      c,NUM2 
            SBC     hl,bc 
			call 	PRINT_ONE_CHARACTER
            RET

PRINT_ONE_CHARACTER:
	push hl
	ld hl, (CURR_NUM_ADDR)
	ld (hl), a
	inc hl
	ld (CURR_NUM_ADDR), hl
	pop hl
	ret



SCREEN_HEADER1_STR:
  DB _Z, _X, _8, _1, __, __, _F, _L, _A, _S, _H, _PLUS, _J, _O, _Y, __, _E, _X, _P, _A, _N, _S, _I, _O, _N, __, _C, _A, _R, _T, $FF
SCREEN_HEADER2_STR:
  DB _B, _Y, __, _S, _A, _N, _Y, _I, _COMMA, __, _V, _X, _PERIOD, _X, _X, _COMMA, __, _2, _0, _2, _3, $FF

TABLE_HEADER_STR:
  DB _DASH, _DASH, _DASH, _DASH, _DASH, _DASH, _DASH, _DASH, _EQUAL, _N, _A, _M, _E, _EQUAL, _DASH, _DASH, _DASH, _DASH, _DASH, _DASH, _DASH, _PLUS, _DASH, _EQUAL, _S, _I, _Z, _E, _EQUAL, _DASH, $FF
 
SCREEN_FOOTER1_STR:
  DB _U, _S, _E, __, _J, _O, _Y, __, _O, _R, __, _5, _6, _7, _8, _0, __, __, _T, _O, __, _L, _O, _A, _D, __, _A, __, _F, _I, _L, _E, $FF
SCREEN_FOOTER2_STR:
  DB _L, _R, _DASH, _P, _A, _G, _E, __, _U, _P, _SLASH, _D, _N, _COMMA, __, _U, _D, _DASH, _M, _O, _V, _E, __, _S, _E, _L, _E, _C, _T, _I, _O, _N, $FF
SCREEN_FOOTER3_STR:
  DB _P, _R, _E, _S, _S, __, _1, __, _T, _O, __, _B, _A, _S, _I, _C, __, __, __, __, __, _F, _L, _A, _S, _H, _COLON, __, __, __, _M, _B, $FF
  
DIR_TYPE_STR:
  DB _LT, _D, _I, _R, _GT, $FF
  
FLASH_SIZE_NN:	; Unkown flash - unkown size
  DB _QMARK, _QMARK, __, $FF

FLASH_SIZE_2:	; $4015 - 2MB
  DB __, __, _2, $FF
  
FLASH_SIZE_4:	; $4016 - 4MB
  DB __, __, _4, $FF

FLASH_SIZE_8:	; $4017 - 8MB
  DB __, __, _8, $FF
  
FLASH_SIZE_16:	; $4018 - 16MB
  DB __, _1, _6, $FF
  
FLASH_SIZE_VECTOR:
  DW FLASH_SIZE_NN, FLASH_SIZE_2, FLASH_SIZE_4, FLASH_SIZE_8, FLASH_SIZE_16 
  
TESTPRG_START:
incbin incbin "02-Blocky.p"
TESTPRG_END:
  

  
; 1| ZX81  FLASH+JOY EXPANSION CART |
;  |           BY SANYI, V1.00, 2023|
;  |                                |
;  | --------=NAME=-------+--SIZE-- |
;  | ELSO PROGRAM                 2 |
;  | SECOND PROGRAM              11 |
;  | ---SEPARATOR LINE----          |
;  |>VERYGOOD GAME                3<|
;  | THIS IS ALSO A GOOD O        7 |
;10| NOT THAT GOOD                3 |
;  |    .   .   .                   |
;  |                                |
;  |                                |
;  |    .   .   .                   |
;  |                                |
;  |                                |
;  |    .   .   .                   |
;  |                                |
;  |                                |
;20| LASTGAME IN SCREEN           6 |
;  | ------------------------------ |
;  |USE JOY OR 56780 TO LOAD A FILE |
;  |LR-PAGE UP/DN, UD-MOVE SELECTION|
;24|PRESS 1 TO BASIC     FLASH:  8MB|
