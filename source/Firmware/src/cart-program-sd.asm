; 16 byte file entry
;    2 bytes: size
; 	 1 byte: type (00 - sub directory, 01 - file, 02 - parent directory, under 64k, 0x81 - file over 64k)
;    13 bytes: filename (zero terminated, 8.3 format)

START_SD:
  xor a
  ld hl, __VARIABLES_START__
  ld (hl), A
  ld de, __VARIABLES_START__ + 1
  ld bc, __VARIABLES_END__ - __VARIABLES_START__ - 1
  ldir
  ld a, '/'
  ld (_current_path), a
  ld hl, (D_FILE)
  inc hl
  ld (_print_addr), hl
  ld hl, BANK2.INIT_SD_STR
  ld bc, 23:21
  call OWN_PRINT_AT
  
; f_mount
  ld	hl,_fatfs
  push	hl
  ld	hl,_current_path
  push	hl
  ld	hl,1	;const, init now!
  push	hl
  call	_f_mount
  pop	bc
  pop	bc
  pop	bc
  ld	a,h
  or	l
  jr z, MOUNT_OK
  ld a, (CTRL_SHADOW)
  OR (1 << SD_SPI_CS)
  ld (CTRL_SHADOW), A
  OUT (CTRL_PORT), A
  jp BANK2.BACK_TO_FLASH

MOUNT_OK:
  ld bc, 23:18
  ld hl, BANK2.LOAD_DIR_STR
  call OWN_PRINT_AT
  call INIT_VARIABLES
  call LOAD_DIRECTORY
  ld bc, 23:18
  ld hl, BANK2.DIR_LOADED_STR
  call OWN_PRINT_AT
REDRAW_LIST_BOX:
  call DISPLAY_BOX
  call PRINT_PATH
  JP HANDLE_INPUT
  

; DEBUG!  =================================

PRINT_DIRENTRIES_HEX
  push hl
  push bc
  ld bc, 8:0
  call OWN_SET_POS
  ld hl, _directory_entries
  ld b, 21
  jr PRINT_FINFO_HEX.print_finfo_loop
PRINT_FINFO_HEX
  push hl
  push bc
  ld bc, 5:0
  call OWN_SET_POS
  ld b, 21
  ld hl, _finfo
.print_finfo_loop
  ld a,(hl)
  call OWN_PRINT_HEX
  xor a
  call OWN_PRINT_CHAR
  inc hl
  djnz .print_finfo_loop
  pop bc
  pop hl
  ret

; HL - address of 13 US-ASCII bytes to be converted  
PRINT_CONVERTED_ASCII_HEX
  push hl
  push bc
  push de
  ld b, 13
.print_finfo_loop
  ld a,(hl)
  call OWN_PRINT_HEX
  ld a,(hl)
  call CONVERT_ASCII_2_ZX81
  call OWN_PRINT_HEX
  xor a
  call OWN_PRINT_CHAR
  inc hl
  djnz .print_finfo_loop
  pop de
  pop bc
  pop hl
  ret
; DEBUG!  =================================

INIT_VARIABLES:
  ld hl, 0
  ld (_window_pos), hl
  xor a
  ld (_selected_line), a
  ld (_dir), a
  ld hl, _dir
  ld de, _dir+1
  ld bc, 39
  ldir
  ret
   
LOAD_DIRECTORY:
; f_opendir
  ld hl, _dir
  push hl
  ld hl, _current_path
  push hl
  call _f_opendir
  pop bc
  pop bc

  ld a, h
  or l
  ret nz
  
  ld (_reading_non_1st_entry), a ; 00 means reading first entry/false - 01 means reading non-first entry/true
  ld (_num_of_entries), hl
  ld de,_directory_entries


; reading the directory
; In the root directory the first entry is the name of the volume (?) which is dropped
; in the subdirectories first an artificial entry is created and stored and that is the parent directory (../)
READ_ONE_DIRENTRY:
; f_readdir
  push de
  ld hl, _dir
  push hl
  ld hl, _finfo
  push hl
  call _f_readdir
  pop bc
  pop bc
  pop de
  
  ld a,h
  or l
  jp nz, .end_of_readdir

  ld hl, _finfo + 9
  ld a,(hl)
  or a
  jp z, .end_of_readdir
  
  ld a, (_dir_depth)
  or a	; is it 0?
  jr nz, .not_root_directory
  
  ld a, (_reading_non_1st_entry)
  or a
  jr nz, .not_first_entry
; root directory, first entry is the name of the volume - I don't want to show that
  inc a 
  ld (_reading_non_1st_entry), a
  jr READ_ONE_DIRENTRY
.not_root_directory
  ld a, (_reading_non_1st_entry)
  or a
  jr nz, .not_first_entry
  
  ; inserting the ../ directory, A is zero!
  push de
  ld (de), a	; size is 0
  inc de
  ld (de), a
  inc de
  ld a, 2
  ld (de), a	; type is 2, parent directory
  inc de
  ld a, '.'		; file name is ../ with the terminating zero
  ld (de), a
  inc de
  ld (de), a
  inc de
  ld a, '/'
  ld (de), a
  inc de
  xor a
  ld (de), a
  inc a
  ld (_num_of_entries), a
  ld (_reading_non_1st_entry), a
  ld hl, $10
  pop de
  add hl, de
  ex de, hl
.not_first_entry
  ld a,(_finfo + 8)
  ld hl, _finfo
  and $10 ; AM_DIR
  jr nz, .parse_directory
  ldi
  ldi
  ld a,(hl)
  inc hl
  or (hl)
  ld a, $01 ; file, loadable
  jr z, .file_type_set
  ld a, $81 ; file, large
.file_type_set:
  ld (de), a
  jr .copy_file_name
.parse_directory:
  inc de
  inc de
  xor a
  ld (de), a ; directory
.copy_file_name:
  inc de
  ld hl, _finfo + 9
  ld bc, 13
  ldir

.not_directory:
  ld hl, (_num_of_entries)
  inc hl
  ld (_num_of_entries), hl
  ld bc, 23:28
  call OWN_SET_POS
  call OWN_PRINT_DEC_3DIGITS
  
  ld hl, (_num_of_entries)	; $03e7=999
  ld a, h
  cp $03
  jp nz, READ_ONE_DIRENTRY
  ld a, l
  cp $F0
  jr z, .end_of_readdir ; reached $1008 entries, the remainig is stack (BF01-BFFE, BFFF is CTRL_SHADOW)
.one_more_round
  jp READ_ONE_DIRENTRY
  
.end_of_readdir
  ld hl, _dir
  push hl
  call _f_closedir
  pop bc
  ret
  
PRINT_PATH:
  ld hl, _current_path ; path is a non-empty string, first character check can be skipped
.find_end_of_path
  inc hl
  ld a,(hl)
  or a
  jr nz, .find_end_of_path
  dec hl
  push hl
  
  ld hl, (D_FILE)
  ld de, 23*33 + 1 + 31
  add hl, de
  ex de, hl
  pop hl
  
  ld b, 14
.path_to_screen_loop
  ld a, (hl)
  call CONVERT_ASCII_2_ZX81
  ld (de), a
  dec hl
  dec de
  
  push hl
  push de
  ld de, _current_path
  or a
  sbc hl, de
  pop de
  pop hl
  jr c, .path_print_finished
  djnz .path_to_screen_loop
.path_print_finished
  xor a
  or b
  ret z
  xor a
.clear_path_field
  ld (de),a
  dec de
  djnz .clear_path_field
  ret
  
DISPLAY_BOX:
  ld hl, (_num_of_entries)
  ld a, l
  or h
  ret z
  
  ld b, 0
  ld c, 16
  call PRINT_ENTRIES
  call CLEAR_REMAINING_LINES
  ret
  
PRINT_ENTRIES:
  ld a, b
  ld (_current_line), A
  push bc
  add 4
  ld b, A
  ld c, 0
  call OWN_SET_POS
  pop bc
  
  ld hl, (_print_addr)
  ld (_current_screenline_addr), hl

  ld hl, (_window_pos)
  ld e, b
  ld d, 0
  add hl, de
  ld b, 4
.mul_16_loop
  sla l
  rl h
  djnz .mul_16_loop
  ld de, _directory_entries
  add hl, de
.print_entries_loop
  push hl
  push bc
  call DISPLAY_ONE_ENTRY
  pop bc
  ld hl, (_current_screenline_addr)
  ld de, 33
  add hl, de
  ld (_current_screenline_addr), hl
  ld (_print_addr), hl
  ld hl, _current_line
  ld a,(hl)
  inc a
  ld (hl), a
  ld hl, (_window_pos)
  ld e,a
  ld d,0
  add hl, de
  ld de,(_num_of_entries)
  or a
  sbc hl, de
  pop hl
  jr z, .end_of_entries
  ld de, 16
  add hl, de
  dec c
  jr nz, .print_entries_loop
  ret
.end_of_entries
  dec c
  ret
  
CLEAR_REMAINING_LINES
  xor a
  cp c
  ret z
  ld b, c
  ld c, 32
  xor a
  ld hl, (_print_addr)
.loop_clear_one_line
  ld (hl), a
  inc hl
  dec c
  jr nz, .loop_clear_one_line
  ld hl, (_print_addr)
  ld de, 33
  add hl, de
  ld (_print_addr), hl
  ld c, 32
  djnz .loop_clear_one_line
  ret

  
; hl is set to the addr of the entry
; (_print_addr) is set to the start of the line to be used
; (_current_line) is set to the line to be printed
; (_selected_line) is set 
DISPLAY_ONE_ENTRY:
  ex de, hl
  ld a, (_current_line)
  ld hl, _selected_line
  cp (hl)
  ld a, __
  jr nz, $+4
  ld a, _GT
  call OWN_PRINT_CHAR
  ld hl, (_print_addr)
  inc hl
  ld (_print_addr), hl
  ex de, hl
  call PRINT_FILENAME

  push hl

  inc hl  
  inc hl
  ld a, (hl)
  or a
  jr z, .print_dir	; sub-dir
  cp $02
  jr z, .print_dir	; parent-dir
  cp $81
  jr z, .print_gt64k
  pop hl
  push hl
  ld e,(hl)
  inc hl
  ld d, (hl)
  ex de, hl
  call OWN_PRINT_DEC
  jr .sel_end
.print_dir
  ld hl, BANK2.DIR_STR
  jr .print_gt64k+3
.print_gt64k
  ld hl, BANK2.GT64K_STR
  call OWN_PRINT_STR
.sel_end
  ld hl, (_print_addr)
  inc hl
  ld (_print_addr), hl
  ld a, (_current_line)
  ld hl, _selected_line
  cp (hl)
  ld a, __
  jr nz, $+4
  ld a, _LT
  ex de, hl
  call OWN_PRINT_CHAR
  pop hl
  ret
  
PRINT_FILENAME:
  push hl
  inc hl
  inc hl
  inc hl
  ld b, 12
  ld de, (_print_addr)
.print_filename_loop
  ld a, (hl)
  or a
  jr z, .end_of_filename
  call CONVERT_ASCII_2_ZX81
  ld (de), a
  inc de
  inc hl
  djnz .print_filename_loop
  jr .filename_done
.end_of_filename
.pad_filename_loop
  ld (de), a
  inc de
  djnz .pad_filename_loop
.filename_done
  ld hl, 11
  add hl, de
  ld (_print_addr), hl
  pop hl
  ret
  
CONVERT_ASCII_2_ZX81:
  cp $20
  jr c, .non_printable	; <$20
  cp $40
  jr c, .transcodable
  jr z, .non_printable	; =$40
  cp $5B
  jr c, .convertable	; <$5B 'z'
  cp $61
  jr c, .non_printable	; <$61
  cp $7B
  jr nc, .non_printable	; >=$7B 'Z'+1
  sub $20
.convertable
  sub ('A' - _A)
  ret
.transcodable
  push hl
  push de
  sub $20
  ld hl, BANK2.ASCII_CONVERT_TABLE
  ld d, 0
  ld e, a
  add hl, de
  ld a, (hl)
  pop de
  pop hl
  ret
.non_printable
  ld a, 9
  ret
  
;Number in hl to decimal ASCII
;Thanks to z80 Bits
;inputs:	hl = number to ASCII
;example: hl=300 outputs "00300"
OWN_PRINT_DEC:
            PUSH    hl 
            XOR     a
            LD      bc,10000 
            SBC     HL,BC 
            POP     HL 
            JR      nc,OWN_PRINT_DEC_3DIGITS.print_dec_5
			call    OWN_PRINT_CHAR
OWN_PRINT_DEC_4DIGITS:
            PUSH    hl 
            XOR     a
            LD      bc,1000 
            SBC     HL,BC 
            POP     HL 
            JR      nc,OWN_PRINT_DEC_3DIGITS.print_dec_4 
			call    OWN_PRINT_CHAR
OWN_PRINT_DEC_3DIGITS:
            PUSH    hl 
            XOR     a
            LD      bc,100 
            SBC     HL,BC 
            POP     HL 
            JR      nc,.print_dec_3
			call    OWN_PRINT_CHAR
            PUSH    hl 
            XOR     a
            LD      bc,10 
            SBC     HL,BC 
            POP     HL 
            JR      nc,.print_dec_2
			call    OWN_PRINT_CHAR
            JR      .print_dec_1 

.print_dec_5:    
            LD      bc,$D8F0 ; -10000
            CALL    .num1
.print_dec_4:    
            LD      bc,$FC18 ; -1000
            CALL    .num1
.print_dec_3:    
            LD      bc,-100 
            CALL    .num1
.print_dec_2:    
            LD      bc,-10 
            CALL    .num1 
.print_dec_1:    
            LD      bc,-1 
.num1:                
            LD      a,_0 - 1
.num2:                
            INC     a 
            ADD     hl,bc 
            JR      c,.num2
            SBC     hl,bc 
			call 	OWN_PRINT_CHAR
            RET

LOOP_KEY_NOT_PRESSED:
  ld a,(LAST_K + 1)
  cp $FF
  jr z, LOOP_KEY_NOT_PRESSED
.loop_key_pressed
  ld a,(LAST_K + 1)
  cp $FF
  jr nz, .loop_key_pressed
  ret
  
@OWN_PRINT_HL_INPLACE
	push hl
	ld hl,(_print_addr)
	dec hl
	dec hl
	dec hl
	dec hl
	ld (_print_addr), hl
	pop hl
@OWN_PRINT_HL
	push af
	ld a,h
	call OWN_PRINT_HEX
	ld a,l
	call OWN_PRINT_HEX
	pop af
	ret
	
@OWN_FIRST_INPLACE
  push hl
  ld hl,(_print_addr)
  inc hl
  inc hl
  inc hl
  inc hl
  ld (_print_addr), hl
  pop hl
  ret

; INPUT
;  B - row (0..23)
;  C - column (0..31)
OWN_SET_POS:
  push HL
  push DE
  ld hl,(D_FILE)
  ld d,0
  inc hl ; let's skip the first $76
  xor a
  or b
  jr z,.LINE_ADDR_OK
  ld e,33 ; 32 chars + NL
.ADD_LINE_NUM
  add hl,de
  djnz .ADD_LINE_NUM
.LINE_ADDR_OK:
  ld e,c
  add hl,de
  ld (_print_addr), HL
  pop DE
  pop HL
  ret

; B - row pos, starting with 0
; C - col pos, starting with 0
; HL - pointer to $FF terminated string

OWN_PRINT_AT:
  call OWN_SET_POS
OWN_PRINT_STR:
  ld DE, (_print_addr)
.own_print_str_loop
  ld a,(HL)
  cp $FF
  ret z
  ld a,(de)
  bit 6, a
  jr z, .hl_ok
  inc de
.hl_ok
  ld a,(hl)
  ld (de),a
  inc hl
  inc de
  ld (_print_addr), DE
  jr .own_print_str_loop

@OWN_PRINT_CHAR:
  push HL
  ld hl, (_print_addr)
  bit 6, (hl)
  jr z, .hl_ok
  inc hl
.hl_ok
  ld (hl), A
  inc hl
  ld (_print_addr), hl
  pop HL
  ret
  
@OWN_PRINT_HEX
  push HL
  push AF
  RRCA
  RRCA
  RRCA
  RRCA
  call OWN_PRINT_NIBBLE
  pop AF
  call OWN_PRINT_NIBBLE
  pop HL
  RET
  
OWN_PRINT_NIBBLE
  AND $0F	
  cp $09
  jr c,.hex_digit
  add _0
  jr .hex_nibble_ok
.hex_digit:
  sub $0A
  add _A
.hex_nibble_ok:
  ld hl,(_print_addr)
  bit 6, (hl)
  jr z, .hl_ok
  inc hl
.hl_ok
  ld (hl),a
  inc hl
  ld (_print_addr), hl
  ret
  
@OWN_WAIT_SOME:
  ret
  push HL
  push AF
  ld hl, $C000
.loop
  inc hl
  ld a,h
  or l
  jr nz, .loop
  pop AF
  pop HL  
  ret



HANDLE_INPUT:
  ld a,(FRAMES)
  ld hl, _last_frame
  cp (hl)
  jr z,HANDLE_INPUT
  
  ld (_last_frame), A
  IN A, (CTRL_PORT)
  BIT 4, A
  jr z, .sd_card_in_socket
  ld A, (CTRL_SHADOW)
  AND ~(1<<SD_SPI_CS)
  ld (CTRL_SHADOW), A
  OUT (CTRL_PORT), A
.one_frame_loop
  ld a,(FRAMES)
  ld hl, _last_frame
  cp (hl)
  jr z,.one_frame_loop
  jp BANK2.BACK_TO_FLASH

.sd_card_in_socket:
  CALL CHECK_KEMPSTON
  xor a
  cp c
  jr nz,.skip_keyboard_check
  call CHECK_56780
.skip_keyboard_check:
  ld a,(_last_pressed_key)
  cp C
  ld hl,_pressed_key_cnt
  jr nz,.new_key_pressed
  dec (hl)
  ld a,(hl)	; same key-press as before
  cp REPEAT_KEY_COUNTER_FIRST - 2 ; first press should be detected fast
  jr z,.key_pressed_first
  OR A
  jr z,.key_pressed
  jr HANDLE_INPUT
.new_key_pressed:
  ld a,c
  ld (_last_pressed_key), a
  ld a, REPEAT_KEY_COUNTER_FIRST
  ld (hl), a
  jr HANDLE_INPUT
.key_pressed:
  ld a,REPEAT_KEY_COUNTER_SECOND
  ld (hl), a
.key_pressed_first:
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
  cp KEY_C
  jp z,PROCESS_CREDITS
  jp HANDLE_INPUT

PROCESS_KEY_UP:
  ld a,(_selected_line)
  or a
  jr z, .on_top_of_box
  add 4
  ld b, a
  ld c, 0
  call OWN_SET_POS
  ld a, __
  ld hl, (_print_addr)
  ld (hl), a
  ld de, 31
  add hl, de
  ld (hl), a
  ld de, -31-33
  add hl, de
  ld a, _GT
  ld (hl), a
  ld de, 31
  add hl, de
  ld a, _LT
  ld (hl), a
  ld hl, _selected_line
  dec (hl)
  jp HANDLE_INPUT
.on_top_of_box
  ld hl,(_window_pos)
  ld a,l
  or h
  jp z, HANDLE_INPUT ; we are at the top of the window (pos: 0)
  
  dec hl
  ld (_window_pos), hl
  
  ld b, 4
  ld c, 0
  call OWN_SET_POS
  ld a, __
  ld hl, (_print_addr)
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
  ld hl,(_window_pos)
  ld a,(_selected_line)
  ld e,a
  ld d,0
  add hl,de
  inc hl
  ex de, hl
  ld hl, (_num_of_entries)
  xor a
  sbc hl,de
  jp c, HANDLE_INPUT
  ld a,h
  or l
  jp z, HANDLE_INPUT
  ld a,(_selected_line)
  cp (WINDOW_HEIGHT - 1)
  jr z,.on_botton_of_box
  ld a,(_selected_line)
  ld (_current_line), a
  add 4
  ld b, a
  ld c, 0
  call OWN_SET_POS
  ld hl, (_print_addr)
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
  ld hl, _selected_line
  inc (hl)
  jp HANDLE_INPUT
.on_botton_of_box:
  ld hl, _window_pos
  inc (hl)
  ld hl, (D_FILE)
  ld de, 19*33 + 1
  add hl, de
  xor a
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
  ld hl, (_window_pos)
  ld de, WINDOW_HEIGHT
  xor a
  sbc hl, de
  jr c, .less_than_a_page
.print_full_screen
  ld (_window_pos), hl
  ld b, 0
  ld c, 16
  call PRINT_ENTRIES
  JP HANDLE_INPUT
.less_than_a_page
  ld hl, (_window_pos)
  ld a,l
  or h
  jr z, .page_up_on_first_page
  ld hl, 0
  jr .print_full_screen
.page_up_on_first_page:
  ld a, (_selected_line)
  ld (_current_line), a
  add 4
  ld b, a
  ld c, 0
  call OWN_SET_POS
  ld hl, (_print_addr)
  xor a
  ld (hl), a
  ld de,31
  add hl,de
  ld (hl), a
  ld (_selected_line), a
  ld b, 0
  ld c, 1
  call PRINT_ENTRIES
  jp HANDLE_INPUT

PROCESS_KEY_RIGHT:
  ld hl, WINDOW_HEIGHT
  ld de, (_num_of_entries)
  xor a
  sbc hl,de
  jr nc,.page_down_one_page_only
  ld hl, (_window_pos)
  ld de, WINDOW_HEIGHT
  add hl, de
  ld de, (_num_of_entries)
  xor a
  sbc hl, de
  jr z, .page_down_this_is_the_last_page
  ld hl, (_window_pos)
  ld de, WINDOW_HEIGHT + WINDOW_HEIGHT
  add  hl, de
  ld de, (_num_of_entries)
  xor a
  sbc hl, de
  jr nc, .page_down_is_almost_ok
  ld hl,(_window_pos)
  ld de, WINDOW_HEIGHT
  add hl, de
  ld (_window_pos), hl
  jr .full_box_vars_set
.page_down_one_page_only
  ld c, 0
  ld a, (_selected_line)
  add 4
  ld b,a
  call OWN_SET_POS
  ld hl, (_print_addr)
  xor A
  ld (hl), a
  ld de,31
  add hl,de
  ld (hl), a
  ld a,(_num_of_entries)
  dec a
  ld (_selected_line), a
  ld (_current_line), a
  ld b, a
  ld c, 1
  call PRINT_ENTRIES
  jp HANDLE_INPUT
.page_down_this_is_the_last_page
  ld a,(_selected_line)
  ld b, a
  ld a, WINDOW_HEIGHT - 1
  ld (_selected_line), a
  ld c, 1
  call PRINT_ENTRIES
  ld a,(_selected_line)
  ld b,a
  ld c,1
  call PRINT_ENTRIES
  jp HANDLE_INPUT
.page_down_is_almost_ok
  ld hl, (_num_of_entries)
  ld de, WINDOW_HEIGHT
  xor a
  sbc hl, de
  ld (_window_pos), hl
.full_box_vars_set
  ld b, 0
  ld c, 16
  call PRINT_ENTRIES
  JP HANDLE_INPUT

PROCESS_KEY_SELECT:
  ld hl, (_window_pos)
  ld a, (_selected_line)
  ld d, 0
  ld e, a
  add hl, de
  ld b, 4
.mul_by_16
  sla l
  rl h
  djnz .mul_by_16
  ld de, _directory_entries
  add hl, de
  inc hl
  inc hl
  ld a,(hl) ; type
  or a ; directory
  jr z, .change_into_sub_directory
  cp $02 ; parent directory
  jr z, .change_into_parent_directory
  cp 1   ; file
  jr z, .file_selected
  jp HANDLE_INPUT ; not doing anything on files larger than 64k
.change_into_sub_directory
  ld de, _current_path - 1
.find_end_of_path
  inc de
  ld a,(de)
  or a
  jr nz, .find_end_of_path
  inc hl
.copy_path_loop
  ld a,(hl)
  ld (de), a
  or a
  jr z, .path_copied
  inc de
  inc hl
  jr .copy_path_loop
.path_copied
  ld a,'/'
  ld (de), a
  inc de
  xor a
  ld (de), a
  ld hl, _dir_depth
  inc (hl)
  jp MOUNT_OK

.change_into_parent_directory
  ld hl, _dir_depth
  dec (hl)
  ld a, (hl)
  jr nz, .change_to_non_root
  xor a
  ld hl, _current_path
  inc hl
  ld (hl), a
  jp MOUNT_OK
.change_to_non_root
  ld hl, _current_path
.find_end_of_path_parent
  inc hl
  ld a, (hl)
  or a
  jr nz, .find_end_of_path_parent
  dec hl
.find_prev_path_end
  dec hl
  ld a, (hl)
  cp '/'
  jr nz, .find_prev_path_end
  inc hl
  xor a
  ld (hl), a
  jp MOUNT_OK

.file_selected
  push hl
  pop de ; hl, de pointing to the type of entry
  inc hl ; hl points to filename
  inc hl ; hl points to 2nd char of filename
  ld a, (hl)
  or a
  jp z, HANDLE_INPUT ; filename with 1 char long
  dec hl ; hl points to filename
.find_end_of_filename
  inc hl
  ld a,(hl)
  or a
  jr nz, .find_end_of_filename ; at the end hl points to termination char (0x00)
  dec hl ; points to last char
  dec hl ; points to the one before last char
  ld a, (hl)
  cp '.'
  jp nz,HANDLE_INPUT
  inc hl
  ld a, (hl)
  cp 'P'
  jp nz, HANDLE_INPUT
  ex de, hl		; file ends with .p and size is less than 64kB, HL points to type of entry
  dec hl
  dec hl
  ld e,(hl)		; hl points to fileinfo, size of file
  inc hl
  ld d, (hl)	; de contains the size of file
  push hl
  ld hl, $4000 - 9 ; max size of a file
  or a
  sbc hl, de
  pop hl
  jp c, HANDLE_INPUT
  ld ($8000), de	; let's store the size of the file
  inc hl
  inc hl ; hl points to filename
  
  ld de, _current_path
.find_end_of_pathanme
  inc de
  ld a, (de)
  or a
  jr nz, .find_end_of_pathanme
  
.copy_filename_to_path_loop
  ld a, (hl)
  ld (de), a
  inc hl
  inc de
  or a
  jr nz, .copy_filename_to_path_loop

  call BANK2.MY_FAST

  ld hl, _file
  push hl
  ld hl, _current_path  
  push hl
  ld hl, 1
  push hl
  call _f_open
  pop bc
  pop bc
  pop bc
  
  ld hl, _file
  push hl
  ld hl, $8002
  push hl
  LD HL, ($8000)
  push hl
  ld hl, _read_bytes
  push hl
  call _f_read
  pop bc
  pop bc
  pop bc
  
  call _sd_cs_raise
  
  JP BANK2.FILE_LOADED
  
PROCESS_EXIT:
  JP BANK2.EXIT_TO_BASIC
  
CHECK_KEMPSTON:
  IN a,($1F)
  ld c,$00
  cp $FF	; no kempston i/f selected 
  ret z
  AND $1F ; only the least 5 bits are interesting - active high
  OR A
  ret z	 ; no joy movement
  /* FUDLR */
  ld c, KEY_RIGHT
  cp $01
  ret z
  ld c, KEY_LEFT
  cp $02
  ret z
  ld c, KEY_DOWN
  cp $04
  ret z
  ld c,KEY_UP
  cp $08
  ret z
  ld c,KEY_SELECT
  cp $10
  ret z
  ld c,$00	; multiple selection (diagonal movement or fire+direction), let's not react on that
  ret
  
CHECK_56780:
;  ld hl, (D_FILE)
;  inc hl
;  ld (_print_addr), hl
;  ld a, (LAST_K)
;  call OWN_PRINT_HEX
;  ld a, (LAST_K+1)
;  call OWN_PRINT_HEX
  

  ld a,(LAST_K)
  cp $F7
  jr z,.key_line_A11
  cp $FE
  jr z, .key_line_A15
  cp $EF
  ld c, $00
  ret nz
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
  
  jr .no_key_found
.key_line_A11
  ld a,(LAST_K + 1)
  
  ld c,KEY_LEFT
  cp $DF
  ret z
  
  ld c,KEY_1
  cp $FD
  ret z

.no_key_found:
  ld c,$00
  ret

.key_line_A15
  ld a,(LAST_K + 1)
  ld c, KEY_C
  cp $EF
  ret z
  jr .no_key_found
  
PROCESS_CREDITS:
  call CLEAR_LIST_AREA
  call PRINT_CREDITS
  call WAIT_FOR_KEY
  call CLEAR_LIST_AREA
  JP REDRAW_LIST_BOX

CLEAR_LIST_AREA:
  ld bc, 4:0
  call OWN_SET_POS
  ld b, 16
  xor a
.print_one_line
  ld c, 32
.print_one_space
  call OWN_PRINT_CHAR
  dec c
  jr nz, .print_one_space
  dec b
  jr nz, .print_one_line
  ret

PRINT_CREDITS
  ld bc, 7:0
  call OWN_SET_POS
  ld hl, BANK2.CREDITS
.print_credits_loop
  ld a,(hl)
  or a
  ret z
  call CONVERT_ASCII_2_ZX81
  call OWN_PRINT_CHAR
  inc hl
  jr .print_credits_loop
  
WAIT_FOR_KEY:
  ld A,(LAST_K)
  cp $FF
  jr z, WAIT_FOR_KEY
.wait_till_no_press_loop:
  ld A,(LAST_K)
  cp $FF
  jr nz, .wait_till_no_press_loop
  ret

;       ==== CREDITS ====        ;
; SD card handling routines are  ;
; based on github.com/ ...       ;
;  ... feilipu/z88dk-libraries   ;
;  ... fatfs                     ;
;  ... z88dk                     ;
; Big thanks to them!            ;
; All other coding, hardware     ;
; design is done by:             ;
;              Sandor Vass, 2023 ;
