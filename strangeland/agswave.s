.data
export int gdcount = 0
export int gddim = 0
export int gditems = 0
export int sv_count = 0
export int sv = 0
.text

dtrace$1: ; 1 args
	sourceline 1
	thisaddr 0
	ptrstack 8
	memread4 ax
	ptrinit ax
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	farpush ax
	li ax, ">>> %s"
	farpush ax
	li ax, 1
	farpush ax
	setfuncargs 3
	li ax, System::Log^102
	farcall ax
	farsubsp 3
	ptrstack 8
	ptrzerond 
	ret 

shash$1: ; 1 args
	sourceline 3
	thisaddr 43
	sourceline 5
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
label000000000071: ; inside shash$1, ; referenced by 1 spots
	sourceline 7
	li ax, 1
label000000000076: ; inside shash$1, ; referenced by 1 spots
	jzi label000000000247
	sourceline 9
	ptrstack 4
	memread4 ax
	mr cx, ax
	ptrstack 16
	memread4 mar
	add mar, cx
	memread1 ax
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 11
	ptrstack 4
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000000133
	subi sp, 4
	li ax, 0
	jmpi label000000000076
label000000000133: ; inside shash$1, ; referenced by 1 spots
	sourceline 13
	li ax, 16
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	mul bx, ax
	mr ax, bx
	push ax
	ptrstack 8
	memread4 ax
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 12
	memwrite4 ax
	sourceline 15
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 16
	memread4 ax
	push ax
	li ax, 24
	pop bx
	shl bx, ax
	mr ax, bx
	push ax
	li ax, 240
	pop bx
	and bx, ax
	mr ax, bx
	pop bx
	xor bx, ax
	mr ax, bx
	ptrstack 12
	memwrite4 ax
	sourceline 17
	li ax, 1
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	add ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 19
	subi sp, 4
	jmpi label000000000071
label000000000247: ; inside shash$1, ; referenced by 1 spots
	sourceline 22
	ptrstack 8
	memread4 ax
	subi sp, 8
	ret 
	sourceline 24
	subi sp, 8
	ret 

atoi$1: ; 1 args
	sourceline 26
	thisaddr 263
	sourceline 28
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 30
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 32
	li ax, 1
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 34
	li ax, 0
	mr cx, ax
	ptrstack 20
	memread4 mar
	add mar, cx
	memread1 ax
	push ax
	li ax, 45
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000000358
	sourceline 36
	li ax, -1
	ptrstack 4
	memwrite4 ax
	sourceline 38
	ptrstack 8
	memread4 ax
	addi ax, 1
	memwrite4 ax
label000000000358: ; inside atoi$1, ; referenced by 2 spots
	sourceline 42
	li ax, 1
label000000000363: ; inside atoi$1, ; referenced by 1 spots
	jzi label000000000517
	sourceline 44
	ptrstack 8
	memread4 ax
	mr cx, ax
	ptrstack 20
	memread4 mar
	add mar, cx
	memread1 ax
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 46
	ptrstack 4
	memread4 ax
	push ax
	li ax, 48
	pop bx
	lt bx, ax
	mr ax, bx
	jnzi label000000000439
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 57
	pop bx
	gt bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000000439: ; inside atoi$1, ; referenced by 1 spots
	jzi label000000000449
	subi sp, 4
	li ax, 0
	jmpi label000000000363
label000000000449: ; inside atoi$1, ; referenced by 1 spots
	sourceline 48
	ptrstack 16
	memread4 ax
	push ax
	li ax, 10
	pop bx
	mul bx, ax
	mr ax, bx
	push ax
	ptrstack 8
	memread4 ax
	push ax
	li ax, 48
	pop bx
	sub bx, ax
	mr ax, bx
	pop bx
	add bx, ax
	mr ax, bx
	ptrstack 16
	memwrite4 ax
	sourceline 50
	ptrstack 12
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 52
	subi sp, 4
	jmpi label000000000358
label000000000517: ; inside atoi$1, ; referenced by 1 spots
	sourceline 54
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	pop bx
	mul bx, ax
	mr ax, bx
	subi sp, 12
	ret 
	sourceline 56
	subi sp, 12
	ret 

itoa$2: ; 2 args
	sourceline 58
	thisaddr 547
	sourceline 60
	mr mar, sp
	zeromem 4
	addi sp, 4
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	mr mar, sp
	zeromem 4
	addi sp, 4
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 62
	ptrstack 24
	memread4 ax
	push ax
	li ax, 31
	pop bx
	shr bx, ax
	mr ax, bx
	jzi label000000000669
	sourceline 64
	ptrstack 24
	memread4 ax
	push ax
	li ax, -1
	pop bx
	mul bx, ax
	mr ax, bx
	ptrstack 24
	memwrite4 ax
	sourceline 66
	li ax, 45
	push ax
	li ax, 0
	mr cx, ax
	pop ax
	ptrstack 28
	memread4 mar
	add mar, cx
	memwrite1 ax
	sourceline 68
	li ax, 1
	ptrstack 4
	memwrite4 ax
	sourceline 70
	jmpi label000000000678
label000000000669: ; inside itoa$2, ; referenced by 1 spots
	sourceline 72
	li ax, 0
	ptrstack 4
	memwrite4 ax
label000000000678: ; inside itoa$2, ; referenced by 1 spots
	sourceline 74
	ptrstack 24
	memread4 ax
	ptrstack 16
	memwrite4 ax
	sourceline 76
	jmpi label000000000694
	jmpi label000000000733
label000000000694: ; inside itoa$2, ; referenced by 2 spots
	sourceline 78
	ptrstack 12
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 80
	li ax, 10
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	div ax, bx
	ptrstack 16
	memwrite4 ax
	sourceline 82
	ptrstack 16
	memread4 ax
	jnzi label000000000694
label000000000733: ; inside itoa$2, ; referenced by 1 spots
	sourceline 84
	li ax, 0
	push ax
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	add bx, ax
	mr ax, bx
	mr cx, ax
	pop ax
	ptrstack 28
	memread4 mar
	add mar, cx
	memwrite1 ax
	sourceline 86
	jmpi label000000000778
	jmpi label000000000936
label000000000778: ; inside itoa$2, ; referenced by 2 spots
	sourceline 88
	ptrstack 24
	memread4 ax
	push ax
	li ax, 10
	pop bx
	mod bx, ax
	mr ax, bx
	ptrstack 8
	memwrite4 ax
	sourceline 90
	li ax, 48
	push ax
	ptrstack 12
	memread4 ax
	pop bx
	add bx, ax
	mr ax, bx
	push ax
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	add bx, ax
	mr ax, bx
	push ax
	li ax, 1
	pop bx
	sub bx, ax
	mr ax, bx
	mr cx, ax
	pop ax
	ptrstack 28
	memread4 mar
	add mar, cx
	memwrite1 ax
	sourceline 92
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 28
	memread4 ax
	pop bx
	sub ax, bx
	ptrstack 24
	memwrite4 ax
	sourceline 94
	li ax, 1
	push ax
	ptrstack 16
	memread4 ax
	pop bx
	sub ax, bx
	ptrstack 12
	memwrite4 ax
	sourceline 96
	li ax, 10
	push ax
	ptrstack 28
	memread4 ax
	pop bx
	div ax, bx
	ptrstack 24
	memwrite4 ax
	sourceline 98
	ptrstack 24
	memread4 ax
	jnzi label000000000778
label000000000936: ; inside itoa$2, ; referenced by 1 spots
	sourceline 100
	subi sp, 16
	ret 

gd_state_index$1: ; 1 args
	sourceline 118
	thisaddr 942
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 120
	mr cx, sp
	addi sp, 200
	mr mar, sp
	memwrite4 cx
	addi sp, 4
	sourceline 122
	ptrstack 212
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	ptrstack 4
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, StrCopy
	farcall ax
	farsubsp 2
	sourceline 124
	li ax, 0
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 126
	ptrstack 8
	memread4 ax
	push ax
	li ax, shash$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 128
	li ax, 0
	ptrstack 8
	memwrite4 ax
label000000001043: ; inside gd_state_index$1, ; referenced by 1 spots
	ptrstack 8
	memread4 ax
	push ax
	li mar, @gdcount
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000001238
	sourceline 130
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	muli ax, 68
	mr cx, ax
	li mar, @gditems
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	memread4 ax
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000001154
	push ax
	ptrstack 12
	memread4 ax
	muli ax, 68
	mr cx, ax
	push cx
	li ax, 0
	assertlte ax, 64
	pop cx
	add cx, ax
	li mar, @gditems
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	addi mar, 4
	memread1 ax
	pop bx
	land bx, ax
	mr ax, bx
label000000001154: ; inside gd_state_index$1, ; referenced by 1 spots
	jzi label000000001212
	push ax
	ptrstack 12
	memread4 ax
	muli ax, 68
	mr cx, ax
	li mar, @gditems
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	addi mar, 4
	mr ax, mar
	farpush ax
	ptrstack 16
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, StrComp
	farcall ax
	farsubsp 2
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000001212: ; inside gd_state_index$1, ; referenced by 1 spots
	jzi label000000001225
	ptrstack 8
	memread4 ax
	ptrstack 220
	ptrzerond 
	subi sp, 212
	ret 
label000000001225: ; inside gd_state_index$1, ; referenced by 1 spots
	sourceline 138
	ptrstack 8
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000001043
label000000001238: ; inside gd_state_index$1, ; referenced by 1 spots
	sourceline 140
	li ax, -1
	ptrstack 220
	ptrzerond 
	subi sp, 212
	ret 
	sourceline 142
	ptrstack 220
	ptrzerond 
	subi sp, 212
	ret 

add_gd_entry$1: ; 1 args
	sourceline 144
	thisaddr 1259
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 146
	mr cx, sp
	addi sp, 200
	mr mar, sp
	memwrite4 cx
	addi sp, 4
	sourceline 148
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 150
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 152
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 154
	ptrstack 224
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	ptrstack 16
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, StrCopy
	farcall ax
	farsubsp 2
	sourceline 156
	li mar, @gdcount
	memread4 ax
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	push ax
	li mar, @gddim
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000001608
	sourceline 158
	li ax, "alloc"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 160
	li mar, @gddim
	memread4 ax
	ptrstack 12
	memwrite4 ax
	sourceline 162
	li mar, @gddim
	memread4 ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000001441
	li ax, 32
	li mar, @gddim
	memwrite4 ax
	jmpi label000000001466
label000000001441: ; inside add_gd_entry$1, ; referenced by 1 spots
	sourceline 164
	li mar, @gddim
	memread4 ax
	push ax
	li ax, 2
	pop bx
	mul bx, ax
	mr ax, bx
	li mar, @gddim
	memwrite4 ax
label000000001466: ; inside add_gd_entry$1, ; referenced by 1 spots
	sourceline 166
	li mar, @gddim
	memread4 ax
	newarr ax, 68, 0
	ptrstack 4
	ptrset ax
	sourceline 168
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 170
	li ax, 0
	ptrstack 4
	memwrite4 ax
label000000001500: ; inside add_gd_entry$1, ; referenced by 1 spots
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000001582
	sourceline 172
	ptrstack 4
	memread4 ax
	muli ax, 68
	mr cx, ax
	li mar, @gditems
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	memread4 ax
	push ax
	ptrstack 8
	memread4 ax
	muli ax, 68
	mr cx, ax
	pop ax
	ptrstack 8
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	memwrite4 ax
	ptrstack 4
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000001500
label000000001582: ; inside add_gd_entry$1, ; referenced by 1 spots
	sourceline 174
	li ax, 0
	li mar, @gditems
	ptrset ax
	sourceline 176
	ptrstack 8
	ptrget ax
	li mar, @gditems
	ptrset ax
	sourceline 178
	subi sp, 4
label000000001608: ; inside add_gd_entry$1, ; referenced by 1 spots
	sourceline 180
	ptrstack 16
	memread4 ax
	push ax
	li ax, shash$1
	call ax
	subi sp, 4
	ptrstack 8
	memwrite4 ax
	sourceline 183
	ptrstack 8
	memread4 ax
	push ax
	li mar, @gdcount
	memread4 ax
	muli ax, 68
	mr cx, ax
	pop ax
	li mar, @gditems
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	memwrite4 ax
	sourceline 185
	ptrstack 16
	memread4 ax
	farpush ax
	li mar, @gdcount
	memread4 ax
	muli ax, 68
	mr cx, ax
	li mar, @gditems
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	addi mar, 4
	mr ax, mar
	farpush ax
	setfuncargs 2
	li ax, StrCopy
	farcall ax
	farsubsp 2
	sourceline 187
	li mar, @gdcount
	memread4 ax
	addi ax, 1
	memwrite4 ax
	sourceline 189
	ptrstack 224
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 216
	ret 

set_gd_state$2: ; 2 args
	sourceline 191
	thisaddr 1733
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 193
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, gd_state_index$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 195
	ptrstack 4
	memread4 ax
	push ax
	li ax, -1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000001806
	push ax
	ptrstack 20
	memread4 ax
	pop bx
	land bx, ax
	mr ax, bx
label000000001806: ; inside set_gd_state$2, ; referenced by 1 spots
	jzi label000000001818
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
label000000001818: ; inside set_gd_state$2, ; referenced by 1 spots
	sourceline 197
	ptrstack 4
	memread4 ax
	push ax
	li ax, -1
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000001855
	push ax
	ptrstack 20
	memread4 ax
	not ax
	pop bx
	land bx, ax
	mr ax, bx
label000000001855: ; inside set_gd_state$2, ; referenced by 1 spots
	jzi label000000001889
	sourceline 199
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, add_gd_entry$1
	call ax
	subi sp, 4
	sourceline 201
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
label000000001889: ; inside set_gd_state$2, ; referenced by 1 spots
	sourceline 205
	ptrstack 16
	memread4 ax
	jzi label000000001981
	sourceline 207
	li ax, 0
	push ax
	ptrstack 8
	memread4 ax
	muli ax, 68
	mr cx, ax
	pop ax
	li mar, @gditems
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	memwrite4 ax
	sourceline 209
	li ax, 0
	push ax
	ptrstack 8
	memread4 ax
	muli ax, 68
	mr cx, ax
	pop ax
	push ax
	push cx
	li ax, 0
	assertlte ax, 64
	pop cx
	add cx, ax
	pop ax
	li mar, @gditems
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	addi mar, 4
	memwrite1 ax
label000000001981: ; inside set_gd_state$2, ; referenced by 1 spots
	sourceline 213
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

reset_gds$0: ; 0 args
	sourceline 215
	thisaddr 1990
	sourceline 217
	li ax, 0
	li mar, @gditems
	ptrset ax
	sourceline 219
	li ax, 0
	li mar, @gdcount
	memwrite4 ax
	sourceline 221
	li ax, 0
	li mar, @gddim
	memwrite4 ax
	sourceline 223
	ret 

AdjustSpriteFont$5: ; 5 args
	sourceline 226
	thisaddr 2027
	sourceline 228
	li ax, "AdjustSpriteFont"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 230
	ret 

ReadWalkBehindIntoSprite$3: ; 3 args
	sourceline 232
	thisaddr 2051
	sourceline 234
	li ax, "ReadWalkBehindIntoSprite"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 236
	ret 

SetWalkbehindBaserine$2: ; 2 args
	sourceline 238
	thisaddr 2075
	li ax, "SetWalkbehindBaserine"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

GetWalkbehindBaserine$1: ; 1 args
	sourceline 240
	thisaddr 2095
	li ax, "GetWalkbehindBaserine"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	li ax, 0
	ret 
	ret 

Outline$5: ; 5 args
	sourceline 242
	thisaddr 2119
	sourceline 244
	li ax, "Outline"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 246
	ret 

OutlineOnly$7: ; 7 args
	sourceline 248
	thisaddr 2143
	sourceline 250
	li ax, "OutlineOnly"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 252
	ret 

DrawBlur$2: ; 2 args
	sourceline 254
	thisaddr 2167
	li ax, "DrawBlur"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

Grayscale$1: ; 1 args
	sourceline 256
	thisaddr 2187
	li ax, "Grayscale"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

Blend$4: ; 4 args
	sourceline 258
	thisaddr 2207
	li ax, "Blend"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

BlendTwoSprites$2: ; 2 args
	sourceline 260
	thisaddr 2227
	li ax, "BlendTwoSprites"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

SetWarper$5: ; 5 args
	sourceline 262
	thisaddr 2247
	li ax, "SetWarper"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

Warper$5: ; 5 args
	sourceline 264
	thisaddr 2267
	li ax, "Warper"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

DrawScreenEffect$4: ; 4 args
	sourceline 266
	thisaddr 2287
	sourceline 268
	li ax, "DrawScreenEffect"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 270
	ret 

RainUpdate$7: ; 7 args
	sourceline 272
	thisaddr 2311
	sourceline 274
	li ax, "RainUpdate"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 276
	ret 

WindUpdate$4: ; 4 args
	sourceline 278
	thisaddr 2335
	sourceline 280
	li ax, "WindUpdate"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 282
	ret 

SetWindValues$4: ; 4 args
	sourceline 284
	thisaddr 2359
	li ax, "SetWindValues"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

Dissolve$3: ; 3 args
	sourceline 286
	thisaddr 2379
	li ax, "Dissolve"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

SpriteGradient$3: ; 3 args
	sourceline 288
	thisaddr 2399
	li ax, "SpriteGradient"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

ReturnWidth$8: ; 8 args
	sourceline 290
	thisaddr 2419
	sourceline 292
	li ax, "ReturnWidth"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	li ax, 0
	ret 
	sourceline 294
	ret 

ReturnHeight$8: ; 8 args
	sourceline 296
	thisaddr 2447
	sourceline 298
	li ax, "ReturnHeight"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	li ax, 0
	ret 
	sourceline 300
	ret 

ReturnNewHeight$0: ; 0 args
	sourceline 302
	thisaddr 2475
	li ax, "ReturnNewHeight"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	li ax, 0
	ret 
	ret 

ReturnNewWidth$0: ; 0 args
	sourceline 304
	thisaddr 2499
	li ax, "ReturnNewWidth"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	li ax, 0
	ret 
	ret 

Audio_Apply_Filter$1: ; 1 args
	sourceline 306
	thisaddr 2523
	li ax, "Audio_Apply_Filter"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

Audio_Remove_Filter$0: ; 0 args
	sourceline 308
	thisaddr 2543
	li ax, "Audio_Remove_Filter"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

DrawForceField$4: ; 4 args
	sourceline 310
	thisaddr 2563
	sourceline 312
	li ax, "DrawForceField"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 314
	ret 

Music_Play$6: ; 6 args
	sourceline 316
	thisaddr 2587
	sourceline 318
	li ax, "Music_Play"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 320
	ret 

Music_SetVolume$1: ; 1 args
	sourceline 322
	thisaddr 2611
	sourceline 323
	ret 

Music_GetVolume$0: ; 0 args
	sourceline 325
	thisaddr 2618
	li ax, "Music_GetVolume"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	li ax, 100
	ret 
	ret 

NoiseCreator$2: ; 2 args
	sourceline 327
	thisaddr 2642
	li ax, "NoiseCreator"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

SFX_AllowOverlap$2: ; 2 args
	sourceline 329
	thisaddr 2662
	li ax, "SFX_AllowOverlap"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

SFX_Stop$2: ; 2 args
	sourceline 331
	thisaddr 2682
	li ax, "SFX_Stop"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

SFX_Filter$2: ; 2 args
	sourceline 333
	thisaddr 2702
	li ax, "SFX_Filter"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

Load_SFX$1: ; 1 args
	sourceline 335
	thisaddr 2722
	li ax, "Load_SFX"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

SFX_SetVolume$2: ; 2 args
	sourceline 337
	thisaddr 2742
	sourceline 338
	ret 

SFX_GetVolume$1: ; 1 args
	sourceline 340
	thisaddr 2749
	sourceline 341
	li ax, 100
	ret 
	ret 

SFX_SetPosition$4: ; 4 args
	sourceline 343
	thisaddr 2760
	sourceline 346
	ret 

SFX_SetGlobalVolume$1: ; 1 args
	sourceline 348
	thisaddr 2767
	li ax, "SFX_SetGlobalVolume"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

SFX_Play$2: ; 2 args
	sourceline 350
	thisaddr 2787
	sourceline 352
	mr cx, sp
	addi sp, 200
	mr mar, sp
	memwrite4 cx
	addi sp, 4
	sourceline 354
	ptrstack 212
	memread4 ax
	push ax
	li ax, 182
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002835
	li ax, 0
	subi sp, 204
	ret 
label000000002835: ; inside SFX_Play$2, ; referenced by 1 spots
	sourceline 356
	ptrstack 212
	memread4 ax
	push ax
	li ax, 165
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002863
	li ax, 0
	subi sp, 204
	ret 
label000000002863: ; inside SFX_Play$2, ; referenced by 1 spots
	sourceline 358
	ptrstack 212
	memread4 ax
	push ax
	li ax, 409
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000002891
	li ax, 0
	subi sp, 204
	ret 
label000000002891: ; inside SFX_Play$2, ; referenced by 1 spots
	sourceline 360
	li ax, "SFX_Play"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 362
	ptrstack 212
	memread4 ax
	farpush ax
	li ax, "Sounds/sound%d.sfx"
	farpush ax
	ptrstack 4
	memread4 ax
	farpush ax
	setfuncargs 3
	li ax, StrFormat
	farcall ax
	farsubsp 3
	sourceline 364
	ptrstack 4
	memread4 ax
	farpush ax
	setfuncargs 1
	li ax, PlayMP3File
	farcall ax
	farsubsp 1
	sourceline 366
	subi sp, 204
	ret 

GetGDState$1: ; 1 args
	sourceline 368
	thisaddr 2959
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 370
	li ax, "GetGDState"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 372
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, gd_state_index$1
	call ax
	subi sp, 4
	push ax
	li ax, 0
	pop bx
	gte bx, ax
	mr ax, bx
	ptrstack 8
	ptrzerond 
	ret 
	sourceline 374
	ptrstack 8
	ptrzerond 
	ret 

SetGDState$2: ; 2 args
	sourceline 376
	thisaddr 3029
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 378
	li ax, "SetGDState"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 380
	ptrstack 12
	memread4 ax
	push ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, set_gd_state$2
	call ax
	subi sp, 8
	sourceline 382
	ptrstack 8
	ptrzerond 
	ret 

GameDoOnceOnly$1: ; 1 args
	sourceline 384
	thisaddr 3088
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 386
	li ax, "GameDoOnceOnly"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 388
	ptrstack 8
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, gd_state_index$1
	call ax
	subi sp, 4
	mr mar, sp
	memwrite4 ax
	addi sp, 4
	sourceline 390
	ptrstack 4
	memread4 ax
	farpush ax
	ptrstack 12
	push mar
	pop mar
	ptrget ax
	farpush ax
	li ax, "GDOO %s -> %d"
	farpush ax
	li ax, 1
	farpush ax
	setfuncargs 4
	li ax, System::Log^102
	farcall ax
	farsubsp 4
	sourceline 392
	ptrstack 4
	memread4 ax
	push ax
	li ax, 0
	pop bx
	gte bx, ax
	mr ax, bx
	jzi label000000003211
	li ax, 0
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
label000000003211: ; inside GameDoOnceOnly$1, ; referenced by 1 spots
	sourceline 394
	li ax, 0
	push ax
	ptrstack 16
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, set_gd_state$2
	call ax
	subi sp, 8
	sourceline 396
	li ax, 1
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 
	sourceline 398
	ptrstack 12
	ptrzerond 
	subi sp, 4
	ret 

ResetAllGD$0: ; 0 args
	sourceline 400
	thisaddr 3257
	sourceline 402
	li ax, "ResetAllGD"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 404
	li ax, reset_gds$0
	call ax
	sourceline 406
	ret 

SaveVariable$2: ; 2 args
	sourceline 414
	thisaddr 3288
	ptrstack 8
	memread4 ax
	ptrinit ax
	sourceline 416
	mr cx, sp
	addi sp, 200
	mr mar, sp
	memwrite4 cx
	addi sp, 4
	sourceline 418
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 420
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 422
	ptrstack 220
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, 0
	pop bx
	cmpeq bx, ax
	mr ax, bx
	jzi label000000003372
	li ax, 0
	ptrstack 220
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 212
	ret 
label000000003372: ; inside SaveVariable$2, ; referenced by 1 spots
	sourceline 424
	li ax, "SaveVariable"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 426
	ptrstack 220
	push mar
	pop mar
	ptrget ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	sourceline 428
	ptrstack 224
	memread4 ax
	farpush ax
	li ax, "id: %d"
	farpush ax
	li ax, 1
	farpush ax
	setfuncargs 3
	li ax, System::Log^102
	farcall ax
	farsubsp 3
	sourceline 430
	ptrstack 224
	memread4 ax
	push ax
	li ax, 1
	pop bx
	add bx, ax
	mr ax, bx
	push ax
	li mar, @sv_count
	memread4 ax
	pop bx
	gt bx, ax
	mr ax, bx
	jzi label000000003636
	sourceline 432
	ptrstack 224
	memread4 ax
	push ax
	li ax, 100
	pop bx
	add bx, ax
	mr ax, bx
	newarr ax, 4, 0
	ptrstack 4
	ptrset ax
	sourceline 434
	li ax, 0
	ptrstack 8
	memwrite4 ax
label000000003508: ; inside SaveVariable$2, ; referenced by 1 spots
	ptrstack 8
	memread4 ax
	push ax
	li mar, @sv_count
	memread4 ax
	pop bx
	lt bx, ax
	mr ax, bx
	jzi label000000003591
	sourceline 436
	ptrstack 8
	memread4 ax
	muli ax, 4
	mr cx, ax
	li mar, @sv
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	memread4 ax
	push ax
	ptrstack 12
	memread4 ax
	muli ax, 4
	mr cx, ax
	pop ax
	ptrstack 4
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	memwrite4 ax
	ptrstack 8
	memread4 ax
	addi ax, 1
	memwrite4 ax
	jmpi label000000003508
label000000003591: ; inside SaveVariable$2, ; referenced by 1 spots
	sourceline 438
	li ax, 0
	li mar, @sv
	ptrset ax
	sourceline 440
	ptrstack 224
	memread4 ax
	push ax
	li ax, 100
	pop bx
	add bx, ax
	mr ax, bx
	li mar, @sv_count
	memwrite4 ax
	sourceline 442
	ptrstack 4
	ptrget ax
	li mar, @sv
	ptrset ax
label000000003636: ; inside SaveVariable$2, ; referenced by 1 spots
	sourceline 446
	ptrstack 220
	push mar
	pop mar
	ptrget ax
	assert ax
	farpush ax
	ptrstack 12
	memread4 ax
	farpush ax
	setfuncargs 2
	li ax, StrCopy
	farcall ax
	farsubsp 2
	sourceline 448
	ptrstack 12
	memread4 ax
	push ax
	li ax, atoi$1
	call ax
	subi sp, 4
	ptrstack 8
	memwrite4 ax
	sourceline 450
	ptrstack 8
	memread4 ax
	push ax
	ptrstack 228
	memread4 ax
	muli ax, 4
	mr cx, ax
	pop ax
	li mar, @sv
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	memwrite4 ax
	sourceline 452
	ptrstack 220
	ptrzerond 
	ptrstack 4
	ptrzerond 
	subi sp, 212
	ret 

ReadVariable$1: ; 1 args
	sourceline 454
	thisaddr 3730
	sourceline 456
	mr mar, sp
	zeromem 4
	addi sp, 4
	sourceline 458
	mr cx, sp
	addi sp, 200
	mr mar, sp
	memwrite4 cx
	addi sp, 4
	sourceline 461
	ptrstack 216
	memread4 ax
	push ax
	li mar, @sv_count
	memread4 ax
	pop bx
	gte bx, ax
	mr ax, bx
	jnzi label000000003810
	push ax
	ptrstack 220
	memread4 ax
	push ax
	li ax, 0
	pop bx
	lt bx, ax
	mr ax, bx
	pop bx
	lor bx, ax
	mr ax, bx
label000000003810: ; inside ReadVariable$1, ; referenced by 1 spots
	jzi label000000003821
	li ax, ""
	newstr ax
	subi sp, 208
	ret 
label000000003821: ; inside ReadVariable$1, ; referenced by 1 spots
	sourceline 463
	ptrstack 216
	memread4 ax
	muli ax, 4
	mr cx, ax
	li mar, @sv
	ptrget mar
	ptrassert 
	dynamicbounds cx
	add mar, cx
	memread4 ax
	ptrstack 208
	memwrite4 ax
	sourceline 465
	ptrstack 4
	memread4 ax
	push ax
	ptrstack 212
	memread4 ax
	push ax
	li ax, itoa$2
	call ax
	subi sp, 8
	sourceline 467
	ptrstack 4
	memread4 ax
	newstr ax
	subi sp, 208
	ret 
	sourceline 469
	subi sp, 208
	ret 
.strings
">>> %s"
"alloc"
"AdjustSpriteFont"
"ReadWalkBehindIntoSprite"
"SetWalkbehindBaserine"
"GetWalkbehindBaserine"
"Outline"
"OutlineOnly"
"DrawBlur"
"Grayscale"
"Blend"
"BlendTwoSprites"
"SetWarper"
"Warper"
"DrawScreenEffect"
"RainUpdate"
"WindUpdate"
"SetWindValues"
"Dissolve"
"SpriteGradient"
"ReturnWidth"
"ReturnHeight"
"ReturnNewHeight"
"ReturnNewWidth"
"Audio_Apply_Filter"
"Audio_Remove_Filter"
"DrawForceField"
"Music_Play"
"Music_GetVolume"
"NoiseCreator"
"SFX_AllowOverlap"
"SFX_Stop"
"SFX_Filter"
"Load_SFX"
"SFX_SetGlobalVolume"
"SFX_Play"
"Sounds/sound%d.sfx"
"GetGDState"
"SetGDState"
"GameDoOnceOnly"
"GDOO %s -> %d"
"ResetAllGD"
"SaveVariable"
"id: %d"
""
.imports
000000000000""
000000000001""
000000000002""
000000000003""
000000000004""
000000000005""
000000000006""
000000000007""
000000000008""
000000000009""
000000000010""
000000000011""
000000000012""
000000000013""
000000000014""
000000000015""
000000000016""
000000000017""
000000000018""
000000000019""
000000000020""
000000000021""
000000000022""
000000000023""
000000000024""
000000000025""
000000000026""
000000000027""
000000000028""
000000000029""
000000000030""
000000000031""
000000000032""
000000000033""
000000000034""
000000000035""
000000000036""
000000000037""
000000000038""
000000000039""
000000000040""
000000000041""
000000000042""
000000000043""
000000000044""
000000000045""
000000000046""
000000000047""
000000000048""
000000000049""
000000000050""
000000000051""
000000000052""
000000000053""
000000000054""
000000000055""
000000000056""
000000000057""
000000000058""
000000000059""
000000000060""
000000000061""
000000000062""
000000000063""
000000000064""
000000000065""
000000000066""
000000000067""
000000000068""
000000000069""
000000000070""
000000000071""
000000000072""
000000000073""
000000000074""
000000000075""
000000000076""
000000000077""
000000000078""
000000000079""
000000000080""
000000000081""
000000000082""
000000000083""
000000000084""
000000000085""
000000000086""
000000000087""
000000000088""
000000000089""
000000000090""
000000000091""
000000000092""
000000000093""
000000000094""
000000000095""
000000000096""
000000000097""
000000000098""
000000000099""
000000000100""
000000000101""
000000000102""
000000000103""
000000000104""
000000000105""
000000000106""
000000000107""
000000000108""
000000000109""
000000000110""
000000000111""
000000000112""
000000000113""
000000000114""
000000000115""
000000000116""
000000000117""
000000000118""
000000000119""
000000000120""
000000000121""
000000000122""
000000000123""
000000000124""
000000000125""
000000000126""
000000000127""
000000000128""
000000000129""
000000000130""
000000000131""
000000000132""
000000000133""
000000000134""
000000000135""
000000000136""
000000000137""
000000000138""
000000000139""
000000000140""
000000000141""
000000000142""
000000000143""
000000000144""
000000000145""
000000000146""
000000000147""
000000000148""
000000000149""
000000000150""
000000000151""
000000000152""
000000000153""
000000000154""
000000000155""
000000000156""
000000000157""
000000000158""
000000000159""
000000000160""
000000000161""
000000000162""
000000000163""
000000000164""
000000000165""
000000000166""
000000000167"StrComp"
000000000168"StrCopy"
000000000169"StrFormat"
000000000170""
000000000171""
000000000172""
000000000173""
000000000174""
000000000175""
000000000176""
000000000177""
000000000178""
000000000179""
000000000180""
000000000181""
000000000182""
000000000183""
000000000184""
000000000185""
000000000186""
000000000187""
000000000188""
000000000189""
000000000190""
000000000191""
000000000192""
000000000193""
000000000194""
000000000195""
000000000196""
000000000197""
000000000198""
000000000199""
000000000200""
000000000201""
000000000202""
000000000203""
000000000204""
000000000205""
000000000206""
000000000207""
000000000208""
000000000209""
000000000210""
000000000211""
000000000212""
000000000213""
000000000214""
000000000215""
000000000216""
000000000217""
000000000218""
000000000219""
000000000220""
000000000221""
000000000222""
000000000223""
000000000224""
000000000225""
000000000226""
000000000227""
000000000228""
000000000229""
000000000230""
000000000231""
000000000232""
000000000233""
000000000234""
000000000235""
000000000236""
000000000237""
000000000238""
000000000239""
000000000240""
000000000241""
000000000242""
000000000243""
000000000244""
000000000245""
000000000246""
000000000247""
000000000248""
000000000249""
000000000250""
000000000251""
000000000252""
000000000253""
000000000254""
000000000255""
000000000256""
000000000257""
000000000258""
000000000259""
000000000260""
000000000261""
000000000262""
000000000263""
000000000264""
000000000265""
000000000266""
000000000267""
000000000268""
000000000269""
000000000270""
000000000271""
000000000272""
000000000273""
000000000274""
000000000275""
000000000276""
000000000277""
000000000278""
000000000279""
000000000280""
000000000281""
000000000282""
000000000283""
000000000284""
000000000285""
000000000286""
000000000287""
000000000288""
000000000289""
000000000290""
000000000291""
000000000292""
000000000293""
000000000294""
000000000295""
000000000296""
000000000297""
000000000298""
000000000299""
000000000300""
000000000301""
000000000302""
000000000303""
000000000304""
000000000305""
000000000306""
000000000307""
000000000308""
000000000309""
000000000310""
000000000311""
000000000312""
000000000313""
000000000314""
000000000315""
000000000316""
000000000317""
000000000318""
000000000319""
000000000320""
000000000321""
000000000322""
000000000323""
000000000324""
000000000325""
000000000326""
000000000327""
000000000328""
000000000329""
000000000330""
000000000331""
000000000332""
000000000333""
000000000334""
000000000335""
000000000336""
000000000337""
000000000338""
000000000339""
000000000340""
000000000341""
000000000342""
000000000343""
000000000344""
000000000345""
000000000346""
000000000347""
000000000348""
000000000349""
000000000350""
000000000351""
000000000352""
000000000353""
000000000354""
000000000355""
000000000356""
000000000357""
000000000358""
000000000359""
000000000360""
000000000361""
000000000362""
000000000363""
000000000364""
000000000365""
000000000366""
000000000367""
000000000368""
000000000369""
000000000370""
000000000371""
000000000372""
000000000373""
000000000374""
000000000375""
000000000376""
000000000377""
000000000378""
000000000379""
000000000380""
000000000381""
000000000382""
000000000383""
000000000384""
000000000385""
000000000386""
000000000387""
000000000388""
000000000389""
000000000390""
000000000391""
000000000392""
000000000393""
000000000394""
000000000395""
000000000396""
000000000397""
000000000398""
000000000399""
000000000400""
000000000401""
000000000402""
000000000403""
000000000404""
000000000405""
000000000406""
000000000407""
000000000408""
000000000409""
000000000410""
000000000411""
000000000412""
000000000413""
000000000414""
000000000415""
000000000416""
000000000417""
000000000418""
000000000419""
000000000420""
000000000421""
000000000422""
000000000423""
000000000424""
000000000425""
000000000426""
000000000427""
000000000428""
000000000429""
000000000430""
000000000431""
000000000432""
000000000433""
000000000434""
000000000435""
000000000436""
000000000437""
000000000438""
000000000439""
000000000440""
000000000441""
000000000442""
000000000443""
000000000444""
000000000445""
000000000446""
000000000447""
000000000448""
000000000449""
000000000450""
000000000451""
000000000452""
000000000453""
000000000454""
000000000455""
000000000456""
000000000457""
000000000458""
000000000459""
000000000460""
000000000461""
000000000462"PlayMP3File"
000000000463""
000000000464""
000000000465""
000000000466""
000000000467""
000000000468""
000000000469""
000000000470""
000000000471""
000000000472""
000000000473""
000000000474""
000000000475""
000000000476""
000000000477""
000000000478""
000000000479""
000000000480""
000000000481""
000000000482""
000000000483""
000000000484""
000000000485""
000000000486""
000000000487""
000000000488""
000000000489""
000000000490""
000000000491""
000000000492""
000000000493""
000000000494""
000000000495""
000000000496""
000000000497""
000000000498""
000000000499""
000000000500""
000000000501""
000000000502""
000000000503""
000000000504""
000000000505""
000000000506""
000000000507""
000000000508""
000000000509""
000000000510""
000000000511""
000000000512""
000000000513""
000000000514""
000000000515""
000000000516""
000000000517""
000000000518""
000000000519""
000000000520""
000000000521""
000000000522""
000000000523""
000000000524""
000000000525""
000000000526""
000000000527""
000000000528""
000000000529""
000000000530""
000000000531""
000000000532""
000000000533""
000000000534""
000000000535""
000000000536""
000000000537""
000000000538""
000000000539""
000000000540""
000000000541""
000000000542""
000000000543""
000000000544""
000000000545""
000000000546""
000000000547""
000000000548""
000000000549""
000000000550""
000000000551""
000000000552""
000000000553""
000000000554""
000000000555""
000000000556""
000000000557""
000000000558""
000000000559""
000000000560""
000000000561""
000000000562""
000000000563""
000000000564""
000000000565""
000000000566""
000000000567""
000000000568""
000000000569""
000000000570""
000000000571""
000000000572""
000000000573""
000000000574""
000000000575""
000000000576""
000000000577""
000000000578""
000000000579""
000000000580""
000000000581""
000000000582""
000000000583""
000000000584""
000000000585""
000000000586""
000000000587""
000000000588""
000000000589""
000000000590""
000000000591""
000000000592""
000000000593""
000000000594""
000000000595""
000000000596""
000000000597""
000000000598""
000000000599""
000000000600""
000000000601""
000000000602""
000000000603""
000000000604""
000000000605""
000000000606""
000000000607""
000000000608""
000000000609""
000000000610""
000000000611""
000000000612""
000000000613""
000000000614""
000000000615""
000000000616""
000000000617""
000000000618""
000000000619""
000000000620""
000000000621""
000000000622""
000000000623""
000000000624""
000000000625""
000000000626""
000000000627""
000000000628""
000000000629""
000000000630""
000000000631""
000000000632""
000000000633""
000000000634""
000000000635""
000000000636""
000000000637""
000000000638""
000000000639""
000000000640""
000000000641""
000000000642""
000000000643""
000000000644""
000000000645""
000000000646""
000000000647""
000000000648""
000000000649""
000000000650""
000000000651""
000000000652""
000000000653""
000000000654""
000000000655""
000000000656""
000000000657""
000000000658""
000000000659""
000000000660""
000000000661""
000000000662""
000000000663""
000000000664""
000000000665""
000000000666""
000000000667""
000000000668""
000000000669""
000000000670""
000000000671""
000000000672""
000000000673""
000000000674""
000000000675""
000000000676""
000000000677""
000000000678""
000000000679""
000000000680""
000000000681""
000000000682""
000000000683""
000000000684""
000000000685""
000000000686""
000000000687""
000000000688""
000000000689""
000000000690""
000000000691""
000000000692""
000000000693""
000000000694""
000000000695""
000000000696""
000000000697""
000000000698""
000000000699""
000000000700""
000000000701""
000000000702""
000000000703""
000000000704""
000000000705""
000000000706""
000000000707""
000000000708""
000000000709""
000000000710""
000000000711""
000000000712""
000000000713""
000000000714""
000000000715""
000000000716""
000000000717""
000000000718""
000000000719""
000000000720""
000000000721""
000000000722""
000000000723""
000000000724""
000000000725""
000000000726""
000000000727""
000000000728""
000000000729""
000000000730""
000000000731""
000000000732""
000000000733""
000000000734""
000000000735""
000000000736""
000000000737""
000000000738""
000000000739""
000000000740""
000000000741""
000000000742""
000000000743""
000000000744""
000000000745""
000000000746""
000000000747""
000000000748""
000000000749""
000000000750""
000000000751""
000000000752""
000000000753""
000000000754""
000000000755""
000000000756""
000000000757""
000000000758""
000000000759""
000000000760""
000000000761""
000000000762""
000000000763""
000000000764""
000000000765""
000000000766""
000000000767""
000000000768""
000000000769""
000000000770""
000000000771""
000000000772""
000000000773""
000000000774""
000000000775""
000000000776""
000000000777""
000000000778""
000000000779""
000000000780""
000000000781""
000000000782""
000000000783""
000000000784""
000000000785""
000000000786""
000000000787""
000000000788""
000000000789""
000000000790""
000000000791""
000000000792""
000000000793""
000000000794""
000000000795""
000000000796""
000000000797""
000000000798""
000000000799""
000000000800""
000000000801""
000000000802""
000000000803""
000000000804""
000000000805""
000000000806""
000000000807""
000000000808""
000000000809""
000000000810""
000000000811""
000000000812""
000000000813""
000000000814""
000000000815""
000000000816""
000000000817""
000000000818""
000000000819""
000000000820""
000000000821""
000000000822""
000000000823""
000000000824""
000000000825""
000000000826""
000000000827""
000000000828""
000000000829""
000000000830""
000000000831""
000000000832""
000000000833""
000000000834""
000000000835""
000000000836""
000000000837""
000000000838""
000000000839""
000000000840""
000000000841""
000000000842""
000000000843""
000000000844""
000000000845""
000000000846""
000000000847""
000000000848""
000000000849""
000000000850""
000000000851""
000000000852""
000000000853""
000000000854""
000000000855"System::Log^102"
000000000856""
000000000857""
000000000858""
000000000859""
000000000860""
000000000861""
000000000862""
000000000863""
000000000864""
000000000865""
000000000866""
000000000867""
000000000868""
000000000869""
000000000870""
000000000871""
000000000872""
000000000873""
000000000874""
000000000875""
000000000876""
000000000877""
000000000878""
000000000879""
000000000880""
000000000881""
000000000882""
000000000883""
000000000884""
000000000885""
000000000886""
000000000887""
000000000888""
000000000889""
000000000890""
000000000891""
000000000892""
000000000893""
000000000894""
000000000895""
000000000896""
000000000897""
000000000898""
000000000899""
000000000900""
000000000901""
000000000902""
000000000903""
000000000904""
000000000905""
000000000906""
000000000907""
000000000908""
000000000909""
000000000910""
000000000911""
000000000912""
000000000913""
000000000914""
000000000915""
000000000916""
000000000917""
000000000918""
000000000919""
000000000920""
000000000921""
000000000922""
000000000923""
000000000924""
000000000925""
000000000926""
000000000927""
000000000928""
000000000929""
000000000930""
000000000931""
000000000932""
000000000933""
000000000934""
000000000935""
000000000936""
000000000937""
000000000938""
000000000939""
000000000940""
000000000941""
000000000942""
000000000943""
000000000944""
000000000945""
000000000946""
000000000947""
000000000948""
000000000949""
000000000950""
000000000951""
000000000952""
000000000953""
000000000954""
000000000955""
000000000956""
000000000957""
000000000958""
000000000959""
000000000960""
000000000961""
000000000962""
000000000963""
000000000964""
000000000965""
000000000966""
000000000967""
000000000968""
000000000969""
000000000970""
000000000971""
000000000972""
000000000973""
000000000974""
000000000975""
000000000976""
000000000977""
000000000978""
000000000979""
000000000980""
000000000981""
000000000982""
000000000983""
000000000984""
000000000985""
000000000986""
000000000987""
000000000988""
000000000989""
000000000990""
000000000991""
000000000992""
000000000993""
000000000994""
000000000995""
000000000996""
000000000997""
000000000998""
000000000999""
000000001000""
000000001001""
000000001002""
000000001003""
000000001004""
000000001005""
000000001006""
000000001007""
000000001008""
000000001009""
000000001010""
000000001011""
000000001012""
000000001013""
000000001014""
000000001015""
000000001016""
000000001017""
000000001018""
000000001019""
000000001020""
000000001021""
000000001022""
000000001023""
000000001024""
000000001025""
000000001026""
000000001027""
000000001028""
000000001029""
000000001030""
000000001031""
000000001032""
000000001033""
000000001034""
000000001035""
000000001036""
000000001037""
000000001038""
000000001039""
000000001040""
000000001041""
000000001042""
000000001043""
000000001044""
000000001045""
000000001046""
000000001047""
000000001048""
000000001049""
000000001050""
000000001051""
000000001052""
000000001053""
000000001054""
000000001055""
000000001056""
000000001057""
000000001058""
000000001059""
000000001060""
000000001061""
000000001062""
000000001063""
000000001064""
000000001065""
000000001066""
000000001067""
000000001068""
000000001069""
000000001070""
000000001071""
000000001072""
000000001073""
000000001074""
000000001075""
000000001076""
000000001077""
000000001078""
000000001079""
000000001080""
000000001081""
000000001082""
000000001083""
000000001084""
000000001085""
000000001086""
000000001087""
000000001088""
000000001089""
000000001090""
000000001091""
000000001092""
000000001093""
000000001094""
000000001095""
000000001096""
000000001097""
000000001098""
000000001099""
000000001100""
000000001101""
000000001102""
000000001103""
000000001104""
000000001105""
000000001106""
000000001107""
000000001108""
000000001109""
000000001110""
000000001111""
000000001112""
000000001113""
000000001114""
000000001115""
000000001116""
000000001117""
000000001118""
000000001119""
000000001120""
000000001121""
000000001122""
.exports
000000000000"gdcount"
2:000000000000
000000000001"gddim"
2:000000000004
000000000002"gditems"
2:000000000008
000000000003"sv_count"
2:000000000012
000000000004"sv"
2:000000000016
000000000005"dtrace$1"
1:000000000000
000000000006"shash$1"
1:000000000043
000000000007"atoi$1"
1:000000000263
000000000008"itoa$2"
1:000000000547
000000000009"gd_state_index$1"
1:000000000942
000000000010"add_gd_entry$1"
1:000000001259
000000000011"set_gd_state$2"
1:000000001733
000000000012"reset_gds$0"
1:000000001990
000000000013"AdjustSpriteFont$5"
1:000000002027
000000000014"ReadWalkBehindIntoSprite$3"
1:000000002051
000000000015"SetWalkbehindBaserine$2"
1:000000002075
000000000016"GetWalkbehindBaserine$1"
1:000000002095
000000000017"Outline$5"
1:000000002119
000000000018"OutlineOnly$7"
1:000000002143
000000000019"DrawBlur$2"
1:000000002167
000000000020"Grayscale$1"
1:000000002187
000000000021"Blend$4"
1:000000002207
000000000022"BlendTwoSprites$2"
1:000000002227
000000000023"SetWarper$5"
1:000000002247
000000000024"Warper$5"
1:000000002267
000000000025"DrawScreenEffect$4"
1:000000002287
000000000026"RainUpdate$7"
1:000000002311
000000000027"WindUpdate$4"
1:000000002335
000000000028"SetWindValues$4"
1:000000002359
000000000029"Dissolve$3"
1:000000002379
000000000030"SpriteGradient$3"
1:000000002399
000000000031"ReturnWidth$8"
1:000000002419
000000000032"ReturnHeight$8"
1:000000002447
000000000033"ReturnNewHeight$0"
1:000000002475
000000000034"ReturnNewWidth$0"
1:000000002499
000000000035"Audio_Apply_Filter$1"
1:000000002523
000000000036"Audio_Remove_Filter$0"
1:000000002543
000000000037"DrawForceField$4"
1:000000002563
000000000038"Music_Play$6"
1:000000002587
000000000039"Music_SetVolume$1"
1:000000002611
000000000040"Music_GetVolume$0"
1:000000002618
000000000041"NoiseCreator$2"
1:000000002642
000000000042"SFX_AllowOverlap$2"
1:000000002662
000000000043"SFX_Stop$2"
1:000000002682
000000000044"SFX_Filter$2"
1:000000002702
000000000045"Load_SFX$1"
1:000000002722
000000000046"SFX_SetVolume$2"
1:000000002742
000000000047"SFX_GetVolume$1"
1:000000002749
000000000048"SFX_SetPosition$4"
1:000000002760
000000000049"SFX_SetGlobalVolume$1"
1:000000002767
000000000050"SFX_Play$2"
1:000000002787
000000000051"GetGDState$1"
1:000000002959
000000000052"SetGDState$2"
1:000000003029
000000000053"GameDoOnceOnly$1"
1:000000003088
000000000054"ResetAllGD$0"
1:000000003257
000000000055"SaveVariable$2"
1:000000003288
000000000056"ReadVariable$1"
1:000000003730
.sections
"agswave" = 0

