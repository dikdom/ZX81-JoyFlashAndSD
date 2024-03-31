/***
 * This is the main source file of the ZX81 Flash+SD+Joy Expansion card.
 * The card has 
 * - 64kB ROM (16kB banks pageable to ZX81 $0000-$3FFF area)
 * - 32kB SRAM (visible at $4000-$FFFF where the $4000-$8000 area is mirrorred to $C000-$FFFF area)
 * - a W25Qxxx flash chip which is readable by the ROM (cart) via SPI. The flash chip can be 2/4/8/16MB
 * - an uSD card slot, which is readable by the ROM via SPI.
 * According to my intention the ZX81 on boot
 *   A) checks if card is in slot it tries to initialize it
 *     - if succeeds, proceeds to D)
 *   B) checks flash first 32 bytes. If header found, proceed to D)
 *   C) boot stops
 *   D) loads the directory (from SD/flash) and allows the user to select a file to start or exit to BASIC
 *   E) on uSD card slot switch open (in SD menu), the cart goes back to B)
 * On reset the above mentioned boot process restarts.
 * The content of the flash chip must be created separately from a PC. When its content needs to be changed it has to be removed from the
 * cart and reprogrammed using a PC. There is a python program that generates the binary for the flash
 * The uSD card must have fat16/fat32 partition and .p files on it. Only .p extension files can be loaded and started
 * 2023-06-20, Sanyi
 * 2024-03-27, Sanyi
 */

/**
 * 1.00 - original, released version
 * 1.01 - 2023-11-20
 *      - After original init routines the ctrl port was written by $0F, so SD_SPI_CS was low. It is fixed
 *        now to $1F (SD /CS is set high also)
 *      - Moved  call CLS  and setting of SP before  call SLOW_PER_FAST
 *      - On return from uSD to Flash the SPI_CS also set to high  on socket switch open after 1 frame-time 
 *       (slow SD card unplug causes NO FLASH FOUND message - doesn't seem to fix the problem)
 * 1.02 - 2024-03-17
 *      - before returning to BASIC, the RAMTOP area is reinitialized so no NEW has to be issued for basic programming
 *      (- ZX81+38 users: UDG is enabled by pressing U in the menu - not implemented yet)
 * 1.03 - 2024-03-27
 *      - BASIC stack area is tidied on exiting from SD also. RAMTOP is set to $BFFF so feemem is about 30k
 *      - WILL NOT BE IMPLEMENTED: ZX81+38 only, RAM on $2000-$3FFF is enabled by pressing SHIFT+0
 *        Could be programmed the left GAL (ctrl reg has bit 5 as an input on L-GAL), but makes no sense. No program would use it.
 *        Would have been way more useful to route the /WR line to the flash chip and create a program that writes a flash content
 *        to the flash chip. Would have, should have... Sorry. This (rev4) card is definitely not capable of doing this.
 *      - ver 1.01 is wrong about SD /CS signal. It is on bit3 of ctrl reg, so $0F would be just fine..
 **/

VERSION_MAJOR EQU 1
VERSION_MINOR EQU 3

; address where the register content is saved
; FLASH:
;   All variables are stored starting at
;   Screen buffer is at $BF00
; SD:
;   The jump codes are starting at $3FA0 (-$3FFF)
;   Variables in the code, program is loaded into $8000-$BFFF
CTRL_SHADOW = $BFFF
CTRL_PORT = $3F
KEMPSTON_PORT = $1F

  INCLUDE "defines.asm"
  INCLUDE "zx81.edition3.sym"

  DEFPAGE 0, 0000, 4000h
  DEFPAGE 1..3

  PAGE 0
  CODE @ 0
  INCBIN "../bin/zx81.edition3.rom"
  
  PAGE 1
  CODE @ 0
  INCBIN "../bin/zx81.edition1.rom"

  PAGE 2
  CODE @ 0
  INCBIN "../bin/zx81.edition3.rom"

  PAGE 3
  CODE @ 0
  INCBIN "../bin/zx81.edition3.rom"

  PAGE 0
  
  CODE ! 2
  LD BC,$8000 ; initialization from $8000, let the ZX81 believe it is a 16k RAM expansion
  JP FJEXP_INIT	; RAM-CHECK and stuff is continuing above $2000...

  CODE @ 2000h
FJEXP_INIT
  
  LD DE, 13000
.loop100ms
  DEC DE			; 6T
  LD A, E			; 7T
  OR D				; 4T
  JR nz, .loop100ms	; jump: 12T / nojump: 7T
  
  LD A,$1F	; upper two bits are bank select, set them 0, lower 3 bits are for flash: D0-D1-D2 -> /CS, clk, Data-In. /CS: high, clk: low (data:low), bit3 is SD chip select
  OUT (CTRL_PORT), A
  
ORIGINAL_INIT
  INCLUDE "orig-init.asm"

; Let's continue in normal RAM, system boots up simply
  CALL CURSOR_IN
  CALL CLS
  LD SP, CTRL_SHADOW
  CALL SLOW_PER_FAST
  
  LD A,$1F	; upper two bits are bank select, set them 0, lower 3 bits are for flash: D0-D1-D2 -> /CS, clk, Data-In. /CS: high, clk: low (data:low), bit3 is SD chip select
  OUT (CTRL_PORT), A
  LD (CTRL_SHADOW), A

  INCLUDE "cart-program-flash.asm"
  INCLUDE "W25Q.asm"

PRINT_HEX
  PUSH AF
  RRCA
  RRCA
  RRCA
  RRCA
  CALL PRINT_NIBBLE
  POP AF
  CALL PRINT_NIBBLE
  RET
  
PRINT_NIBBLE
  AND $0F	
  CP $09
  JR c,HEX_NUM
  ADD _0
  JR HEX_NIBBLE_OK
HEX_NUM:
  SUB $0A
  ADD _A
HEX_NIBBLE_OK:
  RST $10
  RET
  
PRINT_STR:
  LD A,(HL)
  CP $FF
  RET z
  RST $10
  INC HL
  JR PRINT_STR
	
  DB 'ZX81 Flash&SD&Joy Cart by Sanyi, 2023-09-09'
  CODE @ 3FA0h
ENTER_TO_SD:
  LD A, (CTRL_SHADOW)
  OR $C0
  LD (CTRL_SHADOW), A
  OUT (CTRL_PORT), A
ENTRY_ON_PAGE3 = $
  
  CODE ! REENTRY_PAGE0_LOADED
  CALL FAST
  LD HL, $8002
  LD DE, $4009
  LD BC, ($8000)
  LDIR
  LD HL,$0676 ; magic number #1
  PUSH HL
  LD A,$80    ; magic number #2
  ld ($4001),A
  LD A,$FF     ; magic number #1
  LD ($4000), A
  JP SLOW_PER_FAST
EXIT_TO_BASIC_PAGE0:
  JP PROCESS_EXIT
  CODE ! REENTRY_PAGE0_FLASH
  CALL SPI_STOP
  jp USE_FLASH
  
  PAGE 2

MACRO C_LINE num, path
ENDM

MACRO GLOBAL var
ENDM

MACRO SECTION var
ENDM

  CODE ! 0400h
  INCLUDE "ff.c.asm"
  ENDMODULE
  MODULE BANK2

  
MY_SLOW:
  SET     6,(IY+$3B)      ; sv CDFLAG
  JP      SLOW_PER_FAST           ; to SLOW/FAST
MY_FAST:
  CALL    SET_FAST           ; routine SET-FAST
  RES     6,(IY+$3B)      ; sv CDFLAG
  RET                     ; return.

ASCII_CONVERT_TABLE:
  ; $20, 
  DB __, __, _DQUOTE, __, _DOLLAR, __, __, __,\
  _POPEN, _PCLOSE, _AST, _PLUS, _COMMA, _DASH, _PERIOD, _SLASH,\
   _0, _1, _2, _3, _4, _5, _6, _7,\
   _8, _9, _COLON, _SEMIC, _LT, _EQUAL, _GT, _QMARK
GT64K_STR:
  DB  _6, _4, _K, _PLUS, $FF
DIR_STR:
  DB _LT, _D, _I, _R, _GT, $FF
INIT_SD_STR:
  DB $00, _I, _N, _I, _T, __, _S, _D, _PERIOD, _PERIOD, _PERIOD, $FF
LOAD_DIR_STR
  DB __, _L, _O, _A, _D, __, _D, _I, _R, _COLON, $00, $00, $00, $00, $FF
DIR_LOADED_STR:
  DB _L, _O, _A, _D, __, _D, _O, _N, _E, $FF
  
CREDITS:
  DB "       ==== CREDITS ====        "
  DB " SD card handling routines are  "
  DB " based on www.github.com/...    "
  DB "  ...feilipu/z88dk-libraries/ff "
  DB "  ...z88dk/                     "
  DB " Big thanks to them!            "
  DB " All other coding, hardware     "
  DB " design is done by:             "
  DB "              Sandor Vass, 2023 "
  DB 0x00



  CODE ! BANK3.ENTRY_ON_PAGE2
  JP BANK3.START_SD
  
FILE_LOADED:
  LD A,(CTRL_SHADOW)
  AND $3F
  LD (CTRL_SHADOW), A
  OUT (CTRL_PORT), A
@REENTRY_PAGE0_LOADED = $
  CODE ! EXIT_TO_BASIC_PAGE0 - (EXIT_TO_BASIC_END - EXIT_TO_BASIC)
EXIT_TO_BASIC:
  LD A,(CTRL_SHADOW)
  AND $3F
  LD (CTRL_SHADOW), A
  OUT (CTRL_PORT), A
EXIT_TO_BASIC_END
@REENTRY_PAGE0_BASIC = $
BACK_TO_FLASH:
  LD A,(CTRL_SHADOW)
  AND $3F
  OR (1<<SD_SPI_CS); SD card de-selected
  LD (CTRL_SHADOW), A
  OUT (CTRL_PORT), A
@REENTRY_PAGE0_FLASH = $

  ENDMODULE ; BANK2
  
  PAGE 3
  CODE ! 0400h
  PHASE 4400h
  INCLUDE "diskio_sd.c.asm" 
  ENDMODULE		; FF
  INCLUDE "c.asm"
  MODULE BANK3
  INCLUDE "cart-program-sd.asm"
  
RAMCODE_END = $
__VARIABLES_START__
@__FF_INTERNALS DS 5
_fatfs      			DS 564
_file	    			DS 28
_dir	    			DS 40
_finfo      			DS 22
_read_bytes 			DW 0
_print_addr  			DW 0
_current_screenline_addr DW 0
_num_of_entries 		DW 0
_dir_depth 				DB 0
_reading_non_1st_entry 	DB 0
_current_path 			DS 256
_window_pos      		DW 0       ; DW
_selected_line   		DB 0	 ; DB
_current_line    		DB 0     ; DB
_last_pressed_key 		DB 0  ; DB
_pressed_key_cnt 		DB 0
_last_frame 			DW 0

CURR_NUM_ADDR   		DW 0 ; DW
CURR_ENTRY_ADDR 		DW 0  ; DW

__VARIABLES_END__

WINDOW_HEIGHT 		EQU 16
_directory_entries  EQU $8000; (13 + 2 + 1) * 512
  
  DEPHASE

  CODE ! ENTRY_ON_PAGE3
  LD HL, $0400
  LD DE, $4400
  LD BC, RAMCODE_END - $4400
  LDIR
  
  LD A,(CTRL_SHADOW)
  AND $3F
  OR $80	; bank #2
  LD (CTRL_SHADOW), A
  OUT (CTRL_PORT), A
ENTRY_ON_PAGE2 = $
  ENDMODULE