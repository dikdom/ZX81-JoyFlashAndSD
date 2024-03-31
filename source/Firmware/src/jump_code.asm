  module jump

ifndef CALL_ON_PAGE2
macro CALL_ON_PAGE2 addr
  push af
  ld a,(CTRL_SHADOW)
  AND $3F
  OR $80
  out (CTRL_PORT), A
  ld (CTRL_SHADOW), A
  pop AF
  call addr
  push af
  ld a,(CTRL_SHADOW)
  AND $3F
  OR $C0
  out (CTRL_PORT), A
  ld (CTRL_SHADOW), A
  pop AF
  ret
endm
endif

_l_plong:
  CALL_ON_PAGE2 l_plong  
  
  
__l_plong:
  push hl
  push bc
  ld b,$80
  ld hl,l_plong
  jp jump
  
jump:
  push af
  ld a,(CTRL_SHADOW)
  and $3F
  or b
  OUT (CTRL_PORT),A
  pop af
  
  endmodule
  
  
  
 