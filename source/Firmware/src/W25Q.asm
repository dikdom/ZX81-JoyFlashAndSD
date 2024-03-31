SPI_CS    = 0
SPI_CLK   = 1
SPI_DI    = 2
SD_SPI_CS = 3

/*
 * Starts the SPI communication by driving /CS to low (with clk low)
 * REGS used: A
 */ 
SPI_START
  LD A,(CTRL_SHADOW)
  AND $F8
  OUT (CTRL_PORT), A
  RET

/*
 * Stops the SPI communication by driving /CS to high (with clk low)
 * REGS used: A
 */ 
SPI_STOP
  ld A,(CTRL_SHADOW)
  AND $F8
  OR (1 << SPI_CS)
  OUT (CTRL_PORT), A
  RET

/**
 *  Sending one byte to SPI (after SPI_START called), leaving CLK on low.
 *  INPUT: A
 *  REGS used: A,B,C
 */
SPI_SEND_BYTE
  LD C,A
  LD B,8
  LD A,(CTRL_SHADOW)
SSB_LOOP:
  AND $C0
  SLA C
  jr nc,SSB_DATA_BIT_SET
  OR (1<<SPI_DI)
SSB_DATA_BIT_SET:
  OUT (CTRL_PORT),A
  OR (1<<SPI_CLK)
  OUT (CTRL_PORT),A
  DJNZ SSB_LOOP
  AND ~(1<<SPI_CLK | 1<<SPI_DI)
  OUT (CTRL_PORT),A
  RET

/**
 *  Receiving one byte from SPI, assuming CLK is already driven low
 *  OUTPUT: D
 *  REGS used: A,B,C,D,E
 */
SPI_RECV_BYTE
  ld d,0
  ld b,8
  ld C,CTRL_PORT
  ld A,(CTRL_SHADOW)
  AND $C0
SRB_LOOP:
  IN E,(C) ; same data bit on bit5-bit0
  RR E	; bit#0 -> Cy
  RL D  ; bit#6->bit#7, bit#5->bit#6, ..., bit#0->bit#1, Cy -> bit#0
  OR (1<<SPI_CLK) ; clk going up
  OUT (C),A
  AND ~(1<<SPI_CLK) ; clk going down, next data bit on DOUT
  OUT (C),A
  DJNZ SRB_LOOP
  RET

/**
 * Initiates the read data sequence by sending the 24 bit address. SPI_START must be called prior to this method
 * INPUT: DHL
 * REGS used: ADHL
 */

W25Q_INITIATE_READ_DATA
  PUSH AF
  PUSH BC
  PUSH DE
  LD A,$03
  CALL SPI_SEND_BYTE
  LD A,D
  CALL SPI_SEND_BYTE
  LD A,H
  CALL SPI_SEND_BYTE
  LD A,L
  CALL SPI_SEND_BYTE
  POP DE
  POP BC
  POP AF
  RET

/**
 * Reads one byte from the set address. This call simply calls to SPI_RECV_BYTE, but also retains the BC, DE registers
 * INPUT: -
 * OUTPUT: A
 * REGS used: -
 */
W25Q_READ_DATA
  PUSH BC
  PUSH DE
  CALL SPI_RECV_BYTE
  LD A,D 
  pop DE
  POP BC
  RET
  
/**
 * Reads the JEDEC info from the chip
 * INPUT: -
 * OUPUT: D: manufacture ID, HL: 16 bit device ID
 *           $EF (winbond),      $4015-$4018          
 */
W25Q_READ_JEDEC
  PUSH AF
  PUSH BC
  PUSH DE
  ld A,$9F
  call SPI_SEND_BYTE ; abc
  CALL SPI_RECV_BYTE ; abce
  ld A,D
  PUSH AF
  CALL SPI_RECV_BYTE ; abce
  ld H,D 
  CALL SPI_RECV_BYTE ; abce
  LD L,D
  POP AF
  POP DE
  LD D,A
  POP BC
  POP AF
  RET

CHIP_IDS:
	DW $4015, $4016, $4017, $4018, $FFFF
CHIP_ID_STRINGS:
	DW W25Q16_STR, W25Q32_STR, W25Q64_STR, W25Q128_STR

W25Q16_STR:
  DB _W, _2, _5, _Q, _1, _6, $FF
W25Q32_STR:
  DB _W, _2, _5, _Q, _3, _2, $FF
W25Q64_STR:
  DB _W, _2, _5, _Q, _6, _4, $FF
W25Q128_STR:
  DB _W, _2, _5, _Q, _1, _2, _8, $FF
