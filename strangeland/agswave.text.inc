
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

SFX_AllowOverlap:
	sourceline 329
	thisaddr 2662
	li ax, "SFX_AllowOverlap"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

SFX_Stop:
	sourceline 331
	thisaddr 2682
	li ax, "SFX_Stop"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

SFX_Filter:
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

SFX_SetVolume:
	sourceline 337
	thisaddr 2742
	sourceline 338
	ret 

SFX_GetVolume:
	sourceline 340
	thisaddr 2749
	sourceline 341
	li ax, 100
	ret 
	ret 

SFX_SetPosition:
	sourceline 343
	thisaddr 2760
	sourceline 346
	ret 

SFX_SetGlobalVolume:
	sourceline 348
	thisaddr 2767
	li ax, "SFX_SetGlobalVolume"
	newstr ax
	push ax
	li ax, dtrace$1
	call ax
	subi sp, 4
	ret 

SFX_Play:
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
