;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 19766-9ffe2042c-20220723
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Sun Aug 20 23:04:30 2023


	C_LINE	0,"./ff.c"

	MODULE X__ff_c

;	INCLUDE "z80_crt0.hdr"


	C_LINE	0,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	0,"c:\apps\z88dk\lib\config\\..\..\/include/sys/compiler.h"
	C_LINE	4,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
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
	C_LINE	5,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	7,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	8,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	12,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	14,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	19,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	20,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	24,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	25,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	29,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	30,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	34,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	35,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	39,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	41,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	46,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	47,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	52,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	53,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	57,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	59,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	64,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	65,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	69,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	72,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	75,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	78,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	79,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	83,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	85,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	90,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	92,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	97,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	99,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	104,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	105,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	109,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	111,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	116,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	118,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	123,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	125,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	133,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	135,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	139,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	141,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	145,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	146,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	150,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	152,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	157,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	158,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	162,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	163,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	167,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	168,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	172,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	173,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	177,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	178,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	182,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	183,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	187,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	188,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	192,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	193,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	197,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	200,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	203,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	204,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	208,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	210,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	215,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	217,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	222,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	225,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	228,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	230,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	235,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	237,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	242,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	244,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	249,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	251,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	256,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	258,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	263,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	264,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	268,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	269,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	273,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	274,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	278,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	279,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	283,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	284,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	288,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	289,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	293,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	296,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	297,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	301,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	304,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	305,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	309,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	310,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	314,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	315,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	319,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	322,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	323,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	327,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	329,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	334,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	337,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	339,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	343,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	344,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	348,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	349,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	352,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	353,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	410,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	416,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	422,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	428,"c:\apps\z88dk\lib\config\\..\..\/include/string.h"
	C_LINE	22,"./ff.c"
	C_LINE	0,"./ff.h"
	C_LINE	0,"./ffconf.h"
	C_LINE	29,"./ff.h"
	C_LINE	0,"c:\apps\z88dk\lib\config\\..\..\/include/stdint.h"
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
	C_LINE	53,"./ff.h"
	C_LINE	54,"./ff.h"
	C_LINE	55,"./ff.h"
	C_LINE	56,"./ff.h"
	C_LINE	57,"./ff.h"
	C_LINE	58,"./ff.h"
	C_LINE	91,"./ff.h"
	C_LINE	92,"./ff.h"
	C_LINE	117,"./ff.h"
	C_LINE	145,"./ff.h"
	C_LINE	191,"./ff.h"
	C_LINE	214,"./ff.h"
	C_LINE	237,"./ff.h"
	C_LINE	256,"./ff.h"
	C_LINE	273,"./ff.h"
	C_LINE	285,"./ff.h"
	C_LINE	317,"./ff.h"
	C_LINE	318,"./ff.h"
	C_LINE	319,"./ff.h"
	C_LINE	320,"./ff.h"
	C_LINE	321,"./ff.h"
	C_LINE	322,"./ff.h"
	C_LINE	323,"./ff.h"
	C_LINE	324,"./ff.h"
	C_LINE	325,"./ff.h"
	C_LINE	326,"./ff.h"
	C_LINE	327,"./ff.h"
	C_LINE	328,"./ff.h"
	C_LINE	329,"./ff.h"
	C_LINE	330,"./ff.h"
	C_LINE	331,"./ff.h"
	C_LINE	332,"./ff.h"
	C_LINE	333,"./ff.h"
	C_LINE	334,"./ff.h"
	C_LINE	335,"./ff.h"
	C_LINE	336,"./ff.h"
	C_LINE	337,"./ff.h"
	C_LINE	338,"./ff.h"
	C_LINE	339,"./ff.h"
	C_LINE	340,"./ff.h"
	C_LINE	341,"./ff.h"
	C_LINE	342,"./ff.h"
	C_LINE	343,"./ff.h"
	C_LINE	344,"./ff.h"
	C_LINE	345,"./ff.h"
	C_LINE	346,"./ff.h"
	C_LINE	348,"./ff.h"
	C_LINE	349,"./ff.h"
	C_LINE	350,"./ff.h"
	C_LINE	351,"./ff.h"
	C_LINE	24,"./ff.c"
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
	C_LINE	35,"./ff.c"
	C_LINE	501,"./ff.c"
	C_LINE	502,"./ff.c"
	C_LINE	505,"./ff.c"
	C_LINE	633,"./ff.c"
	SECTION	rodata_compiler
_ExCvt
	defb	128
	defb	154
	defb	69
	defb	65
	defb	142
	defb	65
	defb	143
	defb	128
	defb	69
	defb	69
	defb	69
	defb	73
	defb	73
	defb	73
	defb	142
	defb	143
	defb	144
	defb	146
	defb	146
	defb	79
	defb	153
	defb	79
	defb	85
	defb	85
	defb	89
	defb	153
	defb	154
	defb	155
	defb	156
	defb	157
	defb	158
	defb	159
	defb	65
	defb	73
	defb	79
	defb	85
	defb	165
	defb	165
	defb	166
	defb	167
	defb	168
	defb	169
	defb	170
	defb	171
	defb	172
	defb	173
	defb	174
	defb	175
	defb	176
	defb	177
	defb	178
	defb	179
	defb	180
	defb	181
	defb	182
	defb	183
	defb	184
	defb	185
	defb	186
	defb	187
	defb	188
	defb	189
	defb	190
	defb	191
	defb	192
	defb	193
	defb	194
	defb	195
	defb	196
	defb	197
	defb	198
	defb	199
	defb	200
	defb	201
	defb	202
	defb	203
	defb	204
	defb	205
	defb	206
	defb	207
	defb	208
	defb	209
	defb	210
	defb	211
	defb	212
	defb	213
	defb	214
	defb	215
	defb	216
	defb	217
	defb	218
	defb	219
	defb	220
	defb	221
	defb	222
	defb	223
	defb	224
	defb	225
	defb	226
	defb	227
	defb	228
	defb	229
	defb	230
	defb	231
	defb	232
	defb	233
	defb	234
	defb	235
	defb	236
	defb	237
	defb	238
	defb	239
	defb	240
	defb	241
	defb	242
	defb	243
	defb	244
	defb	245
	defb	246
	defb	247
	defb	248
	defb	249
	defb	250
	defb	251
	defb	252
	defb	253
	defb	254
	defb	255
	SECTION	code_compiler
	C_LINE	657,"./ff.c"

; Function ld_word flags 0x00000200 __smallc 
; unsigned int WORDld_word(const unsigned char BYTE* ptr)
; parameter 'const unsigned char BYTE* ptr' at sp+2 size(2)
	C_LINE	658,"./ff.c::ld_word::0::0"
@_ld_word
	push	bc
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	l,(hl)
	ld	h,0
	pop	bc
	push	hl
	ld	h,l
	ld	l,0
	push	hl
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	l,(hl)
	pop	de
	ld	h,d
	ld	a,l
	or	e
	ld	l,a
	pop	bc
	ret

	C_LINE	666,"./ff.c::ld_word::0::1"

; Function ld_dword flags 0x00000200 __smallc 
; unsigned long DWORDld_dword(const unsigned char BYTE* ptr)
; parameter 'const unsigned char BYTE* ptr' at sp+2 size(2)
	C_LINE	667,"./ff.c::ld_dword::0::1"
@_ld_dword
	push	bc
	push	bc
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,0
	ld	de,0
	pop	bc
	call	l_plong
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	a,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	h,a
	ld	l,0
	push	de
	push	hl
	ld	hl,12	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	ld	l,(hl)
	pop	de
	ld	h,d
	ld	a,l
	or	e
	ld	l,a
	pop	de
	pop	bc
	call	l_plong
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	a,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	h,a
	ld	l,0
	push	de
	push	hl
	ld	hl,12	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	l,(hl)
	pop	de
	ld	h,d
	ld	a,l
	or	e
	ld	l,a
	pop	de
	pop	bc
	call	l_plong
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	a,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	h,a
	ld	l,0
	push	de
	push	hl
	ld	hl,12	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	l,(hl)
	pop	de
	ld	h,d
	ld	a,l
	or	e
	ld	l,a
	pop	de
	pop	bc
	call	l_plong
	ld	hl,0	;const
	add	hl,sp
	call	l_glong
	pop	bc
	pop	bc
	ret


	C_LINE	732,"./ff.c::ld_dword::0::2"

; Function dbc_1st flags 0x00000200 __smallc 
; int dbc_1st(unsigned char c)
; parameter 'unsigned char c' at sp+2 size(1)
	C_LINE	733,"./ff.c::dbc_1st::0::2"
@_dbc_1st
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_3	;
	ld	hl,0	;const
	ret


i_3
	ld	hl,0	;const
	ret


	C_LINE	752,"./ff.c::dbc_1st::0::3"

; Function dbc_2nd flags 0x00000200 __smallc 
; int dbc_2nd(unsigned char c)
; parameter 'unsigned char c' at sp+2 size(1)
	C_LINE	753,"./ff.c::dbc_2nd::0::3"
@_dbc_2nd
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_4	;
	ld	hl,0	;const
	ret


i_4
	ld	hl,0	;const
	ret


	C_LINE	1117,"./ff.c::dbc_2nd::0::4"

; Function move_window flags 0x00000200 __smallc 
; const int FRESULTmove_window(struct 0__anonstruct_145_0 FATFS* fs, unsigned long sect)
; parameter 'unsigned long sect' at sp+2 size(4)
; parameter 'struct 0__anonstruct_145_0 FATFS* fs' at sp+6 size(2)
	C_LINE	1121,"./ff.c::move_window::0::4"
@_move_window
	ld	hl,0	;const
	push	hl
	ld	l,4	
	add	hl,sp

	call	l_glong2sp
	ld	hl,12	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,48
	add	hl,bc

	call	l_glong
	call	l_long_ne
	jp	nc,i_5	;
	pop	hl
	push	hl
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_6	;
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	l,(hl)
	ld	h,0
	push	hl
	ld	hl,10	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,52
	add	hl,bc
	push	hl
	ld	hl,8	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,1	;const
	push	hl
	call	disk_read
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_7	;
	ld	hl,4	;const
	add	hl,sp
	ld	(hl),255
	inc	hl
	ld	(hl),255
	inc	hl
	ld	(hl),255
	inc	hl
	ld	(hl),255
	ld	hl,1	;const
	pop	bc
	push	hl
i_7
	ld	hl,8	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,48
	add	hl,bc
	push	hl
	ld	hl,6	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
i_5
	pop	hl
	
	ret


	C_LINE	1184,"./ff.c::move_window::0::8"

; Function clst2sect flags 0x00000200 __smallc 
; unsigned long LBA_tclst2sect(struct 0__anonstruct_145_0 FATFS* fs, unsigned long clst)
; parameter 'unsigned long clst' at sp+2 size(4)
; parameter 'struct 0__anonstruct_145_0 FATFS* fs' at sp+6 size(2)
	C_LINE	1188,"./ff.c::clst2sect::0::8"
@_clst2sect
	ld	hl,2	;const
	add	hl,sp
	push	hl
	call	l_glong
	ld	bc,65534
	add	hl,bc
	jr	c,$+3
	dec	de
	pop	bc
	call	l_plong
	ld	hl,2	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,10	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	ld	bc,65534
	add	hl,bc
	jr	c,$+3
	dec	de
	call	l_long_uge
	jp	nc,i_8	;
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	ret


i_8
	ld	hl,6	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,44
	add	hl,bc
	call	l_glong2sp
	ld	hl,10	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,0
	push	de
	push	hl
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	call	l_long_mult_u
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	ret


	C_LINE	1201,"./ff.c::clst2sect::0::9"

; Function get_fat flags 0x00000200 __smallc 
; unsigned long DWORDget_fat(struct 0__anonstruct_191_1 FFOBJID* obj, unsigned long clst)
; parameter 'unsigned long clst' at sp+2 size(4)
; parameter 'struct 0__anonstruct_191_1 FFOBJID* obj' at sp+6 size(2)
	C_LINE	1205,"./ff.c::get_fat::0::9"
@_get_fat
	push	bc
	push	bc
	push	bc
	push	bc
	ld	hl,14	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,12	;const
	add	hl,sp
	call	l_glong
	ld	a,l
	sub	2
	ld	a,h
	sbc	0
	ld	a,e
	sbc	0
	ld	a,d
	sbc	0
	jp	c,i_10	;
	ld	hl,12	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,4	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	call	l_long_uge
	jp	nc,i_9	;
i_10
	ld	hl,2	;const
	add	hl,sp
	ld	b,h
	ld	c,l
	ld	hl,1	;const
	ld	de,0
	call	l_plong
	jp	i_12	;EOS
i_9
	ld	hl,2	;const
	add	hl,sp
	ld	(hl),255
	inc	hl
	ld	(hl),255
	inc	hl
	ld	(hl),255
	inc	hl
	ld	(hl),255
	pop	hl
	push	hl
	ld	l,(hl)
	ld	h,0
i_15
	ld	a,l
	cp	+(1% 256)
	jp	z,i_16	;
	cp	+(2% 256)
	jp	z,i_21	;
	cp	+(3% 256)
	jp	z,i_23	;
	jp	i_25	;EOS
i_16
	ld	hl,6	;const
	add	hl,sp
	push	hl
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,6	;const
	add	hl,sp
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,10	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	srl	h
	rr	l
	pop	de
	add	hl,de
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,0	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc,36
	add	hl,bc
	call	l_glong2sp
	ld	hl,12	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	l,h
	ld	h,0
	srl	l
	ld	de,0
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	push	de
	push	hl
	call	_move_window
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	nz,i_14	;EOS
i_17
	ld	hl,8	;const
	add	hl,sp
	pop	de
	push	de
	push	hl
	ex	de,hl
	ld	bc,52
	add	hl,bc
	push	hl
	ld	hl,10	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	ld	de,512
	ex	de,hl
	call	l_div_u
	ex	de,hl
	pop	de
	add	hl,de
	pop	de
	ex	de,hl
	ld	a,(de)
	ld	(hl),a
	inc	hl
	ld	(hl),0
	ld	hl,0	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc,36
	add	hl,bc
	call	l_glong2sp
	ld	hl,12	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	l,h
	ld	h,0
	srl	l
	ld	de,0
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	push	de
	push	hl
	call	_move_window
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	nz,i_14	;EOS
i_18
	ld	hl,8	;const
	add	hl,sp
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,4	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,52
	add	hl,bc
	push	hl
	ld	hl,12	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,512
	call	l_div_u
	ex	de,hl
	pop	de
	add	hl,de
	pop	de
	ld	a,d
	or	(hl)
	ld	d,a
	ex	de,hl
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,2	;const
	add	hl,sp
	push	hl
	ld	hl,14	;const
	add	hl,sp
	bit	0,(hl)
	jp	z,i_19	;
	ld	hl,10	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,4
	call	l_asr_u_hl_by_e
	jp	i_20	;
i_19
	ld	hl,10	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,4095
	call	l_and
i_20
	ld	de,0
	pop	bc
	call	l_plong
	jp	i_14	;EOS
i_21
	ld	hl,0	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc,36
	add	hl,bc
	call	l_glong2sp
	ld	hl,19	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	l,(hl)
	ld	h,0
	ex	de,hl
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	push	de
	push	hl
	call	_move_window
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	nz,i_14	;EOS
i_22
	ld	hl,2	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,52
	add	hl,bc
	push	hl
	ld	hl,16	;const
	add	hl,sp
	call	l_glong
	add	hl,hl
	rl	e
	rl	d
	push	de
	push	hl
	ld	hl,512	;const
	ld	de,0
	call	l_long_mod_u
	exx
	pop	hl
	ld	a,h
	rla
	sbc	a
	ld	e,a
	ld	d,a
	push	de
	push	hl
	exx
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	push	hl
	call	_ld_word
	pop	bc
	ld	de,0
	pop	bc
	call	l_plong
	jp	i_14	;EOS
i_23
	ld	hl,0	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc,36
	add	hl,bc
	call	l_glong2sp
	ld	hl,18	;const
	add	hl,sp
	call	l_glong2sp
	ld	l,7
	call	l_long_asr_u
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	push	de
	push	hl
	call	_move_window
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	nz,i_14	;EOS
i_24
	ld	hl,2	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,52
	add	hl,bc
	push	hl
	ld	hl,16	;const
	add	hl,sp
	call	l_glong
	add	hl,hl
	rl	e
	rl	d
	add	hl,hl
	rl	e
	rl	d
	push	de
	push	hl
	ld	hl,512	;const
	ld	de,0
	call	l_long_mod_u
	exx
	pop	hl
	ld	a,h
	rla
	sbc	a
	ld	e,a
	ld	d,a
	push	de
	push	hl
	exx
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	push	hl
	call	_ld_dword
	pop	bc
	ld	a,d
	and	15
	ld	d,a
	pop	bc
	call	l_plong
	jp	i_14	;EOS
i_25
	ld	hl,2	;const
	add	hl,sp
	ld	b,h
	ld	c,l
	ld	hl,1	;const
	ld	de,0
	call	l_plong
i_12
	ld	hl,2	;const
	add	hl,sp
	call	l_glong
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


	C_LINE	1737,"./ff.c::get_fat::0::13"

; Function dir_sdi flags 0x00000200 __smallc 
; const int FRESULTdir_sdi(struct 0__anonstruct_237_3 DIR* dp, unsigned long ofs)
; parameter 'unsigned long ofs' at sp+2 size(4)
; parameter 'struct 0__anonstruct_237_3 DIR* dp' at sp+6 size(2)
	C_LINE	1741,"./ff.c::dir_sdi::0::13"
@_dir_sdi
	push	bc
	push	bc
	push	bc
	push	bc
	ld	hl,14	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,12	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	jp	i_27	;EOS
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	cp	4
	jp	nz,i_27	;
	ld	hl,1	;const
	jr	i_28
i_27
	ld	hl,0	;const
i_28
	jp	nc,i_29	;
	ld	hl,0	;const
	ld	de,4096
	jp	i_30	;
i_29
	ld	hl,0	;const
	ld	de,32
i_30
	call	l_long_uge
	jp	c,i_31	;
	ld	hl,12	;const
	add	hl,sp
	ld	a,(hl)
	and	31
	jp	z,i_26	;
i_31
	ld	hl,2	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_26
	ld	hl,16	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,14
	add	hl,bc
	push	hl
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,2	;const
	add	hl,sp
	push	hl
	ld	hl,18	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,2	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_34	;
	pop	hl
	push	hl
	ld	l,(hl)
	ld	h,0
	ld	a,l
	sub	3
	ccf
	jp	nc,i_34	;
i_35_i_34
	ld	hl,2	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,40
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
i_33
	ld	hl,2	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_37	;
	ld	hl,12	;const
	add	hl,sp
	call	l_glong2sp
	ld	l,5
	call	l_long_asr_u
	push	de
	push	hl
	ld	hl,4	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,8
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,0
	call	l_long_uge
	jp	nc,i_38	;
	ld	hl,2	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_38
	ld	hl,16	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	pop	de
	push	de
	push	hl
	ex	de,hl
	ld	bc,40
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
	jp	i_39	;EOS
i_37
	ld	hl,6	;const
	add	hl,sp
	pop	de
	push	de
	push	hl
	ex	de,hl
	ld	bc,10
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,0
	push	de
	push	hl
	ld	hl,512	;const
	ld	de,0
	call	l_long_mult
	pop	bc
	call	l_plong
i_40
	ld	hl,12	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	call	l_long_uge
	jp	nc,i_41	;
	ld	hl,2	;const
	add	hl,sp
	push	hl
	ld	hl,18	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,6	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_get_fat
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,2	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,65535	;const
	ld	de,65535
	call	l_long_eq
	jp	nc,i_42	;
	ld	hl,1	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_42
	ld	hl,2	;const
	add	hl,sp
	call	l_glong
	ld	a,l
	sub	2
	ld	a,h
	sbc	0
	ld	a,e
	sbc	0
	ld	a,d
	sbc	0
	jp	c,i_44	;
	ld	hl,2	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,4	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	call	l_long_uge
	jp	nc,i_43	;
i_44
	ld	hl,2	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_43
	ld	hl,12	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,12	;const
	add	hl,sp
	call	l_glong
	ld	c,l
	ld	b,h
	pop	hl
	and	a
	sbc	hl,bc
	ex	de,hl
	ld	c,l
	ld	b,h
	pop	hl
	sbc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	jp	i_40	;EOS
i_41
	ld	hl,16	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	push	hl
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,6	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_clst2sect
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
i_39
	ld	hl,16	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,18
	add	hl,bc
	push	hl
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,16	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_46	;
	ld	hl,2	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_46
	ld	hl,16	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	push	hl
	call	l_glong2sp
	ld	hl,18	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_div_u
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	ld	hl,16	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	pop	de
	push	de
	push	hl
	ex	de,hl
	ld	bc,52
	add	hl,bc
	push	hl
	ld	hl,16	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mod_u
	exx
	pop	hl
	ld	a,h
	rla
	sbc	a
	ld	e,a
	ld	d,a
	push	de
	push	hl
	exx
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,0	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


	C_LINE	1785,"./ff.c::dir_sdi::0::19"

; Function dir_next flags 0x00000200 __smallc 
; const int FRESULTdir_next(struct 0__anonstruct_237_3 DIR* dp, int stretch)
; parameter 'int stretch' at sp+2 size(2)
; parameter 'struct 0__anonstruct_237_3 DIR* dp' at sp+4 size(2)
	C_LINE	1789,"./ff.c::dir_next::0::19"
@_dir_next
	push	bc
	push	bc
	push	bc
	push	bc
	ld	hl,12	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,6	;const
	add	hl,sp
	push	hl
	ld	hl,16	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,14
	add	hl,bc
	call	l_glong
	ld	bc,32
	add	hl,bc
	jr	nc,$+3
	inc	de
	pop	bc
	call	l_plong
	ld	hl,6	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	jp	i_48	;EOS
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	cp	4
	jp	nz,i_48	;
	ld	hl,1	;const
	jr	i_49
i_48
	ld	hl,0	;const
i_49
	jp	nc,i_50	;
	ld	hl,0	;const
	ld	de,4096
	jp	i_51	;
i_50
	ld	hl,0	;const
	ld	de,32
i_51
	call	l_long_uge
	jp	nc,i_47	;
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	pop	bc
	call	l_plong
i_47
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_52	;
	ld	hl,4	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_52
	ld	hl,6	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mod_u
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_53	;
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	push	hl
	call	l_glong
	call	l_inclong
	pop	bc
	call	l_plong
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,18
	add	hl,bc
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_54	;
	ld	hl,6	;const
	add	hl,sp
	call	l_glong2sp
	ld	l,5
	call	l_long_asr_u
	push	de
	push	hl
	ld	hl,4	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,8
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,0
	call	l_long_uge
	jp	nc,i_55	;
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	pop	bc
	call	l_plong
	ld	hl,4	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret
i_54
	ld	hl,6	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_div_u
	push	de
	push	hl
	ld	hl,4	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	dec	hl
	ld	de,0
	call	l_long_and
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_57	;
	ld	hl,2	;const
	add	hl,sp
	push	hl
	ld	hl,16	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	bc,18
	add	hl,bc
	call	l_glong
	push	de
	push	hl
	call	_get_fat
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,2	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,1	;const
	ld	de,0
	call	l_long_ule
	jp	nc,i_58	;
	ld	hl,2	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_58
	ld	hl,2	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,65535	;const
	ld	de,65535
	call	l_long_eq
	jp	nc,i_59	;
	ld	hl,1	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_59
	ld	hl,2	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,4	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	call	l_long_uge
	jp	nc,i_60	;
	ld	hl,12	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_lneg
	jp	nc,i_61	;
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	pop	bc
	call	l_plong
i_61
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	pop	bc
	call	l_plong
	ld	hl,4	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_60
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,18
	add	hl,bc
	push	hl
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	push	hl
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,6	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_clst2sect
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
i_53
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,14
	add	hl,bc
	push	hl
	ld	hl,8	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	pop	de
	push	de
	push	hl
	ex	de,hl
	ld	bc,52
	add	hl,bc
	push	hl
	ld	hl,10	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mod_u
	exx
	pop	hl
	ld	a,h
	rla
	sbc	a
	ld	e,a
	ld	d,a
	push	de
	push	hl
	exx
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,0	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


	C_LINE	1888,"./ff.c::dir_next::0::26"

; Function ld_clust flags 0x00000200 __smallc 
; unsigned long DWORDld_clust(struct 0__anonstruct_145_0 FATFS* fs, const unsigned char BYTE* dir)
; parameter 'const unsigned char BYTE* dir' at sp+2 size(2)
; parameter 'struct 0__anonstruct_145_0 FATFS* fs' at sp+4 size(2)
	C_LINE	1892,"./ff.c::ld_clust::0::26"
@_ld_clust
	push	bc
	push	bc
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,8	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	de,0
	pop	bc
	call	l_plong
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	cp	3
	jp	nz,i_62	;
	ld	hl,0	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,12	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,20
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	de,0
	ex	de,hl
	ld	hl,0	;const
	call	l_long_or
	pop	bc
	call	l_plong
i_62
	ld	hl,0	;const
	add	hl,sp
	call	l_glong
	pop	bc
	pop	bc
	ret


	C_LINE	2346,"./ff.c::ld_clust::0::28"

; Function dir_read flags 0x00000200 __smallc 
; const int FRESULTdir_read(struct 0__anonstruct_237_3 DIR* dp, int vol)
; parameter 'int vol' at sp+2 size(2)
; parameter 'struct 0__anonstruct_237_3 DIR* dp' at sp+4 size(2)
	C_LINE	2350,"./ff.c::dir_read::0::28"
@_dir_read
	ld	hl,4	;const
	push	hl
	ld	l,6	
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
i_63
	ld	hl,10	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	call	l_glong
	ld	a,h
	or	l
	or	d
	or	e
	jp	z,i_64	;
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,4	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	call	l_glong
	push	de
	push	hl
	call	_move_window
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_64	;EOS
i_65
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,12	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	pop	de
	ld	(de),a
	pop	hl
	push	hl
	ld	a,l
	and	a
	jp	nz,i_66	;
	ld	hl,4	;const
	add	hl,sp
	ld	(hl),4
	inc	hl
	ld	(hl),0
	jp	i_64	;EOS
i_66
	ld	hl,10	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,4
	add	hl,bc
	push	hl
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	hl,14	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,11
	add	hl,bc
	ld	a,(hl)
	and	63
	ld	l,a
	ld	h,0
	pop	de
	ld	a,l
	ld	(de),a
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	cp	229
	jp	z,i_68	;
	pop	hl
	push	hl
	ld	h,0
	ld	de,46
	and	a
	sbc	hl,de
	scf
	jr	nz,$+3
	ccf
	jp	nc,i_68	;
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)
	cp	15
	jp	z,i_68	;
	pop	hl
	push	hl
	ld	l,h
	ld	h,0
	ld	de,65503
	call	l_and
	ld	a,l
	cp	8
	ld	hl,1	;const
	jr	z,$+3
	dec	hl
	ex	de,hl
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_eq
	jp	nc,i_68	;
	jp	i_64	;EOS
i_67
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,12	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,0	;const
	push	hl
	call	_dir_next
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_63	;EOS
i_64
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_71	;
	ld	hl,10	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	pop	bc
	call	l_plong
i_71
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	bc
	pop	bc
	pop	bc
	ret


	C_LINE	2424,"./ff.c::dir_read::0::33"

; Function dir_find flags 0x00000200 __smallc 
; const int FRESULTdir_find(struct 0__anonstruct_237_3 DIR* dp)
; parameter 'struct 0__anonstruct_237_3 DIR* dp' at sp+2 size(2)
	C_LINE	2427,"./ff.c::dir_find::0::33"
@_dir_find
	push	bc
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	dec	sp
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	hl,9	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_dir_sdi
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_72	;
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


i_75
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	hl,3	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	call	l_glong
	push	de
	push	hl
	call	_move_window
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_74	;EOS
i_76
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,9	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	pop	de
	ld	(de),a
	pop	hl
	push	hl
	ld	a,l
	and	a
	jp	nz,i_77	;
	ld	hl,3	;const
	add	hl,sp
	ld	(hl),4
	inc	hl
	ld	(hl),0
	jp	i_74	;EOS
i_77
	ld	hl,7	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,4
	add	hl,bc
	push	hl
	ld	hl,9	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,11
	add	hl,bc
	ld	a,(hl)
	and	63
	ld	l,a
	pop	de
	ld	(de),a
	ld	hl,7	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,11
	add	hl,bc
	bit	3,(hl)
	jp	nz,i_79	;
	ld	hl,7	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,9	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,28
	add	hl,bc
	push	hl
	ld	hl,11	;const
	push	hl
	call	memcmp_callee
	call	l_lneg
	jp	nc,i_79	;
	jp	i_74	;EOS
i_78
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	hl,9	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,0	;const
	push	hl
	call	_dir_next
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_73
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_75	;EOS
i_74
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


	C_LINE	2657,"./ff.c::dir_find::0::36"

; Function get_fileinfo flags 0x00000200 __smallc 
; void get_fileinfo(struct 0__anonstruct_237_3 DIR* dp, struct 0__anonstruct_256_4 FILINFO* fno)
; parameter 'struct 0__anonstruct_256_4 FILINFO* fno' at sp+2 size(2)
; parameter 'struct 0__anonstruct_237_3 DIR* dp' at sp+4 size(2)
	C_LINE	2661,"./ff.c::get_fileinfo::0::36"
@_get_fileinfo
	push	bc
	push	bc
	dec	sp
	ld	hl,7	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,9
	add	hl,bc
	ld	d,h
	ld	e,l
	xor	a
	ld	(de),a
	ld	hl,9	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_81	;
	inc	sp
	pop	bc
	pop	bc
	ret


i_81
	ld	hl,3	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	de,0	;const
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ex	de,hl
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_82
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,11
	and	a
	sbc	hl,de
	jp	nc,i_83	;
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,7	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	pop	de
	add	hl,de
	ld	l,(hl)
	ld	a,l
	rla
	sbc	a
	ld	h,a
	ld	a,l
	pop	de
	ld	(de),a
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	ld	de,32
	and	a
	sbc	hl,de
	jp	z,i_82	;EOS
i_84
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	cp	5
	jp	nz,i_85	;
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	a,229
	ld	l,a		;l_sxt
	rla
	sbc	a
	ld	h,a
	pop	de
	ld	a,l
	ld	(de),a
i_85
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,9
	and	a
	sbc	hl,de
	jp	nz,i_86	;
	ld	hl,7	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,9
	add	hl,bc
	push	hl
	ld	hl,3	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	pop	de
	add	hl,de
	ld	(hl),46
i_86
	ld	hl,7	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,9
	add	hl,bc
	push	hl
	ld	hl,3	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	pop	de
	add	hl,de
	push	hl
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	pop	de
	ld	a,l
	ld	(de),a
	jp	i_82	;EOS
i_83
	ld	hl,7	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,9
	add	hl,bc
	ex	de,hl
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	d,h
	ld	e,l
	xor	a
	ld	(de),a
	ld	hl,7	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,8
	add	hl,bc
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,11
	add	hl,bc
	ld	a,(hl)
	and	63
	ld	l,a
	pop	de
	ld	(de),a
	ld	hl,7	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,28
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,7	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,22
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,7	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,4
	add	hl,bc
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	inc	sp
	pop	bc
	pop	bc
	ret


	C_LINE	2887,"./ff.c::get_fileinfo::0::38"

; Function create_name flags 0x00000200 __smallc 
; const int FRESULTcreate_name(struct 0__anonstruct_237_3 DIR* dp, const char TCHAR* * path)
; parameter 'const char TCHAR* * path' at sp+2 size(2)
; parameter 'struct 0__anonstruct_237_3 DIR* dp' at sp+4 size(2)
	C_LINE	2891,"./ff.c::create_name::0::38"
@_create_name
	ld	hl,65524	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,14	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	bc
	push	hl
	ld	hl,8	;const
	add	hl,sp
	push	hl
	ld	hl,18	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,28
	add	hl,bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	e,32
	ld	b,11
i_87
	ld	(hl),e
	inc	hl
	djnz	i_87
	pop	hl
	ld	hl,4	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	de,0	;const
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ex	de,hl
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,6	;const
	add	hl,sp
	ld	(hl),8
	inc	hl
	ld	(hl),0
	pop	de
	push	de
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	ld	de,46
	and	a
	sbc	hl,de
	jp	nz,i_88	;
i_89
	ld	hl,11	;const
	add	hl,sp
	push	hl
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
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
	pop	de
	add	hl,de
	pop	de
	ld	a,(hl)
	ld	(de),a
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	de,46
	and	a
	sbc	hl,de
	scf
	jr	nz,$+3
	ccf
	jp	c,i_93	;
	ld	hl,4	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,3
	call	l_uge
	jp	c,i_90	;EOS
i_92
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,4	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	pop	de
	add	hl,de
	ex	de,hl
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)
	ld	(de),a
	jp	i_89	;EOS
i_90
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	de,47
	and	a
	sbc	hl,de
	jp	z,i_96	;
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	de,92
	and	a
	sbc	hl,de
	jp	z,i_96	;
	ld	hl,0	;const
	jr	i_97
i_96
	ld	hl,1	;const
i_97
	call	l_lneg
	jp	nc,i_98	;
	ld	hl,11	;const
	add	hl,sp
	ld	e,(hl)
	ld	d,0
	ld	hl,32	;const
	and	a
	sbc	hl,de
	jp	nc,i_98	;
i_99_i_98
	ld	hl,12	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,6	;const
	ret


i_95
	ld	hl,14	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,2	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,8	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,11
	add	hl,bc
	push	hl
	ld	hl,13	;const
	add	hl,sp
	ld	e,(hl)
	ld	d,0
	ld	hl,32	;const
	and	a
	sbc	hl,de
	ccf
	jp	nc,i_100	;
	ld	hl,36	;const
	jp	i_101	;
i_100
	ld	hl,32	;const
i_101
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,12	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,0	;const
	ret


i_102
	ld	hl,11	;const
	add	hl,sp
	push	hl
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
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
	pop	de
	add	hl,de
	pop	de
	ld	a,(hl)
	ld	(de),a
	ld	hl,11	;const
	add	hl,sp
	ld	e,(hl)
	ld	d,0
	ld	hl,32	;const
	and	a
	sbc	hl,de
	ccf
	jp	c,i_103	;EOS
i_105
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	de,47
	and	a
	sbc	hl,de
	jp	z,i_107	;
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	de,92
	and	a
	sbc	hl,de
	jp	nz,i_106	;
i_109
	pop	de
	push	de
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,(hl)
	cp	47
	jp	z,i_111	;
	pop	de
	push	de
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,(hl)
	cp	92
	jp	nz,i_110	;
i_111
	ld	hl,4	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	jp	i_109	;EOS
i_106
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	de,46
	and	a
	sbc	hl,de
	jp	z,i_114	;
	ld	hl,2	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_uge
	jp	nc,i_113	;
i_114
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,11
	and	a
	sbc	hl,de
	jp	z,i_117	;
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	de,46
	and	a
	sbc	hl,de
	scf
	jr	nz,$+3
	ccf
	jp	nc,i_116	;
i_117
	ld	hl,12	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,6	;const
	ret


i_116
	ld	hl,8	;const
	pop	de
	pop	bc
	push	hl
	push	de
	ld	hl,6	;const
	add	hl,sp
	ld	(hl),11
	inc	hl
	ld	(hl),0
	jp	i_102	;EOS
i_113
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ld	a,l
	sub	128
	ccf
	jp	nc,i_119	;
	ld	hl,11	;const
	add	hl,sp
	push	hl
	ld	hl,_ExCvt
	push	hl
	ld	hl,15	;const
	add	hl,sp
	ld	a,(hl)
	and	127
	ld	l,a
	ld	h,0
	pop	de
	add	hl,de
	ld	a,(hl)
	pop	de
	ld	(de),a
i_119
	ld	hl,11	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_dbc_1st
	pop	bc
	ld	a,h
	or	l
	jp	z,i_120	;
	ld	hl,10	;const
	add	hl,sp
	push	hl
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
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
	pop	de
	add	hl,de
	pop	de
	ld	a,(hl)
	ld	(de),a
	ld	hl,10	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_dbc_2nd
	pop	bc
	call	l_lneg
	jp	c,i_122	;
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	dec	hl
	pop	de
	call	l_uge
	jp	nc,i_121	;
i_122
	ld	hl,12	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,6	;const
	ret


i_121
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,4	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	pop	de
	add	hl,de
	ex	de,hl
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)
	ld	(de),a
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,4	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	pop	de
	add	hl,de
	ex	de,hl
	ld	hl,10	;const
	add	hl,sp
	ld	a,(hl)
	ld	(de),a
	jp	i_124	;EOS
i_120
	ld	hl,i_1+0
	push	hl
	ld	hl,13	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	ex	de,hl
	pop	hl
i_126
	ld	a,(hl)
	cp	e
	jr	z,i_127
	and	a
	inc	hl
	jr	nz,i_126
	ld	h,a
	ld	l,h
i_127
	ld	a,h
	or	l
	jp	z,i_125	;
	ld	hl,12	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,6	;const
	ret


i_125
	ld	hl,11	;const
	add	hl,sp
	ld	a,96
	cp	(hl)
	jp	nc,i_129	;
	ld	hl,11	;const
	add	hl,sp
	ld	e,(hl)
	ld	d,0
	ld	hl,122	;const
	and	a
	sbc	hl,de
	ccf
	jp	nc,i_129	;
i_130_i_129
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)
	add	a,-32
	ld	(hl),a
i_128
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,4	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	pop	de
	add	hl,de
	ex	de,hl
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)
	ld	(de),a
	jp	i_102	;EOS
i_103
	ld	hl,14	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,2	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_131	;
	ld	hl,12	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,6	;const
	ret


i_131
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	cp	229
	jp	nz,i_132	;
	ld	hl,8	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,5	;const
	ld	a,l
	ld	(de),a
i_132
	ld	hl,8	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,11
	add	hl,bc
	push	hl
	ld	hl,13	;const
	add	hl,sp
	ld	e,(hl)
	ld	d,0
	ld	hl,32	;const
	and	a
	sbc	hl,de
	ccf
	jp	c,i_133	;
	ld	hl,2	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	ld	de,32
	ex	de,hl
	call	l_le
	jp	c,i_133	;
	ld	hl,0	;const
	jr	i_134
i_133
	ld	hl,1	;const
i_134
	jp	nc,i_135	;
	ld	hl,4	;const
	jp	i_136	;
i_135
	ld	hl,0	;const
i_136
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,12	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,0	;const
	ret


	C_LINE	3091,"./ff.c::create_name::0::47"

; Function follow_path flags 0x00000200 __smallc 
; const int FRESULTfollow_path(struct 0__anonstruct_237_3 DIR* dp, const char TCHAR* path)
; parameter 'const char TCHAR* path' at sp+2 size(2)
; parameter 'struct 0__anonstruct_237_3 DIR* dp' at sp+4 size(2)
	C_LINE	3095,"./ff.c::follow_path::0::47"
@_follow_path
	push	bc
	dec	sp
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	cp	47
	jp	z,i_138	;
	cp	92
	jp	z,i_138	;
	ld	hl,0	;const
	jr	i_139
i_138
	ld	hl,1	;const
i_139
	call	l_lneg
	jp	nc,i_140	;
	jp	i_141	;EOS
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	push	hl
	ld	hl,0	;const
	ld	a,h
	or	l
	jp	z,i_142	;
	ld	hl,32	;const
	jp	i_143	;
i_142
	ld	hl,33	;const
i_143
	pop	de
	ex	de,hl
	and	a
	sbc	hl,de
	ccf
	jp	nc,i_140	;
i_145_i_140
	ld	hl,9	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	pop	de
	push	de
	push	hl
	ex	de,hl
	ld	bc,20
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
	jp	i_146	;EOS
i_147
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	cp	47
	jp	z,i_149	;
	cp	92
	jp	nz,i_148	;
i_149
	ld	hl,7	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	jp	i_147	;EOS
i_148
	ld	hl,9	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	pop	bc
	call	l_plong
i_146
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	cp	32
	jp	nc,i_151	;
	ld	hl,9	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,39
	add	hl,bc
	ld	(hl),128
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	hl,11	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_dir_sdi
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	jp	i_152	;EOS
i_153
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	hl,11	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,11	;const
	add	hl,sp
	push	hl
	call	_create_name
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_154	;EOS
i_156
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_dir_find
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,2	;const
	add	hl,sp
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,39
	add	hl,bc
	ld	a,(hl)
	pop	de
	ld	(de),a
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_157	;
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,4
	and	a
	sbc	hl,de
	jp	nz,i_158	;
	ld	hl,2	;const
	ld	a,h
	or	l
	jp	z,i_160	;
	ld	hl,2	;const
	add	hl,sp
	ld	a,32
	and	(hl)
	jp	z,i_160	;
i_161_i_160
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	and	4
	jp	z,i_153	;EOS
i_162
	ld	hl,9	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,39
	add	hl,bc
	ld	(hl),128
	ld	hl,3	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_163	;EOS
i_159
	ld	hl,2	;const
	add	hl,sp
	bit	2,(hl)
	jp	nz,i_164	;
	ld	hl,3	;const
	add	hl,sp
	ld	(hl),5
	inc	hl
	ld	(hl),0
	jp	i_154	;EOS
i_157
	ld	hl,2	;const
	add	hl,sp
	ld	a,(hl)
	and	4
	ld	l,a
	ld	h,0
	and	a
	jp	nz,i_154	;EOS
i_165
	ld	hl,9	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,4
	add	hl,bc
	bit	4,(hl)
	jp	nz,i_166	;
	ld	hl,3	;const
	add	hl,sp
	ld	(hl),5
	inc	hl
	ld	(hl),0
	jp	i_154	;EOS
i_166
	ld	hl,9	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	pop	de
	push	de
	push	hl
	ex	de,hl
	push	hl
	ld	bc,52
	add	hl,bc
	push	hl
	ld	hl,15	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,14
	add	hl,bc
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mod_u
	exx
	pop	hl
	ld	a,h
	rla
	sbc	a
	ld	e,a
	ld	d,a
	push	de
	push	hl
	exx
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	push	hl
	call	_ld_clust
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
	jp	i_153	;EOS
i_152
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


	C_LINE	3178,"./ff.c::follow_path::0::59"

; Function get_ldnumber flags 0x00000200 __smallc 
; int get_ldnumber(const char TCHAR* * path)
; parameter 'const char TCHAR* * path' at sp+2 size(2)
	C_LINE	3181,"./ff.c::get_ldnumber::0::59"
@_get_ldnumber
	push	bc
	push	bc
	push	bc
	dec	sp
	ld	hl,65535	;const
	push	hl
	ld	hl,5	;const
	add	hl,sp
	push	hl
	ld	hl,9	;const
	add	hl,sp
	push	hl
	ld	hl,15	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_lneg
	jp	nc,i_167	;
	pop	hl
	push	hl
	inc	sp
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_170
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,7	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	ld	a,(hl)
	pop	de
	ld	(de),a
i_168
	ld	hl,4	;const
	call	l_gcharspsp	;
	ld	hl,0	;const
	ld	a,h
	or	l
	jp	z,i_171	;
	ld	hl,32	;const
	jp	i_172	;
i_171
	ld	hl,33	;const
i_172
	pop	de
	ex	de,hl
	and	a
	sbc	hl,de
	ccf
	jp	nc,i_173	;
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)
	cp	58
	scf
	jr	nz,$+3
	ccf
	jp	nc,i_173	;
	jp	i_170	;EOS
i_169
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)
	cp	58
	jp	nz,i_175	;
	ld	hl,1	;const
	pop	de
	pop	bc
	push	hl
	push	de
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	ld	de,48
	ex	de,hl
	call	l_ge
	jp	nc,i_177	;
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	ld	de,57
	ex	de,hl
	call	l_le
	jp	nc,i_177	;
i_178_i_177
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	ex	de,hl
	ld	hl,5	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_eq
	jp	nc,i_179	;
i_180_i_179
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	ld	bc,-48
	add	hl,bc
	pop	de
	pop	bc
	push	hl
	push	de
i_176
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,l
	sub	1
	ld	a,h
	rla
	ccf
	rra
	sbc	128
	jp	nc,i_181	;
	pop	bc
	pop	hl
	push	hl
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,5	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_181
	pop	hl
	push	hl
	inc	sp
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_175
	ld	hl,(_CurrVol)
	ld	h,0
	pop	bc
	push	hl
	inc	sp
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


	C_LINE	3332,"./ff.c::get_ldnumber::0::64"

; Function check_fs flags 0x00000200 __smallc 
; unsigned int UINTcheck_fs(struct 0__anonstruct_145_0 FATFS* fs, unsigned long sect)
; parameter 'unsigned long sect' at sp+2 size(4)
; parameter 'struct 0__anonstruct_145_0 FATFS* fs' at sp+6 size(2)
	C_LINE	3336,"./ff.c::check_fs::0::64"
@_check_fs
	push	bc
	push	bc
	dec	sp
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,4
	add	hl,bc
	ld	(hl),0
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,48
	add	hl,bc
	ld	(hl),255
	inc	hl
	ld	(hl),255
	inc	hl
	ld	(hl),255
	inc	hl
	ld	(hl),255
	ld	hl,11	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,9	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_move_window
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_182	;
	ld	hl,4	;const
	inc	sp
	pop	bc
	pop	bc
	ret


i_182
	ld	hl,1	;const
	add	hl,sp
	push	hl
	ld	hl,13	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,562
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,13	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,52
	add	hl,bc
	ld	a,(hl)
	pop	de
	ld	(de),a
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	cp	235
	jp	z,i_184	;
	cp	233
	jp	z,i_184	;
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	cp	232
	jp	nz,i_183	;
i_184
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,43605
	and	a
	sbc	hl,de
	jp	nz,i_187	;
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,134
	add	hl,bc
	push	hl
	ld	hl,i_1+15
	push	hl
	ld	hl,8	;const
	push	hl
	call	memcmp_callee
	call	l_lneg
	jp	nc,i_187	;
i_188_i_187
	ld	hl,0	;const
	inc	sp
	pop	bc
	pop	bc
	ret


i_186
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	hl,13	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,63
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,13	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,65
	add	hl,bc
	ld	a,(hl)
	pop	de
	ld	(de),a
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	dec	hl
	pop	de
	call	l_and
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_190	;
	ld	hl,3	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,512
	call	l_uge
	jp	nc,i_190	;
	ld	hl,3	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,512
	and	a
	sbc	hl,de
	ccf
	jp	nc,i_190	;
	pop	hl
	push	hl
	ld	a,l
	and	a
	jp	z,i_190	;
	pop	hl
	push	hl
	ld	h,0
	push	hl
	ld	hl,2	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	dec	hl
	pop	de
	call	l_and
	ld	a,l
	and	a
	jp	nz,i_190	;
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,66
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	a,h
	or	l
	jp	z,i_190	;
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,68
	add	hl,bc
	ld	l,(hl)
	ld	h,0
	dec	hl
	ld	de,1
	ex	de,hl
	and	a
	sbc	hl,de
	ccf
	jp	nc,i_190	;
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,69
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	a,h
	or	l
	jp	z,i_190	;
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,71
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	de,128
	ex	de,hl
	call	l_uge
	jp	c,i_191	;
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,84
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	push	de
	push	hl
	ld	hl,0	;const
	ld	de,1
	call	l_long_uge
	jp	nc,i_190	;
i_191
	ld	hl,11	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,74
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	a,h
	or	l
	jp	z,i_190	;
i_193_i_190
	ld	hl,0	;const
	inc	sp
	pop	bc
	pop	bc
	ret


i_183
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,43605
	and	a
	sbc	hl,de
	jp	nz,i_194	;
	ld	hl,2	;const
	jp	i_195	;
i_194
	ld	hl,3	;const
i_195
	inc	sp
	pop	bc
	pop	bc
	ret


	C_LINE	3372,"./ff.c::check_fs::0::68"

; Function find_volume flags 0x00000200 __smallc 
; unsigned int UINTfind_volume(struct 0__anonstruct_145_0 FATFS* fs, unsigned int part)
; parameter 'unsigned int part' at sp+2 size(2)
; parameter 'struct 0__anonstruct_145_0 FATFS* fs' at sp+4 size(2)
	C_LINE	3376,"./ff.c::find_volume::0::68"
@_find_volume
	ld	hl,65516	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,18	;const
	add	hl,sp
	push	hl
	ld	hl,26	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_check_fs
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,18	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,2
	and	a
	sbc	hl,de
	scf
	jr	nz,$+3
	ccf
	jp	nc,i_197	;
	ld	hl,18	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,3
	call	l_uge
	jp	c,i_198	;
	ld	hl,22	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_197	;
i_200_i_197
	ld	hl,18	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	exx
	ld	hl,20	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret
	ld	hl,22	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,4
	and	a
	sbc	hl,de
	jp	nc,i_202	;
i_203_i_202
	ld	hl,20	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,3	;const
	ret


i_201
	ld	hl,16	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_206	;EOS
i_204
	ld	hl,16	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
i_206
	ld	hl,16	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,4
	and	a
	sbc	hl,de
	jp	nc,i_205	;
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,18	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	push	hl
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,498
	add	hl,bc
	push	hl
	ld	hl,20	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,hl
	add	hl,hl
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	ld	bc,8
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	pop	bc
	call	l_plong
	jp	i_204	;EOS
i_205
	ld	hl,16	;const
	add	hl,sp
	push	hl
	ld	hl,24	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_207	;
	ld	hl,24	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	dec	hl
	jp	i_208	;
i_207
	ld	hl,0	;const
i_208
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_211
	ld	hl,18	;const
	add	hl,sp
	push	hl
	ld	hl,2	;const
	add	hl,sp
	push	hl
	ld	hl,20	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	call	l_glong
	ld	a,h
	or	l
	or	d
	or	e
	jp	z,i_212	;
	ld	hl,26	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,22	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,hl
	add	hl,hl
	pop	de
	add	hl,de
	call	l_glong
	push	de
	push	hl
	call	_check_fs
	pop	bc
	pop	bc
	pop	bc
	jp	i_213	;
i_212
	ld	hl,3	;const
i_213
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_209
	ld	hl,22	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_214	;
	ld	hl,18	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,2
	call	l_uge
	jp	nc,i_214	;
	ld	hl,16	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	ld	de,4
	and	a
	sbc	hl,de
	jp	nc,i_214	;
	jp	i_211	;EOS
i_210
	ld	hl,18	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	exx
	ld	hl,20	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret


	C_LINE	3426,"./ff.c::find_volume::0::71"

; Function mount_volume flags 0x00000200 __smallc 
; const int FRESULTmount_volume(const char TCHAR* * path, struct 0__anonstruct_145_0 FATFS* * rfs, unsigned char mode)
; parameter 'unsigned char mode' at sp+2 size(1)
; parameter 'struct 0__anonstruct_145_0 FATFS* * rfs' at sp+4 size(2)
; parameter 'const char TCHAR* * path' at sp+6 size(2)
	C_LINE	3431,"./ff.c::mount_volume::0::71"
@_mount_volume
	ld	hl,65503	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,37	;const
	add	hl,sp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	ld	hl,31	;const
	add	hl,sp
	push	hl
	ld	hl,41	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_get_ldnumber
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,31	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,h
	rla
	jp	nc,i_216	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,11	;const
	ret


i_216
	ld	hl,29	;const
	add	hl,sp
	push	hl
	ld	hl,_FatFs
	push	hl
	ld	hl,35	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,hl
	pop	de
	add	hl,de
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,29	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_lneg
	jp	nc,i_217	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,12	;const
	ret


i_217
	ld	hl,37	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,29	;const
	add	hl,sp
	ldi
	ldi
	ld	hl,35	;const
	add	hl,sp
	push	hl
	ld	l,(hl)
	ld	h,0
	res	0,l
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,29	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	and	a
	jp	z,i_218	;
	ld	hl,28	;const
	add	hl,sp
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	l,(hl)
	ld	h,0
	call	disk_status
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,28	;const
	add	hl,sp
	ld	a,(hl)
	and	1
	jp	nz,i_219	;
	jp	i_221	;EOS
	ld	hl,35	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_221	;
	ld	hl,28	;const
	add	hl,sp
	ld	a,4
	and	(hl)
	jp	z,i_221	;
i_222_i_221
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,10	;const
	ret


i_220
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,0	;const
	ret


i_218
	ld	hl,29	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	xor	a
	ld	(de),a
	ld	hl,28	;const
	add	hl,sp
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	l,(hl)
	ld	h,0
	call	disk_initialize
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,28	;const
	add	hl,sp
	ld	a,1
	and	(hl)
	jp	z,i_223	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,3	;const	= FR_NOT_READY
	ret
	ld	hl,35	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_225	;
	ld	hl,28	;const
	add	hl,sp
	ld	a,4
	and	(hl)
	jp	z,i_225	;
i_226_i_225
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,10	;const	= FR_WRITE_PROTECTED
	ret


i_224
	ld	hl,29	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,0	;const	; LD num
	push	hl
	call	_find_volume
	pop	bc
	pop	bc
	pop	bc
	push	hl
	ld	de,4
	and	a
	sbc	hl,de
	jp	nz,i_227	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,1	;const
	ret


i_227
	pop	hl
	push	hl
	ld	de,2
	ex	de,hl
	call	l_uge
	jp	nc,i_228	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_228
	ld	hl,24	;const
	add	hl,sp
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,48
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,63
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	de,512
	and	a
	sbc	hl,de
	scf
	jr	nz,$+3
	ccf
	jp	nc,i_229	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_229
	ld	hl,12	;const
	add	hl,sp
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,74
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	de,0
	pop	bc
	call	l_plong
	ld	hl,12	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_230	;
	ld	hl,12	;const
	add	hl,sp
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,88
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	pop	bc
	call	l_plong
i_230
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,28
	add	hl,bc
	push	hl
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,29	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	inc	hl
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,68
	add	hl,bc
	ld	a,(hl)
	pop	de
	ld	(de),a
	ld	hl,29	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	cp	1
	jp	z,i_232	;
	ld	hl,29	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	cp	2
	jp	z,i_232	;
i_233_i_232
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_231
	ld	hl,12	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,35	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,0
	ld	de,0
	call	l_long_mult_u
	pop	bc
	call	l_plong
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,65
	add	hl,bc
	pop	de
	ex	de,hl
	ld	a,(de)
	ld	(hl),a
	inc	hl
	ld	(hl),0
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_235	;
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	dec	hl
	pop	de
	call	l_and
	ld	a,h
	or	l
	jr	z,i_236
i_235
	ld	hl,1	;const
i_236
	ld	a,h
	or	l
	jp	z,i_234	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_234
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,8
	add	hl,bc
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,69
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,8
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	and	15
	jp	z,i_237	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_237
	ld	hl,20	;const
	add	hl,sp
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,71
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	de,0
	pop	bc
	call	l_plong
	ld	hl,20	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_238	;
	ld	hl,20	;const
	add	hl,sp
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,84
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	pop	bc
	call	l_plong
i_238
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,66
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_239	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_239
	ld	hl,16	;const
	add	hl,sp
	push	hl
	ld	hl,4	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,16	;const
	add	hl,sp
	call	l_glong
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
	push	de
	push	hl
	ld	hl,35	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,8
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,4
	call	l_asr_u_hl_by_e
	ld	de,0
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	ld	hl,20	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,20	;const
	add	hl,sp
	call	l_glong
	call	l_long_ult
	jp	nc,i_240	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_240
	ld	hl,8	;const
	add	hl,sp
	push	hl
	ld	hl,22	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,22	;const
	add	hl,sp
	call	l_glong
	ld	c,l
	ld	b,h
	pop	hl
	and	a
	sbc	hl,bc
	ex	de,hl
	ld	c,l
	ld	b,h
	pop	hl
	sbc	hl,bc
	ex	de,hl
	push	de
	push	hl
	ld	hl,35	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,0
	call	l_long_div_u
	pop	bc
	call	l_plong
	ld	hl,8	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_241	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_241
	ld	hl,0	;const
	pop	bc
	push	hl
	ld	hl,8	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,65525	;const
	ld	de,4095
	call	l_long_ule
	jp	nc,i_242	;
	ld	hl,3	;const
	pop	bc
	push	hl
i_242
	ld	hl,8	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,65525	;const
	ld	de,0
	call	l_long_ule
	jp	nc,i_243	;
	ld	hl,2	;const
	pop	bc
	push	hl
i_243
	ld	hl,8	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,4085	;const
	ld	de,0
	call	l_long_ule
	jp	nc,i_244	;
	ld	hl,1	;const
	pop	bc
	push	hl
i_244
	pop	hl
	push	hl
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_245	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_245
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	push	hl
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	ld	bc,2
	add	hl,bc
	jr	nc,$+3
	inc	de
	pop	bc
	call	l_plong
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,32
	add	hl,bc
	push	hl
	ld	hl,26	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,36
	add	hl,bc
	push	hl
	ld	hl,26	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,0
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,44
	add	hl,bc
	push	hl
	ld	hl,26	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,22	;const
	add	hl,sp
	call	l_glong
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	pop	hl
	push	hl
	ld	de,3
	and	a
	sbc	hl,de
	jp	nz,i_246	;
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,94
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	a,h
	or	l
	jp	z,i_247	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_247
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,8
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_248	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_248
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,40
	add	hl,bc
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,96
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	add	hl,hl
	rl	e
	rl	d
	add	hl,hl
	rl	e
	rl	d
	pop	bc
	call	l_plong
	jp	i_249	;EOS
i_246
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,8
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_250	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_250
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,40
	add	hl,bc
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,36
	add	hl,bc
	call	l_glong2sp
	ld	hl,18	;const
	add	hl,sp
	call	l_glong
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	ld	hl,4	;const
	add	hl,sp
	pop	de
	push	de
	push	hl
	ex	de,hl
	ld	de,2
	and	a
	sbc	hl,de
	jp	nz,i_251	;
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	add	hl,hl
	rl	e
	rl	d
	jp	i_252	;
i_251
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	push	de
	push	hl
	add	hl,hl
	rl	e
	rl	d
	pop	bc
	add	hl,bc
	pop	bc
	ex	de,hl
	adc	hl,bc
	ex	de,hl
	srl	d
	rr	e
	rr	h
	rr	l
	push	de
	push	hl
	ld	hl,35	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	ld	a,l
	and	1
	ld	l,a
	ld	h,0
	ld	de,0
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
i_252
	pop	bc
	call	l_plong
i_249
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,28
	add	hl,bc
	call	l_glong2sp
	ld	hl,8	;const
	add	hl,sp
	call	l_glong
	ld	bc,511
	add	hl,bc
	jr	nc,$+3
	inc	de
	push	de
	push	hl
	ld	hl,512	;const
	ld	de,0
	call	l_long_div_u
	call	l_long_ult
	jp	nc,i_253	;
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	ret


i_253
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,12
	add	hl,bc
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	ld	b,h
	ld	c,l
	ld	hl,65535	;const
	ld	de,65535
	call	l_plong
	pop	bc
	call	l_plong
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,5
	add	hl,bc
	ld	(hl),128
	pop	hl
	push	hl
	ld	de,3
	and	a
	sbc	hl,de
	jp	nz,i_255	;
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,100
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	dec	hl
	ld	a,h
	or	l
	jp	nz,i_255	;
	ld	hl,29	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,26	;const
	add	hl,sp
	call	l_glong
	inc	hl
	ld	a,h
	or	l
	jr	nz,$+3
	inc	de
	push	de
	push	hl
	call	_move_window
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_255	;
i_256_i_255
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,5
	add	hl,bc
	ld	(hl),0
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,562
	add	hl,bc
	push	hl
	call	_ld_word
	pop	bc
	ld	de,43605
	and	a
	sbc	hl,de
	jp	nz,i_258	;
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,52
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	push	de
	push	hl
	ld	hl,21074	;const
	ld	de,16737
	call	l_long_eq
	jp	nc,i_258	;
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,536
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	push	de
	push	hl
	ld	hl,29298	;const
	ld	de,24897
	call	l_long_eq
	jp	nc,i_258	;
i_259_i_258
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,540
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,12
	add	hl,bc
	push	hl
	ld	hl,31	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,544
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	pop	bc
	call	l_plong
i_254
	ld	hl,29	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	push	hl
	ld	hl,(_Fsid)
	inc	hl
	ld	(_Fsid),hl
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,29	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,20
	add	hl,bc
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	inc	hl
	ld	(hl),a
	inc	hl
	ld	(hl),a
	ld	hl,33	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,0	;const
	ret


	C_LINE	3650,"./ff.c::mount_volume::0::82"

; Function validate flags 0x00000200 __smallc 
; const int FRESULTvalidate(struct 0__anonstruct_191_1 FFOBJID* obj, struct 0__anonstruct_145_0 FATFS* * rfs)
; parameter 'struct 0__anonstruct_145_0 FATFS* * rfs' at sp+2 size(2)
; parameter 'struct 0__anonstruct_191_1 FFOBJID* obj' at sp+4 size(2)
	C_LINE	3654,"./ff.c::validate::0::82"
@_validate
	ld	hl,9	;const
	push	hl
	ld	l,6	
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_261	;
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_261	;
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	and	a
	jp	z,i_261	;
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	call	l_eq
	jp	nc,i_261	;
i_262_i_261
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	l,(hl)
	ld	h,0
	call	disk_status
	ld	a,l
	and	1
	jp	nz,i_263	;
	ld	hl,0	;const
	pop	bc
	push	hl
i_260
	ld	hl,4	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_264	;
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	jp	i_265	;
i_264
	ld	hl,0	;const
i_265
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	pop	hl
	ret


	C_LINE	3694,"./ff.c::validate::0::85"

; Function f_mount flags 0x00000200 __smallc 
; const int FRESULTf_mount(struct 0__anonstruct_145_0 FATFS* fs, const char TCHAR* path, unsigned char opt)
; parameter 'unsigned char opt' at sp+2 size(1)
; parameter 'const char TCHAR* path' at sp+4 size(2)
; parameter 'struct 0__anonstruct_145_0 FATFS* fs' at sp+6 size(2)
	C_LINE	3699,"./ff.c::f_mount::0::85"
@_f_mount
	push	bc
	push	bc
	push	bc
	ld	hl,10	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,2	;const
	add	hl,sp
	push	hl
	call	_get_ldnumber
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,h
	rla
	jp	nc,i_266	;
	ld	hl,11	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_266
	ld	hl,6	;const
	add	hl,sp
	push	hl
	ld	hl,_FatFs
	push	hl
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,hl
	pop	de
	add	hl,de
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_267	;
	ld	hl,_FatFs
	push	hl
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,hl
	pop	de
	add	hl,de
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	ld	hl,6	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,0	;const
	ld	a,l
	ld	(de),a
i_267
	ld	hl,14	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_268	;
	ld	hl,14	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	ex	de,hl
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	(de),a
	ld	hl,14	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	xor	a
	ld	(de),a
	ld	hl,_FatFs
	push	hl
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,hl
	pop	de
	add	hl,de
	ex	de,hl
	ld	hl,14	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_268
	ld	hl,10	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	nz,i_269	;
	ld	hl,0	;const
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


i_269
	ld	hl,12	;const
	add	hl,sp
	push	hl
	ld	hl,16	;const
	add	hl,sp
	push	hl
	ld	hl,0	;const
	push	hl
	call	_mount_volume
	pop	bc
	pop	bc
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


	C_LINE	3754,"./ff.c::f_mount::0::88"

; Function f_open flags 0x00000200 __smallc 
; const int FRESULTf_open(struct 0__anonstruct_214_2 FIL* fp, const char TCHAR* path, unsigned char mode)
; parameter 'unsigned char mode' at sp+2 size(1)
; parameter 'const char TCHAR* path' at sp+4 size(2)
; parameter 'struct 0__anonstruct_214_2 FIL* fp' at sp+6 size(2)
	C_LINE	3759,"./ff.c::f_open::0::88"
@_f_open
	ld	hl,65492	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,50	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_lneg
	jp	nc,i_270	;
	ld	hl,44	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,9	;const
	ret


i_270
	ld	hl,46	;const
	add	hl,sp
	push	hl
	ld	l,(hl)
	ld	h,0
	push	hl
	ld	hl,1	;const
	ld	a,h
	or	l
	jp	z,i_271	;
	ld	hl,1	;const
	jp	i_272	;
i_271
	ld	hl,63	;const
i_272
	pop	de
	call	l_and
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,42	;const
	add	hl,sp
	push	hl
	ld	hl,50	;const
	add	hl,sp
	push	hl
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,52	;const
	add	hl,sp
	ld	l,(hl)
	ld	h,0
	push	hl
	call	_mount_volume
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,42	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_273	;
	ld	hl,2	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,42	;const
	add	hl,sp
	push	hl
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,52	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_follow_path
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,42	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_274	;
	ld	hl,13	;const
	add	hl,sp
	ld	a,128
	and	(hl)
	jp	z,i_275	;
	ld	hl,42	;const
	add	hl,sp
	ld	(hl),6
	inc	hl
	ld	(hl),0
	jp	i_276	;EOS
i_275
	ld	hl,6	;const
	add	hl,sp
	ld	a,16
	and	(hl)
	jp	z,i_277	;
	ld	hl,42	;const
	add	hl,sp
	ld	de,4	;const
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ex	de,hl
i_274
	ld	hl,42	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_278	;
	ld	hl,50	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	push	hl
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,32	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_ld_clust
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,50	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	push	hl
	ld	hl,30	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,28
	add	hl,bc
	push	hl
	call	_ld_dword
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,50	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,50	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	pop	de
	push	de
	push	hl
	ex	de,hl
	ld	bc,6
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,50	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,14
	add	hl,bc
	ex	de,hl
	ld	hl,46	;const
	add	hl,sp
	ld	a,(hl)
	ld	(de),a
	ld	hl,50	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	(hl),0
	ld	hl,50	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	inc	hl
	ld	(hl),a
	inc	hl
	ld	(hl),a
	ld	hl,50	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	pop	bc
	call	l_plong
i_273
	ld	hl,42	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_279	;
	ld	hl,50	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,0	;const
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_279
	ld	hl,42	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	exx
	ld	hl,44	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret


	C_LINE	3951,"./ff.c::f_open::0::96"

; Function f_read flags 0x00000200 __smallc 
; const int FRESULTf_read(struct 0__anonstruct_214_2 FIL* fp, void * buff, unsigned int btr, unsigned int UINT* br)
; parameter 'unsigned int UINT* br' at sp+2 size(2)
; parameter 'unsigned int btr' at sp+4 size(2)
; parameter 'void * buff' at sp+6 size(2)
; parameter 'struct 0__anonstruct_214_2 FIL* fp' at sp+8 size(2)
	C_LINE	3957,"./ff.c::f_read::0::96"
@_f_read
	ld	hl,65514	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,28	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,26	;const
	add	hl,sp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	ld	hl,22	;const
	add	hl,sp
	push	hl
	ld	hl,34	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,24	;const
	add	hl,sp
	push	hl
	call	_validate
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,22	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	z,$+3
	scf
	jp	c,i_281	;
	ld	hl,22	;const
	add	hl,sp
	push	hl
	ld	hl,34	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	l,(hl)
	ld	h,0
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	a,h
	or	l
	jp	z,i_280	;
i_281
	ld	hl,22	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	exx
	ld	hl,24	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret


i_280
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,14
	add	hl,bc
	bit	0,(hl)
	jp	nz,i_283	;
	ld	hl,24	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,7	;const
	ret


i_283
	ld	hl,8	;const
	add	hl,sp
	push	hl
	ld	hl,34	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	call	l_glong2sp
	ld	hl,38	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	call	l_glong
	ld	c,l
	ld	b,h
	pop	hl
	and	a
	sbc	hl,bc
	ex	de,hl
	ld	c,l
	ld	b,h
	pop	hl
	sbc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	ld	hl,28	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	exx
	pop	hl
	ld	de,0
	push	de
	push	hl
	exx
	call	l_long_ugt
	jp	nc,i_284	;
	ld	hl,28	;const
	add	hl,sp
	push	hl
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	jp	i_287	;EOS
i_285
	ld	hl,28	;const
	add	hl,sp
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ex	de,hl
	and	a
	sbc	hl,de
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,26	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	pop	de
	push	de
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	pop	bc
	push	hl
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	push	hl
	call	l_glong2sp
	ld	hl,12	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,0
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
i_287
	ld	hl,28	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_286	;
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mod_u
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_288	;
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_div_u
	push	de
	push	hl
	ld	hl,24	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	dec	hl
	ld	de,0
	call	l_long_and
	pop	de
	pop	bc
	push	hl
	push	de
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_289	;
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_290	;
	ld	hl,16	;const
	add	hl,sp
	push	hl
	ld	hl,34	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
	jp	i_291	;EOS
i_290
	ld	hl,16	;const
	add	hl,sp
	push	hl
	ld	hl,34	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	bc,20
	add	hl,bc
	call	l_glong
	push	de
	push	hl
	call	_get_fat
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
i_291
	ld	hl,16	;const
	add	hl,sp
	call	l_glong
	ld	a,l
	sub	2
	ld	a,h
	sbc	0
	ld	a,e
	sbc	0
	ld	a,d
	sbc	0
	jp	nc,i_292	;
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	(hl),2
	ld	hl,24	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,2	;const
	ret


i_292
	ld	hl,16	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,65535	;const
	ld	de,65535
	call	l_long_eq
	jp	nc,i_293	;
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	(hl),1
	ld	hl,24	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,1	;const
	ret


i_293
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,20
	add	hl,bc
	push	hl
	ld	hl,18	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
i_289
	ld	hl,12	;const
	add	hl,sp
	push	hl
	ld	hl,22	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,36	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,20
	add	hl,bc
	call	l_glong
	push	de
	push	hl
	call	_clst2sect
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,12	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_294	;
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	(hl),2
	ld	hl,24	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,2	;const
	ret


i_294
	ld	hl,12	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,0
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,30	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	l,h
	ld	h,0
	srl	l
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_295	;
	ld	hl,2	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	push	hl
	ld	hl,22	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	and	a
	sbc	hl,de
	jp	nc,i_296	;
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,22	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,4	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ex	de,hl
	and	a
	sbc	hl,de
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_296
	ld	hl,20	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	l,(hl)
	ld	h,0
	push	hl
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,16	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,12	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	disk_read
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_297	;
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	(hl),1
	ld	hl,24	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,1	;const
	ret


i_297
	ld	hl,6	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	h,a
	ld	l,0
	add	hl,hl
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	jp	i_285	;EOS
i_295
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	push	hl
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
i_288
	ld	hl,6	;const
	add	hl,sp
	push	hl
	ld	hl,34	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,512
	ex	de,hl
	call	l_div_u
	ld	hl,512
	and	a
	sbc	hl,de
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,6	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,28	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	and	a
	sbc	hl,de
	jp	nc,i_298	;
	ld	hl,6	;const
	add	hl,sp
	ex	de,hl
	ld	hl,28	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_298
	ld	hl,20	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,34	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	push	de
	push	hl
	call	_move_window
	pop	bc
	pop	bc
	pop	bc
	ld	a,h
	or	l
	jp	z,i_299	;
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	(hl),1
	ld	hl,24	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,1	;const
	ret


i_299
	ld	hl,0	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,22	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,52
	add	hl,bc
	push	hl
	ld	hl,36	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mod_u
	exx
	pop	hl
	ld	a,h
	rla
	sbc	a
	ld	e,a
	ld	d,a
	push	de
	push	hl
	exx
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	push	hl
	ld	hl,10	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	memcpy_callee
	jp	i_285	;EOS
i_286
	ld	hl,24	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,0	;const
	ret


	C_LINE	4253,"./ff.c::f_read::0::110"

; Function f_close flags 0x00000200 __smallc 
; const int FRESULTf_close(struct 0__anonstruct_214_2 FIL* fp)
; parameter 'struct 0__anonstruct_214_2 FIL* fp' at sp+2 size(2)
	C_LINE	4256,"./ff.c::f_close::0::110"
@_f_close
	push	bc
	push	bc
	ld	hl,6	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,2	;const
	add	hl,sp
	push	hl
	call	_validate
	pop	bc
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_300	;
	ld	hl,6	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,0	;const
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_300
	pop	bc
	pop	hl
	ret


	C_LINE	4289,"./ff.c::f_close::0::113"

; Function f_chdrive flags 0x00000200 __smallc 
; const int FRESULTf_chdrive(const char TCHAR* path)
; parameter 'const char TCHAR* path' at sp+2 size(2)
	C_LINE	4292,"./ff.c::f_chdrive::0::113"
@_f_chdrive
	push	bc
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	_get_ldnumber
	pop	bc
	pop	bc
	push	hl
	ld	a,h
	rla
	jp	nc,i_301	;
	ld	hl,11	;const
	pop	bc
	ret


i_301
	pop	hl
	push	hl
	ld	a,l
	ld	(_CurrVol),a
	ld	hl,0	;const
	pop	bc
	ret


	C_LINE	4306,"./ff.c::f_chdrive::0::114"

; Function f_chdir flags 0x00000200 __smallc 
; const int FRESULTf_chdir(const char TCHAR* path)
; parameter 'const char TCHAR* path' at sp+2 size(2)
	C_LINE	4309,"./ff.c::f_chdir::0::114"
@_f_chdir
	ld	hl,65492	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,42	;const
	add	hl,sp
	push	hl
	ld	hl,48	;const
	add	hl,sp
	push	hl
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,0	;const
	push	hl
	call	_mount_volume
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,42	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_302	;
	ld	hl,2	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,42	;const
	add	hl,sp
	push	hl
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,50	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_follow_path
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,42	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_303	;
	ld	hl,13	;const
	add	hl,sp
	ld	a,128
	and	(hl)
	jp	z,i_304	;
	pop	hl
	push	hl
	ld	bc,20
	add	hl,bc
	push	hl
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	jp	i_305	;EOS
i_304
	ld	hl,6	;const
	add	hl,sp
	ld	a,16
	and	(hl)
	jp	z,i_306	;
	pop	hl
	push	hl
	ld	bc,20
	add	hl,bc
	push	hl
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,32	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_ld_clust
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
	jp	i_307	;EOS
i_306
	ld	hl,42	;const
	add	hl,sp
	ld	de,5	;const
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ex	de,hl
i_303
	ld	hl,42	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,4
	and	a
	sbc	hl,de
	jp	nz,i_308	;
	ld	hl,42	;const
	add	hl,sp
	ld	de,5	;const
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ex	de,hl
i_302
	ld	hl,42	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	exx
	ld	hl,44	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret


	C_LINE	4368,"./ff.c::f_chdir::0::122"

; Function f_getcwd flags 0x00000200 __smallc 
; const int FRESULTf_getcwd(char TCHAR* buff, unsigned int len)
; parameter 'unsigned int len' at sp+2 size(2)
; parameter 'char TCHAR* buff' at sp+4 size(2)
	C_LINE	4372,"./ff.c::f_getcwd::0::122"
@_f_getcwd
	ld	hl,65484	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,56	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,65514	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,80	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	de
	xor	a
	ld	(de),a
	ld	hl,74	;const
	add	hl,sp
	push	hl
	ld	hl,82	;const
	add	hl,sp
	push	hl
	ld	hl,36	;const
	add	hl,sp
	push	hl
	ld	hl,0	;const
	push	hl
	call	_mount_volume
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_309	;
	ld	hl,34	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,30	;const
	add	hl,sp
	ex	de,hl
	ld	hl,78	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	jp	i_311	;EOS
	ld	hl,32	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	cp	4
	jp	z,i_310	;
i_311
	ld	hl,40	;const
	add	hl,sp
	push	hl
	ld	hl,34	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,20
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
i_313
	ld	hl,24	;const
	add	hl,sp
	push	hl
	ld	hl,42	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	ld	a,d
	or	e
	or	h
	or	l
	jp	z,i_314	;
	ld	hl,74	;const
	add	hl,sp
	push	hl
	ld	hl,36	;const
	add	hl,sp
	push	hl
	ld	hl,32	;const
	ld	de,0
	push	de
	push	hl
	call	_dir_sdi
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_314	;EOS
i_315
	ld	hl,74	;const
	add	hl,sp
	push	hl
	ld	hl,34	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,60	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_move_window
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_314	;EOS
i_316
	ld	hl,40	;const
	add	hl,sp
	push	hl
	ld	hl,34	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,64	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_ld_clust
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,74	;const
	add	hl,sp
	push	hl
	ld	hl,36	;const
	add	hl,sp
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_dir_sdi
	pop	bc
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_314	;EOS
i_320
	ld	hl,74	;const
	add	hl,sp
	push	hl
	ld	hl,36	;const
	add	hl,sp
	push	hl
	ld	hl,0	;const
	push	hl
	call	_dir_read
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_319	;EOS
i_321
	ld	hl,24	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,36	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,66	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_ld_clust
	pop	bc
	pop	bc
	call	l_long_eq
	jp	c,i_319	;EOS
i_322
	ld	hl,74	;const
	add	hl,sp
	push	hl
	ld	hl,36	;const
	add	hl,sp
	push	hl
	ld	hl,0	;const
	push	hl
	call	_dir_next
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_318
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_320	;EOS
i_319
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,4
	and	a
	sbc	hl,de
	jp	nz,i_323	;
	ld	hl,74	;const
	add	hl,sp
	ld	de,2	;const
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ex	de,hl
i_323
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	nz,i_314	;EOS
i_324
	ld	hl,34	;const
	add	hl,sp
	push	hl
	ld	hl,2	;const
	add	hl,sp
	push	hl
	call	_get_fileinfo
	pop	bc
	pop	bc
	ld	hl,28	;const
	add	hl,sp
	xor	a
	ld	(hl),a
	inc	hl
	ld	(hl),a
	jp	i_327	;EOS
i_325
	ld	hl,28	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
i_327
	ld	hl,9	;const
	add	hl,sp
	ex	de,hl
	ld	hl,28	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	or	l
	jp	nz,i_325	;EOS
i_326
	ld	hl,30	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,30	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	pop	de
	ex	de,hl
	and	a
	sbc	hl,de
	jp	nc,i_328	;
	ld	hl,74	;const
	add	hl,sp
	ld	(hl),17
	inc	hl
	ld	(hl),0
	jp	i_314	;EOS
i_329
	ld	hl,28	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_330	;
	ld	hl,80	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,32	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	inc	hl
	cp	255
	jr	nz,$+3
	dec	(hl)
	ld	h,(hl)
	ld	l,a
	pop	de
	add	hl,de
	push	hl
	ld	hl,11	;const
	add	hl,sp
	push	hl
	ld	hl,32	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	inc	hl
	cp	255
	jr	nz,$+3
	dec	(hl)
	ld	h,(hl)
	ld	l,a
	pop	de
	add	hl,de
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	pop	de
	ld	a,l
	ld	(de),a
	jp	i_329	;EOS
i_330
	ld	hl,80	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,32	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	inc	hl
	cp	255
	jr	nz,$+3
	dec	(hl)
	ld	h,(hl)
	ld	l,a
	pop	de
	add	hl,de
	ld	(hl),47
	jp	i_313	;EOS
i_310
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_331	;
	ld	hl,30	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,78	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_eq
	jp	nc,i_332	;
	ld	hl,80	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,32	;const
	add	hl,sp
	dec	(hl)
	ld	a,(hl)
	inc	hl
	cp	255
	jr	nz,$+3
	dec	(hl)
	ld	h,(hl)
	ld	l,a
	pop	de
	add	hl,de
	ld	(hl),47
i_332
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_333	;
i_336
	ld	hl,22	;const
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
	ld	hl,82	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,34	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,$+3
	inc	(hl)
	ld	h,(hl)
	ld	l,a
	dec	hl
	pop	de
	add	hl,de
	ld	a,(hl)
	pop	de
	ld	(de),a
i_334
	ld	hl,30	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,78	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ex	de,hl
	and	a
	sbc	hl,de
	jp	c,i_336	;EOS
i_309
	ld	hl,22	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	de
	xor	a
	ld	(de),a
	ld	hl,74	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	exx
	ld	hl,76	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret


	C_LINE	4470,"./ff.c::f_getcwd::0::131"

; Function f_lseek flags 0x00000200 __smallc 
; const int FRESULTf_lseek(struct 0__anonstruct_214_2 FIL* fp, unsigned long ofs)
; parameter 'unsigned long ofs' at sp+2 size(4)
; parameter 'struct 0__anonstruct_214_2 FIL* fp' at sp+6 size(2)
	C_LINE	4474,"./ff.c::f_lseek::0::131"
@_f_lseek
	ld	hl,65516	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,18	;const
	add	hl,sp
	push	hl
	ld	hl,28	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,20	;const
	add	hl,sp
	push	hl
	call	_validate
	pop	bc
	pop	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,18	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jr	nz,$+3
	scf
	jp	nc,i_337	;
	ld	hl,18	;const
	add	hl,sp
	push	hl
	ld	hl,28	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	l,(hl)
	ld	h,0
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_337
	ld	hl,18	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	h
	jp	z,i_338	;
	ld	hl,18	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	exx
	ld	hl,20	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret


i_338
	ld	hl,22	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,30	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	call	l_glong
	call	l_long_ugt
	jp	nc,i_340	;
	jp	i_341	;EOS
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,14
	add	hl,bc
	bit	1,(hl)
	jp	nz,i_340	;
i_343_i_340
	ld	hl,22	;const
	add	hl,sp
	push	hl
	ld	hl,28	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
i_339
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,28	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	push	hl
	ld	hl,6	;const
	add	hl,sp
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	pop	bc
	call	l_plong
	pop	bc
	call	l_plong
	ld	hl,22	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jp	z,i_344	;
	ld	hl,8	;const
	add	hl,sp
	push	hl
	ld	hl,18	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,0
	push	de
	push	hl
	ld	hl,512	;const
	ld	de,0
	call	l_long_mult
	pop	bc
	call	l_plong
	ld	hl,0	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jp	z,i_346	;
	ld	hl,22	;const
	add	hl,sp
	call	l_glong
	ld	a,h
	or	l
	dec	hl
	jr	nz,$+3
	dec	de
	push	de
	push	hl
	ld	hl,12	;const
	add	hl,sp
	call	l_glong
	call	l_long_div_u
	push	de
	push	hl
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	ld	a,h
	or	l
	dec	hl
	jr	nz,$+3
	dec	de
	push	de
	push	hl
	ld	hl,16	;const
	add	hl,sp
	call	l_glong
	call	l_long_div_u
	call	l_long_uge
	jp	nc,i_346	;
i_347_i_346
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	push	hl
	ld	hl,2	;const
	add	hl,sp
	call	l_glong
	ld	a,h
	or	l
	dec	hl
	jr	nz,$+3
	dec	de
	push	de
	push	hl
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	ld	a,h
	or	l
	dec	hl
	jr	nz,$+3
	dec	de
	call	l_long_com
	call	l_long_and
	pop	bc
	call	l_plong
	ld	hl,22	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,32	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	call	l_glong
	ld	c,l
	ld	b,h
	pop	hl
	and	a
	sbc	hl,bc
	ex	de,hl
	ld	c,l
	ld	b,h
	pop	hl
	sbc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	ld	hl,12	;const
	add	hl,sp
	push	hl
	ld	hl,28	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,20
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
	jp	i_348	;EOS
i_345
	ld	hl,12	;const
	add	hl,sp
	push	hl
	ld	hl,28	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,20
	add	hl,bc
	push	hl
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
i_348
	ld	hl,12	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jp	z,i_349	;
i_350
	ld	hl,22	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,12	;const
	add	hl,sp
	call	l_glong
	call	l_long_ugt
	jp	nc,i_351	;
	ld	hl,22	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	ld	c,l
	ld	b,h
	pop	hl
	and	a
	sbc	hl,bc
	ex	de,hl
	ld	c,l
	ld	b,h
	pop	hl
	sbc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	push	hl
	call	l_glong2sp
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	ld	hl,12	;const
	add	hl,sp
	push	hl
	ld	hl,28	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,16	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_get_fat
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,12	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,65535	;const
	ld	de,65535
	call	l_long_eq
	jp	nc,i_352	;
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	(hl),1
	ld	hl,20	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,1	;const
	ret


i_352
	ld	hl,12	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,1	;const
	ld	de,0
	call	l_long_ule
	jp	c,i_354	;
	ld	hl,12	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,20	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	call	l_long_uge
	jp	nc,i_353	;
i_354
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	(hl),2
	ld	hl,20	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,2	;const
	ret


i_353
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,20
	add	hl,bc
	push	hl
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	jp	i_350	;EOS
i_351
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	push	hl
	call	l_glong2sp
	ld	hl,28	;const
	add	hl,sp
	call	l_glong
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	ld	hl,22	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mod_u
	ld	a,h
	or	l
	or	d
	or	e
	jp	z,i_356	;
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,18	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,16	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_clst2sect
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	or	e
	or	h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_357	;
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,15
	add	hl,bc
	ld	(hl),2
	ld	hl,20	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,2	;const
	ret


i_357
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,28	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_div_u
	pop	bc
	add	hl,bc
	ex	de,hl
	pop	bc
	adc	hl,bc
	ex	de,hl
	pop	bc
	call	l_plong
	jp	i_359	;EOS
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	call	l_glong2sp
	ld	hl,30	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	call	l_glong
	call	l_long_ugt
	jp	nc,i_359	;
i_360_i_359
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,10
	add	hl,bc
	push	hl
	ld	hl,28	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,14
	add	hl,bc
	ld	a,(hl)
	or	64
	ld	(hl),a
i_358
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,16
	add	hl,bc
	call	l_glong2sp
	ld	hl,512	;const
	ld	de,0
	call	l_long_mod_u
	ld	a,h
	or	l
	or	d
	or	e
	jp	z,i_362	;
	ld	hl,4	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,30	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	call	l_glong
	call	l_long_ne
	jp	nc,i_362	;
i_363_i_362
	ld	hl,26	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,24
	add	hl,bc
	push	hl
	ld	hl,6	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
i_361
	ld	hl,18	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	exx
	ld	hl,20	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret


	C_LINE	4634,"./ff.c::f_lseek::0::146"

; Function f_opendir flags 0x00000200 __smallc 
; const int FRESULTf_opendir(struct 0__anonstruct_237_3 DIR* dp, const char TCHAR* path)
; parameter 'const char TCHAR* path' at sp+2 size(2)
; parameter 'struct 0__anonstruct_237_3 DIR* dp' at sp+4 size(2)
	C_LINE	4638,"./ff.c::f_opendir::0::146"
@_f_opendir
	push	bc
	push	bc
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_lneg
	jp	nc,i_364	;
	ld	hl,9	;const
	pop	bc
	pop	bc
	ret


i_364
	ld	hl,6	;const
	add	hl,sp
	push	hl
	ld	hl,2	;const
	add	hl,sp
	push	hl
	ld	hl,0	;const
	push	hl
	call	_mount_volume
	pop	bc
	pop	bc
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_365	;
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_follow_path
	pop	bc
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_366	;
	ld	hl,8	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,39
	add	hl,bc
	bit	7,(hl)
	jp	nz,i_367	;
	ld	hl,8	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,4
	add	hl,bc
	ld	a,16
	and	(hl)
	jp	z,i_368	;
	ld	hl,8	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,6
	add	hl,bc
	push	hl
	ld	hl,2	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,12	;const
	add	hl,sp
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,26
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_ld_clust
	pop	bc
	pop	bc
	pop	bc
	call	l_plong
	jp	i_369	;EOS
i_368
	ld	hl,5	;const
	pop	de
	pop	bc
	push	hl
	push	de
i_367
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_370	;
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	pop	de
	push	de
	push	hl
	ex	de,hl
	ld	bc,6
	add	hl,bc
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_dir_sdi
	pop	bc
	pop	bc
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
i_366
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	de,4
	and	a
	sbc	hl,de
	jp	nz,i_371	;
	ld	hl,5	;const
	pop	de
	pop	bc
	push	hl
	push	de
i_365
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,h
	or	l
	jp	z,i_372	;
	ld	hl,8	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,0	;const
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_372
	pop	bc
	pop	hl
	ret


	C_LINE	4700,"./ff.c::f_opendir::0::154"

; Function f_closedir flags 0x00000200 __smallc 
; const int FRESULTf_closedir(struct 0__anonstruct_237_3 DIR* dp)
; parameter 'struct 0__anonstruct_237_3 DIR* dp' at sp+2 size(2)
	C_LINE	4703,"./ff.c::f_closedir::0::154"
@_f_closedir
	push	bc
	push	bc
	ld	hl,6	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,2	;const
	add	hl,sp
	push	hl
	call	_validate
	pop	bc
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_373	;
	ld	hl,6	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,0	;const
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
i_373
	pop	bc
	pop	hl
	ret


	C_LINE	4730,"./ff.c::f_closedir::0::156"

; Function f_readdir flags 0x00000200 __smallc 
; const int FRESULTf_readdir(struct 0__anonstruct_237_3 DIR* dp, struct 0__anonstruct_256_4 FILINFO* fno)
; parameter 'struct 0__anonstruct_256_4 FILINFO* fno' at sp+2 size(2)
; parameter 'struct 0__anonstruct_237_3 DIR* dp' at sp+4 size(2)
	C_LINE	4734,"./ff.c::f_readdir::0::156"
@_f_readdir
	push	bc
	push	bc
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,2	;const
	add	hl,sp
	push	hl
	call	_validate
	pop	bc
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_374	;
	ld	hl,6	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_lneg
	jp	nc,i_375	;
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	push	de
	push	hl
	call	_dir_sdi
	pop	bc
	pop	bc
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
	jp	i_376	;EOS
i_375
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,0	;const
	push	hl
	call	_dir_read
	pop	bc
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
	ld	de,4
	and	a
	sbc	hl,de
	jp	nz,i_377	;
	pop	de
	pop	bc
	push	hl
	push	de
i_377
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a,h
	or	l
	jr	nz,$+3
	scf
	jp	nc,i_378	;
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,8	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_get_fileinfo
	pop	bc
	pop	bc
	ld	hl,8	;const
	add	hl,sp	;l_gintspsp
	ld	a,(hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,0	;const
	push	hl
	call	_dir_next
	pop	bc
	pop	bc
	pop	de
	pop	bc
	push	hl
	push	de
	ld	de,4
	and	a
	sbc	hl,de
	jp	nz,i_379	;
	pop	de
	pop	bc
	push	hl
	push	de
i_374
	pop	bc
	pop	hl
	ret


; --- Start of Optimiser additions ---
i_6 = i_5
i_14 = i_12
i_57 = i_56
i_56 = i_53
i_72 = i_75
i_88 = i_102
i_107 = i_109
i_141 = i_145_i_140
i_137 = i_147
i_151 = i_153
i_164 = i_163
i_163 = i_158
i_154 = i_152
i_167 = i_170
i_189 = i_183
i_198 = i_200_i_197
i_219 = i_218
i_257 = i_254
i_263 = i_260
i_277 = i_276
i_276 = i_274
i_278 = i_273
i_307 = i_305
i_305 = i_303
i_308 = i_302
i_317 = i_320
i_328 = i_329
i_314 = i_310
i_335 = i_333
i_333 = i_331
i_331 = i_309
i_341 = i_343_i_340
i_356 = i_349
i_349 = i_344
i_369 = i_367
i_370 = i_366
i_371 = i_365
i_379 = i_378
i_378 = i_376
i_376 = i_374
i_34 = i_33
i_55 = i_56
i_68 = i_67
i_69_i_68 = i_64
i_70 = i_63
i_79 = i_78
i_80_i_79 = i_74
i_93 = i_90
i_98 = i_95
i_129 = i_128
i_124 = i_102
i_140 = i_137
i_160 = i_159
i_158 = i_154
i_173 = i_169
i_174_i_173 = i_170
i_177 = i_179
i_179 = i_176
i_187 = i_186
i_190 = i_189
i_197 = i_196
i_196 = i_202
i_202 = i_201
i_214 = i_210
i_215_i_214 = i_211
i_221 = i_220
i_223 = i_225
i_225 = i_224
i_232 = i_231
i_255 = i_254
i_258 = i_257
i_261 = i_260
i_284 = i_287
i_340 = i_339
i_346 = i_345
i_344 = i_359
i_359 = i_358
i_362 = i_361
i_110 = i_103

	SECTION	rodata_compiler
i_1
	defm	"*+,:;<=>[]|"
	defb	34

	defm	"?"
	defb	127

;	defm	""
	defb	0

	defm	"FAT32   "
	defb	0


; --- Start of Static Variables ---
;	phase @__FF_INTERNALS__
	SECTION	bss_compiler
; _FatFs	defs	2
; _Fsid	defs	2
; _CurrVol	defs	1

_FatFs equ @__FF_INTERNALS
_Fsid equ @__FF_INTERNALS + 2
_CurrVol equ @__FF_INTERNALS + 4

;	dephase
	SECTION	code_compiler


; --- Start of Scope Defns ---

	GLOBAL	bcmp
	GLOBAL	bcmp_callee
	GLOBAL	bcopy
	GLOBAL	bcopy_callee
	GLOBAL	bzero
	GLOBAL	bzero_callee
	GLOBAL	index
	GLOBAL	index_callee
	GLOBAL	rindex
	GLOBAL	rindex_callee
	GLOBAL	strset
	GLOBAL	strset_callee
	GLOBAL	strnset
	GLOBAL	strnset_callee
	GLOBAL	rawmemchr
	GLOBAL	rawmemchr_callee
	GLOBAL	_memlwr_
	GLOBAL	_memlwr__callee
	GLOBAL	_memstrcpy_
	GLOBAL	_memstrcpy__callee
	GLOBAL	_memupr_
	GLOBAL	_memupr__callee
	GLOBAL	_strrstrip_
	GLOBAL	ffs
	GLOBAL	ffsl
	GLOBAL	memccpy
	GLOBAL	memccpy_callee
	GLOBAL	memchr
	GLOBAL	memchr_callee
	GLOBAL	memcmp
	GLOBAL	memcmp_callee
	GLOBAL	memcpy
	GLOBAL	memcpy_callee
	GLOBAL	memmem
	GLOBAL	memmem_callee
	GLOBAL	memmove
	GLOBAL	memmove_callee
	GLOBAL	memrchr
	GLOBAL	memrchr_callee
	GLOBAL	memset
	GLOBAL	memset_callee
	GLOBAL	memset_wr
	GLOBAL	memset_wr_callee
	GLOBAL	memswap
	GLOBAL	memswap_callee
	GLOBAL	stpcpy
	GLOBAL	stpcpy_callee
	GLOBAL	stpncpy
	GLOBAL	stpncpy_callee
	GLOBAL	strcasecmp
	GLOBAL	strcasecmp_callee
	GLOBAL	strcat
	GLOBAL	strcat_callee
	GLOBAL	strchr
	GLOBAL	strchr_callee
	GLOBAL	strchrnul
	GLOBAL	strchrnul_callee
	GLOBAL	strcmp
	GLOBAL	strcmp_callee
	GLOBAL	strcoll
	GLOBAL	strcoll_callee
	GLOBAL	strcpy
	GLOBAL	strcpy_callee
	GLOBAL	strcspn
	GLOBAL	strcspn_callee
	GLOBAL	strdup
	GLOBAL	strerror
	GLOBAL	stricmp
	GLOBAL	stricmp_callee
	GLOBAL	strlcat
	GLOBAL	strlcat_callee
	GLOBAL	strlcpy
	GLOBAL	strlcpy_callee
	GLOBAL	strlen
	GLOBAL	strlwr
	GLOBAL	strncasecmp
	GLOBAL	strncasecmp_callee
	GLOBAL	strncat
	GLOBAL	strncat_callee
	GLOBAL	strnchr
	GLOBAL	strnchr_callee
	GLOBAL	strncmp
	GLOBAL	strncmp_callee
	GLOBAL	strncpy
	GLOBAL	strncpy_callee
	GLOBAL	strndup
	GLOBAL	strndup_callee
	GLOBAL	strnicmp
	GLOBAL	strnicmp_callee
	GLOBAL	strnlen
	GLOBAL	strnlen_callee
	GLOBAL	strpbrk
	GLOBAL	strpbrk_callee
	GLOBAL	strrchr
	GLOBAL	strrchr_callee
	GLOBAL	strrcspn
	GLOBAL	strrcspn_callee
	GLOBAL	strrev
	GLOBAL	strrspn
	GLOBAL	strrspn_callee
	GLOBAL	strrstrip
	GLOBAL	strsep
	GLOBAL	strsep_callee
	GLOBAL	strspn
	GLOBAL	strspn_callee
	GLOBAL	strstr
	GLOBAL	strstr_callee
	GLOBAL	strstrip
	GLOBAL	strtok
	GLOBAL	strtok_callee
	GLOBAL	strtok_r
	GLOBAL	strtok_r_callee
	GLOBAL	strupr
	GLOBAL	strxfrm
	GLOBAL	strxfrm_callee
	GLOBAL	strrstr
	GLOBAL	strrstr_callee
	GLOBAL	memopi
	GLOBAL	memopi_callee
	GLOBAL	memopd
	GLOBAL	memopd_callee
	GLOBAL	__builtin_memset
	GLOBAL	__builtin_memcpy
	GLOBAL	__builtin_strcpy
	GLOBAL	__builtin_strchr
	GLOBAL	_f_open
	GLOBAL	_f_close
	GLOBAL	_f_read
	GLOBAL	_f_write
	GLOBAL	_f_lseek
	GLOBAL	_f_truncate
	GLOBAL	_f_sync
	GLOBAL	_f_opendir
	GLOBAL	_f_closedir
	GLOBAL	_f_readdir
	GLOBAL	_f_findfirst
	GLOBAL	_f_findnext
	GLOBAL	_f_mkdir
	GLOBAL	_f_unlink
	GLOBAL	_f_rename
	GLOBAL	_f_stat
	GLOBAL	_f_chmod
	GLOBAL	_f_utime
	GLOBAL	_f_chdir
	GLOBAL	_f_chdrive
	GLOBAL	_f_getcwd
	GLOBAL	_f_getfree
	GLOBAL	_f_getlabel
	GLOBAL	_f_setlabel
	GLOBAL	_f_forward
	GLOBAL	_f_expand
	GLOBAL	_f_mount
	GLOBAL	_f_mkfs
	GLOBAL	_f_fdisk
	GLOBAL	_f_setcp
	GLOBAL	_f_putc
	GLOBAL	_f_puts
	GLOBAL	_f_printf
	GLOBAL	_f_gets
	GLOBAL	disk_initialize
	GLOBAL	disk_status
	GLOBAL	disk_read
	GLOBAL	disk_write
	GLOBAL	disk_ioctl


; --- End of Scope Defns ---


; --- End of Compilation ---