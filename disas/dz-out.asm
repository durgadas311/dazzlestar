	maclib	z80
	org	00100h
L0100:	jmp	L4d49		;program entry

L0103:	db	0,0
L0105:	db	0,0,86h,11h,1
L010a:	db	'#COPYRIGHT (C) 1'
	db	'986 JOHN WASHING'
	db	'TON ',0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,1ah
L0143:	db	8,'Kaypro 4',0,'ler AD'
	db	'M seriesy?& Trou'
	db	't CP/M 2.2 F800',0
	db	0,0,0,0,0,0,0,0,0
L017c:	db	0ffh
L017d:	db	'P'
L017e:	db	11h
L017f:	db	3
L0180:	db	' '
L0181:	db	0
L0182:	db	1
L0183:	db	7fh
L0184:	db	7fh
L0185:	db	7fh
L0186:	db	'_'
L0187:	db	1
L0188:	db	1
L0189:	db	12h
L018a:	db	14h
L018b:	db	17h
L018c:	db	1
L018d:	db	1fh
L018e:	db	1eh
L018f:	db	16h,1ah,1fh,''''
L0193:	db	'-',0,8,10h,18h,' '
L0199:	db	4,'LST'
L019d:	db	':'
L019e:	db	4,'.MAC'
L01a3:	db	1
L01a4:	db	'HF'
L01a6:	db	10h
L01a7:	db	7
L01a8:	db	1,'D',0,0
L01ac:	db	'C'
L01ad:	db	0
L01ae:	db	'H'
L01af:	db	'B'
L01b0:	db	0ch
L01b1:	db	'DZENGMNU.OVR',0,0
L01bf:	db	0ch,'DZENGHLP.OVR',0,0
L01ce:	db	0ch,'DZENGMSG.OVR',0,0
L01dd:	db	0e8h,3
L01df:	db	18h,'P'
L01e1:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L01f1:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L0201:	db	2,1bh,'=',0,0,0,0,0,0,0,0,0,0,0,0,0
L0211:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L0221:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L0231:	db	0
L0232:	db	' '
L0233:	db	' '
L0234:	db	0
L0235:	db	1,18h,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	2,1bh,'R',0,0,0,0,0,0,0,0,0,0,0,0,0
	db	2,1bh,'E',0,0,0,0,0,0,0,0,0,0,0,0,0
	db	1,1ah,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L0275:	db	3,1bh,'B0',0,0,0,0,0,0,0,0,0,0,0,0
L0285:	db	3,1bh,'C0',0,0,0,0,0,0,0,0,0,0,0,0
L0295:	db	8
L0296:	db	0
L0297:	db	0
L0298:	db	0,0
L029a:	db	0,0,0
L029d:	nop			;; 029d: 00          .
	ret			;; 029e: c9          .

	nop			;; 029f: 00          .
L02a0:	nop			;; 02a0: 00          .
	ret			;; 02a1: c9          .

	nop			;; 02a2: 00          .
L02a3:	nop			;; 02a3: 00          .
	ret			;; 02a4: c9          .

	nop			;; 02a5: 00          .
L02a6:	nop			;; 02a6: 00          .
	ret			;; 02a7: c9          .

	nop			;; 02a8: 00          .
L02a9:	nop			;; 02a9: 00          .
	ret			;; 02aa: c9          .

	nop			;; 02ab: 00          .
L02ac:	nop			;; 02ac: 00          .
	ret			;; 02ad: c9          .

	nop			;; 02ae: 00          .
	db	0,0
L02b1:	db	1
L02b2:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,'k'
L02e1:	db	0
L02e2:	db	0
L02e3:	db	0
L02e4:	db	0
L02e5:	db	0
L02e6:	db	0
L02e7:	db	0
L02e8:	db	0
L02e9:	db	0
L02ea:	db	0
L02eb:	db	0
L02ec:	db	0,0
L02ee:	db	0
L02ef:	db	0
L02f0:	db	0
L02f1:	db	0
L02f2:	db	0
L02f3:	db	0,0
L02f5:	db	0
L02f6:	db	0
L02f7:	db	0
L02f8:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L0348:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0
L038f:	db	0
L0390:	db	0
L0391:	db	0
L0392:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0
L03c4:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0
L03dd:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0
L03f6:	db	0
L03f7:	db	0
L03f8:	db	0
L03f9:	db	0
L03fa:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0
L0413:	db	0
L0414:	call	L8d27		;; 0414: cd 27 8d    .'.
	db	0,8
	lda	L02f2		;; 0419: 3a f2 02    :..
	call	L0455		;; 041c: cd 55 04    .U.
L041f:	lda	L02ac		;; 041f: 3a ac 02    :..
	ora	a		;; 0422: b7          .
	jrz	L042e		;; 0423: 28 09       (.
	lxi	h,L02ac		;; 0425: 21 ac 02    ...
	push	h		;; 0428: e5          .
	call	L72e8		;; 0429: cd e8 72    ..r
	jr	L0438		;; 042c: 18 0a       ..

L042e:	mvi	a,00ch		;BIOS conout
	push	psw		;; 0430: f5          .
	ldx	a,-125		;; 0431: dd 7e 83    .~.
	push	psw		;; 0434: f5          .
	call	L72d5		;; 0435: cd d5 72    ..r
L0438:	jr	L0463		;; 0438: 18 29       .)

L043a:	call	L7643		;; 043a: cd 43 76    .Cv
	lhld	L02f3		;; 043d: 2a f3 02    *..
	push	h		;; 0440: e5          .
	call	L7682		;; 0441: cd 82 76    ..v
	ldx	a,-125		;; 0444: dd 7e 83    .~.
	push	psw		;; 0447: f5          .
	mvi	a,001h		;; 0448: 3e 01       >.
	push	psw		;; 044a: f5          .
	call	L77a2		;; 044b: cd a2 77    ..w
	call	L768c		;; 044e: cd 8c 76    ..v
	jr	L0463		;; 0451: 18 10       ..

L0453:	jr	L0463		;; 0453: 18 0e       ..

L0455:	lxi	b,00003h	;; 0455: 01 03 00    ...
	call	L8d90		;; 0458: cd 90 8d    ...
	dw	L041f
	dw	L043a
	dw	L0453
	dw	L8e06
L0463:	jmp	L8d56		;; 0463: c3 56 8d    .V.

L0466:	call	L8d27		;; 0466: cd 27 8d    .'.
	db	0,8
	lda	L038f		;; 046b: 3a 8f 03    :..
	ora	a		;; 046e: b7          .
	jrnz	L0478		;; 046f: 20 07        .
	lxi	h,L038f		;; 0471: 21 8f 03    ...
	mvi	m,046h		;; 0474: 36 46       6F
	jr	L047f		;; 0476: 18 07       ..

L0478:	lda	L038f		;; 0478: 3a 8f 03    :..
	dcr	a		;; 047b: 3d          =
	sta	L038f		;; 047c: 32 8f 03    2..
L047f:	lda	L038f		;; 047f: 3a 8f 03    :..
	rst	4		;; 0482: e7          .
	db	84h
	lxi	d,L0348		;; 0484: 11 48 03    .H.
	dad	d		;; 0487: 19          .
	push	h		;; 0488: e5          .
	ldx	a,-125		;; 0489: dd 7e 83    .~.
	pop	h		;; 048c: e1          .
	mov	m,a		;; 048d: 77          w
	lxi	h,L02f1		;; 048e: 21 f1 02    ...
	mvi	m,001h		;; 0491: 36 01       6.
	jmp	L8d56		;; 0493: c3 56 8d    .V.

L0496:	call	L8d27		;; 0496: cd 27 8d    .'.
	db	0fdh,9
	mvix	000h,-126	;; 049b: dd 36 82 00 .6..
	lda	L02b1		;; 049f: 3a b1 02    :..
	rar			;; 04a2: 1f          .
	jrnc	L04c8		;; 04a3: 30 23       0#
	mvi	a,006h		;BIOS const
	push	psw		;; 04a7: f5          .
	mvi	a,000h		;; 04a8: 3e 00       >.
	push	psw		;; 04aa: f5          .
	call	L72d5		;; 04ab: cd d5 72    ..r
	stx	a,-126		;; 04ae: dd 77 82    .w.
	ora	a		;; 04b1: b7          .
	jrz	L04c8		;; 04b2: 28 14       (.
	mvi	a,009h		;BIOS conin
	push	psw		;; 04b6: f5          .
	mvi	a,000h		;; 04b7: 3e 00       >.
	push	psw		;; 04b9: f5          .
	call	L72d5		;; 04ba: cd d5 72    ..r
	stx	a,-126		;; 04bd: dd 77 82    .w.
	cpi	07fh		;; 04c0: fe 7f       ..
	jrnz	L04c8		;; 04c2: 20 04        .
	mvix	008h,-126	;; 04c4: dd 36 82 08 .6..
L04c8:	ldx	a,-126		;; 04c8: dd 7e 82    .~.
	stx	a,-125		;; 04cb: dd 77 83    .w.
	ora	a		;; 04ce: b7          .
	jrz	L0506		;; 04cf: 28 35       (5
	lda	L0390		;; 04d1: 3a 90 03    :..
	rst	4		;; 04d4: e7          .
	db	84h
	lxi	d,L0348		;; 04d6: 11 48 03    .H.
	dad	d		;; 04d9: 19          .
	push	h		;; 04da: e5          .
	ldx	a,-125		;; 04db: dd 7e 83    .~.
	pop	h		;; 04de: e1          .
	mov	m,a		;; 04df: 77          w
	lda	L0390		;; 04e0: 3a 90 03    :..
	inr	a		;; 04e3: 3c          <
	push	psw		;; 04e4: f5          .
	mvi	a,047h		;; 04e5: 3e 47       >G
	call	L896c		;; 04e7: cd 6c 89    .l.
	sta	L0390		;; 04ea: 32 90 03    2..
	lxi	h,L0391		;; 04ed: 21 91 03    ...
	mvi	m,000h		;; 04f0: 36 00       6.
	lxi	h,L02f1		;; 04f2: 21 f1 02    ...
	mvi	m,001h		;; 04f5: 36 01       6.
	ldx	a,-126		;; 04f7: dd 7e 82    .~.
	cpi	015h		;; 04fa: fe 15       ..
	call	L8c09		;; 04fc: cd 09 8c    ...
	lxi	h,L02f0		;; 04ff: 21 f0 02    ...
	ora	m		;; 0502: b6          .
	sta	L02f0		;; 0503: 32 f0 02    2..
L0506:	lda	L02f0		;; 0506: 3a f0 02    :..
	stx	a,-124		;; 0509: dd 77 84    .w.
	jmp	L8d56		;; 050c: c3 56 8d    .V.

L050f:	call	L8d27		;; 050f: cd 27 8d    .'.
	db	0ffh,7
	lxi	h,L029d		;; 0514: 21 9d 02    ...
	push	h		;; 0517: e5          .
	call	L72e8		;; 0518: cd e8 72    ..r
	lda	L02e3		;; 051b: 3a e3 02    :..
	mov	l,a		;; 051e: 6f          o
	mvi	h,000h		;; 051f: 26 00       &.
	dad	h		;; 0521: 29          )
	lxi	d,L0392		;; 0522: 11 92 03    ...
	dad	d		;; 0525: 19          .
	rst	4		;; 0526: e7          .
	db	80h
	push	h		;; 0528: e5          .
	lda	L02ee		;; 0529: 3a ee 02    :..
	mov	l,a		;; 052c: 6f          o
	mvi	h,000h		;; 052d: 26 00       &.
	pop	d		;; 052f: d1          .
	dad	d		;; 0530: 19          .
	mov	a,m		;; 0531: 7e          ~
	stx	a,-126		;; 0532: dd 77 82    .w.
	lxi	h,L02a0		;; 0535: 21 a0 02    ...
	push	h		;; 0538: e5          .
	call	L72e8		;; 0539: cd e8 72    ..r
	ldx	a,-126		;; 053c: dd 7e 82    .~.
	jmp	L8d56		;; 053f: c3 56 8d    .V.

L0542:	call	L8d27		;; 0542: cd 27 8d    .'.
	db	0ffh,0bh
	lxi	h,L029d		;; 0547: 21 9d 02    ...
	push	h		;; 054a: e5          .
	call	L72e8		;; 054b: cd e8 72    ..r
	ldx	l,-122		;; 054e: dd 6e 86    .n.
	mvi	h,000h		;; 0551: 26 00       &.
	dad	h		;; 0553: 29          )
	lxi	d,L0392		;; 0554: 11 92 03    ...
	dad	d		;; 0557: 19          .
	rst	4		;; 0558: e7          .
	db	80h
	push	h		;; 055a: e5          .
	ldx	l,-124		;; 055b: dd 6e 84    .n.
	mvi	h,000h		;; 055e: 26 00       &.
	pop	d		;; 0560: d1          .
	dad	d		;; 0561: 19          .
	mov	a,m		;; 0562: 7e          ~
	stx	a,-126		;; 0563: dd 77 82    .w.
	lxi	h,L02a0		;; 0566: 21 a0 02    ...
	push	h		;; 0569: e5          .
	call	L72e8		;; 056a: cd e8 72    ..r
	ldx	a,-126		;; 056d: dd 7e 82    .~.
	jmp	L8d56		;; 0570: c3 56 8d    .V.

L0573:	call	L8d27		;; 0573: cd 27 8d    .'.
	db	0,8
	ldx	a,-125		;; 0578: dd 7e 83    .~.
	rar			;; 057b: 1f          .
	jrnc	L0587		;; 057c: 30 09       0.
	lxi	h,L0275		;; 057e: 21 75 02    .u.
	push	h		;; 0581: e5          .
	call	L5b56		;; 0582: cd 56 5b    .V[
	jr	L058e		;; 0585: 18 07       ..

L0587:	lxi	h,L0285		;; 0587: 21 85 02    ...
	push	h		;; 058a: e5          .
	call	L5b56		;; 058b: cd 56 5b    .V[
L058e:	ldx	a,-125		;; 058e: dd 7e 83    .~.
	sta	L03f9		;; 0591: 32 f9 03    2..
	jmp	L8d56		;; 0594: c3 56 8d    .V.

L0597:	call	L8d27		;; 0597: cd 27 8d    .'.
	db	0feh,0ah
	lda	L02f6		;; 059c: 3a f6 02    :..
	rar			;; 059f: 1f          .
	jrnc	L05d5		;; 05a0: 30 33       03
	lda	L02ee		;; 05a2: 3a ee 02    :..
	mov	l,a		;; 05a5: 6f          o
	mvi	h,000h		;; 05a6: 26 00       &.
	lxi	d,L02f8		;; 05a8: 11 f8 02    ...
	dad	d		;; 05ab: 19          .
	push	h		;; 05ac: e5          .
	ldx	a,-123		;; 05ad: dd 7e 85    .~.
	pop	h		;; 05b0: e1          .
	mov	m,a		;; 05b1: 77          w
	lda	L02ee		;; 05b2: 3a ee 02    :..
	lxi	h,L02f7		;; 05b5: 21 f7 02    ...
	cmp	m		;; 05b8: be          .
	jrc	L05c2		;; 05b9: 38 07       8.
	lda	L02ee		;; 05bb: 3a ee 02    :..
	inr	a		;; 05be: 3c          <
	sta	L02f7		;; 05bf: 32 f7 02    2..
L05c2:	lda	L02ee		;; 05c2: 3a ee 02    :..
	lxi	h,L0413		;; 05c5: 21 13 04    ...
	cmp	m		;; 05c8: be          .
	jrnc	L05d2		;; 05c9: 30 07       0.
	lda	L02ee		;; 05cb: 3a ee 02    :..
	inr	a		;; 05ce: 3c          <
	sta	L02ee		;; 05cf: 32 ee 02    2..
L05d2:	jmp	L071d		;; 05d2: c3 1d 07    ...

L05d5:	call	L0496		;; 05d5: cd 96 04    ...
	stx	a,-125		;; 05d8: dd 77 83    .w.
	lda	L02ee		;; 05db: 3a ee 02    :..
	lxi	h,L0413		;; 05de: 21 13 04    ...
	cmp	m		;; 05e1: be          .
	jnc	L071d		;; 05e2: d2 1d 07    ...
	lda	L02ee		;; 05e5: 3a ee 02    :..
	lxi	h,L02ef		;; 05e8: 21 ef 02    ...
	cmp	m		;; 05eb: be          .
	call	L8c0e		;; 05ec: cd 0e 8c    ...
	lxi	h,L0296		;; 05ef: 21 96 02    ...
	ora	m		;; 05f2: b6          .
	push	psw		;; 05f3: f5          .
	lda	L02e3		;; 05f4: 3a e3 02    :..
	lxi	h,L02e4		;; 05f7: 21 e4 02    ...
	cmp	m		;; 05fa: be          .
	call	L8c0e		;; 05fb: cd 0e 8c    ...
	mov	b,a		;; 05fe: 47          G
	pop	psw		;; 05ff: f1          .
	ora	b		;; 0600: b0          .
	rar			;; 0601: 1f          .
	jnc	L071d		;; 0602: d2 1d 07    ...
	lda	L0297		;; 0605: 3a 97 02    :..
	rar			;; 0608: 1f          .
	jrnc	L0620		;; 0609: 30 15       0.
	lda	L029a		;; 060b: 3a 9a 02    :..
	xri	001h		;; 060e: ee 01       ..
	rar			;; 0610: 1f          .
	jrnc	L0620		;; 0611: 30 0d       0.
	ldx	a,-123		;; 0613: dd 7e 85    .~.
	push	psw		;; 0616: f5          .
	mvi	a,07fh		;; 0617: 3e 7f       >.
	push	psw		;; 0619: f5          .
	call	L72f2		;; 061a: cd f2 72    ..r
	stx	a,-123		;; 061d: dd 77 85    .w.
L0620:	lxi	h,L029d		;; 0620: 21 9d 02    ...
	push	h		;; 0623: e5          .
	call	L72e8		;; 0624: cd e8 72    ..r
	lda	L02e3		;; 0627: 3a e3 02    :..
	mov	l,a		;; 062a: 6f          o
	mvi	h,000h		;; 062b: 26 00       &.
	dad	h		;; 062d: 29          )
	lxi	d,L0392		;; 062e: 11 92 03    ...
	dad	d		;; 0631: 19          .
	rst	4		;; 0632: e7          .
	db	80h
	push	h		;; 0634: e5          .
	lda	L02ee		;; 0635: 3a ee 02    :..
	mov	l,a		;; 0638: 6f          o
	mvi	h,000h		;; 0639: 26 00       &.
	pop	d		;; 063b: d1          .
	dad	d		;; 063c: 19          .
	push	h		;; 063d: e5          .
	ldx	a,-123		;; 063e: dd 7e 85    .~.
	pop	h		;; 0641: e1          .
	mov	m,a		;; 0642: 77          w
	lxi	h,L02a0		;; 0643: 21 a0 02    ...
	push	h		;; 0646: e5          .
	call	L72e8		;; 0647: cd e8 72    ..r
	lda	L02e3		;; 064a: 3a e3 02    :..
	ora	a		;; 064d: b7          .
	call	L8c09		;; 064e: cd 09 8c    ...
	lxi	h,L0391		;; 0651: 21 91 03    ...
	ora	m		;; 0654: b6          .
	rar			;; 0655: 1f          .
	jrnc	L06cd		;; 0656: 30 75       0u
	lda	L0275		;; 0658: 3a 75 02    :u.
	ora	a		;; 065b: b7          .
	jrz	L0677		;; 065c: 28 19       (.
	ldx	a,-123		;; 065e: dd 7e 85    .~.
	cpi	080h		;; 0661: fe 80       ..
	mvi	a,000h		;; 0663: 3e 00       >.
	cmc			;; 0665: 3f          ?
	ral			;; 0666: 17          .
	stx	a,-126		;; 0667: dd 77 82    .w.
	lxi	h,L03f9		;; 066a: 21 f9 03    ...
	cmp	m		;; 066d: be          .
	jrz	L0677		;; 066e: 28 07       (.
	ldx	a,-126		;; 0670: dd 7e 82    .~.
	push	psw		;; 0673: f5          .
	call	L0573		;; 0674: cd 73 05    .s.
L0677:	lda	L029a		;; 0677: 3a 9a 02    :..
	xri	001h		;; 067a: ee 01       ..
	rar			;; 067c: 1f          .
	jrnc	L068c		;; 067d: 30 0d       0.
	ldx	a,-123		;; 067f: dd 7e 85    .~.
	push	psw		;; 0682: f5          .
	mvi	a,07fh		;; 0683: 3e 7f       >.
	push	psw		;; 0685: f5          .
	call	L72f2		;; 0686: cd f2 72    ..r
	stx	a,-123		;; 0689: dd 77 85    .w.
L068c:	ldx	a,-123		;; 068c: dd 7e 85    .~.
	push	psw		;; 068f: f5          .
	call	L0414		;; 0690: cd 14 04    ...
	lda	L03f6		;; 0693: 3a f6 03    :..
	rar			;; 0696: 1f          .
	jrnc	L06bb		;; 0697: 30 22       0"
	lda	L02e3		;; 0699: 3a e3 02    :..
	mov	l,a		;; 069c: 6f          o
	mvi	h,000h		;; 069d: 26 00       &.
	lxi	d,L03c4		;; 069f: 11 c4 03    ...
	dad	d		;; 06a2: 19          .
	mov	a,m		;; 06a3: 7e          ~
	lxi	h,L02ee		;; 06a4: 21 ee 02    ...
	cmp	m		;; 06a7: be          .
	jrnz	L06bb		;; 06a8: 20 11        .
	lda	L02e3		;; 06aa: 3a e3 02    :..
	mov	l,a		;; 06ad: 6f          o
	mvi	h,000h		;; 06ae: 26 00       &.
	lxi	d,L03c4		;; 06b0: 11 c4 03    ...
	dad	d		;; 06b3: 19          .
	push	h		;; 06b4: e5          .
	lda	L02ee		;; 06b5: 3a ee 02    :..
	inr	a		;; 06b8: 3c          <
	pop	h		;; 06b9: e1          .
	mov	m,a		;; 06ba: 77          w
L06bb:	lda	L02ee		;; 06bb: 3a ee 02    :..
	lxi	h,L0413		;; 06be: 21 13 04    ...
	cmp	m		;; 06c1: be          .
	jrnc	L06cb		;; 06c2: 30 07       0.
	lda	L02ee		;; 06c4: 3a ee 02    :..
	inr	a		;; 06c7: 3c          <
	sta	L03f7		;; 06c8: 32 f7 03    2..
L06cb:	jr	L0716		;; 06cb: 18 49       .I

L06cd:	lda	L02e3		;; 06cd: 3a e3 02    :..
	mov	l,a		;; 06d0: 6f          o
	mvi	h,000h		;; 06d1: 26 00       &.
	lxi	d,L03c4		;; 06d3: 11 c4 03    ...
	dad	d		;; 06d6: 19          .
	mov	a,m		;; 06d7: 7e          ~
	push	psw		;; 06d8: f5          .
	lda	L02ee		;; 06d9: 3a ee 02    :..
	pop	b		;; 06dc: c1          .
	cmp	b		;; 06dd: b8          .
	jrnc	L06f0		;; 06de: 30 10       0.
	lda	L02e3		;; 06e0: 3a e3 02    :..
	mov	l,a		;; 06e3: 6f          o
	mvi	h,000h		;; 06e4: 26 00       &.
	lxi	d,L03c4		;; 06e6: 11 c4 03    ...
	dad	d		;; 06e9: 19          .
	push	h		;; 06ea: e5          .
	lda	L02ee		;; 06eb: 3a ee 02    :..
	pop	h		;; 06ee: e1          .
	mov	m,a		;; 06ef: 77          w
L06f0:	lda	L02e3		;; 06f0: 3a e3 02    :..
	mov	l,a		;; 06f3: 6f          o
	mvi	h,000h		;; 06f4: 26 00       &.
	lxi	d,L03dd		;; 06f6: 11 dd 03    ...
	dad	d		;; 06f9: 19          .
	mov	a,m		;; 06fa: 7e          ~
	lxi	h,L02ee		;; 06fb: 21 ee 02    ...
	cmp	m		;; 06fe: be          .
	jrnc	L0711		;; 06ff: 30 10       0.
	lda	L02e3		;; 0701: 3a e3 02    :..
	mov	l,a		;; 0704: 6f          o
	mvi	h,000h		;; 0705: 26 00       &.
	lxi	d,L03dd		;; 0707: 11 dd 03    ...
	dad	d		;; 070a: 19          .
	push	h		;; 070b: e5          .
	lda	L02ee		;; 070c: 3a ee 02    :..
	pop	h		;; 070f: e1          .
	mov	m,a		;; 0710: 77          w
L0711:	lxi	h,L03f6		;; 0711: 21 f6 03    ...
	mvi	m,001h		;; 0714: 36 01       6.
L0716:	lda	L02ee		;; 0716: 3a ee 02    :..
	inr	a		;; 0719: 3c          <
	sta	L02ee		;; 071a: 32 ee 02    2..
L071d:	jmp	L8d56		;; 071d: c3 56 8d    .V.

L0720:	call	L8d27		;; 0720: cd 27 8d    .'.
	db	0feh,0ch
	ldx	a,-121		;; 0725: dd 7e 87    .~.
	mov	b,a		;; 0728: 47          G
	mvi	a,001h		;; 0729: 3e 01       >.
	call	L894e		;; 072b: cd 4e 89    .N.
	stx	b,-126		;; 072e: dd 70 82    .p.
	jrc	L0746		;; 0731: 38 13       8.
L0733:	stx	a,-125		;; 0733: dd 77 83    .w.
	ldx	a,-123		;; 0736: dd 7e 85    .~.
	push	psw		;; 0739: f5          .
	call	L0597		;; 073a: cd 97 05    ...
	ldx	a,-125		;; 073d: dd 7e 83    .~.
	inr	a		;; 0740: 3c          <
	dcrx	-126		;; 0741: dd 35 82    .5.
	jrnz	L0733		;; 0744: 20 ed        .
L0746:	jmp	L8d56		;; 0746: c3 56 8d    .V.

L0749:	call	L8d27		;; 0749: cd 27 8d    .'.
	db	0feh,0ah
	ldx	a,-123		;; 074e: dd 7e 85    .~.
	mov	b,a		;; 0751: 47          G
	mvi	a,001h		;; 0752: 3e 01       >.
	call	L894e		;; 0754: cd 4e 89    .N.
	stx	b,-126		;; 0757: dd 70 82    .p.
	jrc	L076e		;; 075a: 38 12       8.
L075c:	stx	a,-125		;; 075c: dd 77 83    .w.
	mvi	a,020h		;; 075f: 3e 20       > 
	push	psw		;; 0761: f5          .
	call	L0414		;; 0762: cd 14 04    ...
	ldx	a,-125		;; 0765: dd 7e 83    .~.
	inr	a		;; 0768: 3c          <
	dcrx	-126		;; 0769: dd 35 82    .5.
	jrnz	L075c		;; 076c: 20 ee        .
L076e:	jmp	L8d56		;; 076e: c3 56 8d    .V.

L0771:	call	L8d27		;; 0771: cd 27 8d    .'.
	db	0feh,0ah
	ldx	a,-123		;; 0776: dd 7e 85    .~.
	mov	b,a		;; 0779: 47          G
	mvi	a,001h		;; 077a: 3e 01       >.
	call	L894e		;; 077c: cd 4e 89    .N.
	stx	b,-126		;; 077f: dd 70 82    .p.
	jrc	L0796		;; 0782: 38 12       8.
L0784:	stx	a,-125		;; 0784: dd 77 83    .w.
	mvi	a,020h		;; 0787: 3e 20       > 
	push	psw		;; 0789: f5          .
	call	L0597		;; 078a: cd 97 05    ...
	ldx	a,-125		;; 078d: dd 7e 83    .~.
	inr	a		;; 0790: 3c          <
	dcrx	-126		;; 0791: dd 35 82    .5.
	jrnz	L0784		;; 0794: 20 ee        .
L0796:	jmp	L8d56		;; 0796: c3 56 8d    .V.

L0799:	call	L8d27		;; 0799: cd 27 8d    .'.
	db	0,6
	mvi	a,020h		;; 079e: 3e 20       > 
	push	psw		;; 07a0: f5          .
	call	L0597		;; 07a1: cd 97 05    ...
	jmp	L8d56		;; 07a4: c3 56 8d    .V.

L07a7:	call	L8d27		;; 07a7: cd 27 8d    .'.
	db	0,8
	ldx	a,-125		;; 07ac: dd 7e 83    .~.
	cpi	00ah		;; 07af: fe 0a       ..
	jrc	L07c0		;; 07b1: 38 0d       8.
	ldx	a,-125		;; 07b3: dd 7e 83    .~.
	push	psw		;; 07b6: f5          .
	mvi	a,00ah		;; 07b7: 3e 0a       >.
	call	L89b1		;; 07b9: cd b1 89    ...
	push	psw		;; 07bc: f5          .
	call	L07a7		;; 07bd: cd a7 07    ...
L07c0:	ldx	a,-125		;; 07c0: dd 7e 83    .~.
	push	psw		;; 07c3: f5          .
	mvi	a,00ah		;; 07c4: 3e 0a       >.
	call	L8965		;; 07c6: cd 65 89    .e.
	adi	030h		;; 07c9: c6 30       .0
	push	psw		;; 07cb: f5          .
	call	L0597		;; 07cc: cd 97 05    ...
	jmp	L8d56		;; 07cf: c3 56 8d    .V.

L07d2:	call	L8d27		;; 07d2: cd 27 8d    .'.
	db	0,8
	lxi	b,0000ah	;; 07d7: 01 0a 00    ...
	rst	3		;; 07da: df          .
	db	82h
	ora	a		;; 07dc: b7          .
	dsbc	b		;; 07dd: ed 42       .B
	jrc	L07ee		;; 07df: 38 0d       8.
	rst	3		;; 07e1: df          .
	db	82h
	push	h		;; 07e3: e5          .
	lxi	h,0000ah	;; 07e4: 21 0a 00    ...
	call	L8758		;; 07e7: cd 58 87    .X.
	push	h		;; 07ea: e5          .
	call	L07d2		;; 07eb: cd d2 07    ...
L07ee:	rst	3		;; 07ee: df          .
	db	82h
	push	h		;; 07f0: e5          .
	lxi	h,0000ah	;; 07f1: 21 0a 00    ...
	call	L86fe		;; 07f4: cd fe 86    ...
	lxi	b,00030h	;; 07f7: 01 30 00    .0.
	dad	b		;; 07fa: 09          .
	mov	a,l		;; 07fb: 7d          }
	push	psw		;; 07fc: f5          .
	call	L0597		;; 07fd: cd 97 05    ...
	jmp	L8d56		;; 0800: c3 56 8d    .V.

L0803:	call	L8d27		;; 0803: cd 27 8d    .'.
	db	0feh,'@'
	ldx	a,-124		;; 0808: dd 7e 84    .~.
	mov	b,a		;; 080b: 47          G
	mvi	a,001h		;; 080c: 3e 01       >.
	call	L894e		;; 080e: cd 4e 89    .N.
	stx	b,-126		;; 0811: dd 70 82    .p.
	jrc	L082f		;; 0814: 38 19       8.
L0816:	stx	a,-125		;; 0816: dd 77 83    .w.
	mov	l,a		;; 0819: 6f          o
	mvi	h,000h		;; 081a: 26 00       &.
	rst	2		;; 081c: d7          .
	lxi	d,0ff84h	;; 081d: 11 84 ff    ...
	dad	d		;; 0820: 19          .
	mov	a,m		;; 0821: 7e          ~
	push	psw		;; 0822: f5          .
	call	L0597		;; 0823: cd 97 05    ...
	ldx	a,-125		;; 0826: dd 7e 83    .~.
	inr	a		;; 0829: 3c          <
	dcrx	-126		;; 082a: dd 35 82    .5.
	jrnz	L0816		;; 082d: 20 e7        .
L082f:	jmp	L8d56		;; 082f: c3 56 8d    .V.

L0832:	call	L8d27		;; 0832: cd 27 8d    .'.
	db	0,0ah
	ldx	a,-125		;; 0837: dd 7e 83    .~.
	ora	a		;; 083a: b7          .
	jrz	L084f		;; 083b: 28 12       (.
	ldx	a,-123		;; 083d: dd 7e 85    .~.
	push	psw		;; 0840: f5          .
	mvi	a,00ah		;; 0841: 3e 0a       >.
	call	L89b1		;; 0843: cd b1 89    ...
	push	psw		;; 0846: f5          .
	ldx	a,-125		;; 0847: dd 7e 83    .~.
	dcr	a		;; 084a: 3d          =
	push	psw		;; 084b: f5          .
	call	L0832		;; 084c: cd 32 08    .2.
L084f:	ldx	a,-123		;; 084f: dd 7e 85    .~.
	push	psw		;; 0852: f5          .
	mvi	a,00ah		;; 0853: 3e 0a       >.
	call	L8965		;; 0855: cd 65 89    .e.
	adi	030h		;; 0858: c6 30       .0
	push	psw		;; 085a: f5          .
	call	L0414		;; 085b: cd 14 04    ...
	jmp	L8d56		;; 085e: c3 56 8d    .V.

L0861:	call	L8d27		;; 0861: cd 27 8d    .'.
	db	0,0ah
	rst	3		;; 0866: df          .
	db	84h
	push	h		;; 0868: e5          .
	call	L5b56		;; 0869: cd 56 5b    .V[
	lda	L0234		;; 086c: 3a 34 02    :4.
	ora	a		;; 086f: b7          .
	jrnz	L087b		;; 0870: 20 09        .
	ldx	a,-125		;; 0872: dd 7e 83    .~.
	push	psw		;; 0875: f5          .
	call	L0414		;; 0876: cd 14 04    ...
	jr	L0886		;; 0879: 18 0b       ..

L087b:	ldx	a,-125		;; 087b: dd 7e 83    .~.
	push	psw		;; 087e: f5          .
	lda	L0234		;; 087f: 3a 34 02    :4.
	push	psw		;; 0882: f5          .
	call	L0832		;; 0883: cd 32 08    .2.
L0886:	jmp	L8d56		;; 0886: c3 56 8d    .V.

L0889:	call	L8d27		;; 0889: cd 27 8d    .'.
	db	0fch,0eh
	lda	L02e4		;; 088e: 3a e4 02    :..
	cmpx	-119		;; 0891: dd be 89    ...
	jrnc	L089c		;; 0894: 30 06       0.
	lda	L02e4		;; 0896: 3a e4 02    :..
	stx	a,-119		;; 0899: dd 77 89    .w.
L089c:	lda	L02f6		;; 089c: 3a f6 02    :..
	xri	001h		;; 089f: ee 01       ..
	push	psw		;; 08a1: f5          .
	ldx	a,-119		;; 08a2: dd 7e 89    .~.
	ora	a		;; 08a5: b7          .
	call	L8c09		;; 08a6: cd 09 8c    ...
	lxi	h,L0391		;; 08a9: 21 91 03    ...
	ora	m		;; 08ac: b6          .
	mov	b,a		;; 08ad: 47          G
	pop	psw		;; 08ae: f1          .
	ana	b		;; 08af: a0          .
	rar			;; 08b0: 1f          .
	jnc	L093e		;; 08b1: d2 3e 09    .>.
	lda	L0275		;; 08b4: 3a 75 02    :u.
	ora	a		;; 08b7: b7          .
	jrz	L08c6		;; 08b8: 28 0c       (.
	lda	L03f9		;; 08ba: 3a f9 03    :..
	rar			;; 08bd: 1f          .
	jrnc	L08c6		;; 08be: 30 06       0.
	mvi	a,000h		;; 08c0: 3e 00       >.
	push	psw		;; 08c2: f5          .
	call	L0573		;; 08c3: cd 73 05    .s.
L08c6:	ldx	a,-119		;; 08c6: dd 7e 89    .~.
	sta	L03f8		;; 08c9: 32 f8 03    2..
	ldx	a,-121		;; 08cc: dd 7e 87    .~.
	sta	L03f7		;; 08cf: 32 f7 03    2..
	lda	L0201		;; 08d2: 3a 01 02    :..
	ora	a		;; 08d5: b7          .
	jrnz	L08e1		;; 08d6: 20 09        .
	lxi	h,L02a3		;; 08d8: 21 a3 02    ...
	push	h		;; 08db: e5          .
	call	L72e8		;; 08dc: cd e8 72    ..r
	jr	L093e		;; 08df: 18 5d       .]

L08e1:	ldx	a,-119		;; 08e1: dd 7e 89    .~.
	lxi	h,L0232		;; 08e4: 21 32 02    .2.
	add	m		;; 08e7: 86          .
	stx	a,-123		;; 08e8: dd 77 85    .w.
	ldx	a,-121		;; 08eb: dd 7e 87    .~.
	stx	a,-124		;; 08ee: dd 77 84    .w.
	lda	L02ef		;; 08f1: 3a ef 02    :..
	cmpx	-121		;; 08f4: dd be 87    ...
	jrnc	L08ff		;; 08f7: 30 06       0.
	lda	L02ef		;; 08f9: 3a ef 02    :..
	stx	a,-124		;; 08fc: dd 77 84    .w.
L08ff:	ldx	a,-124		;; 08ff: dd 7e 84    .~.
	lxi	h,L0233		;; 0902: 21 33 02    .3.
	add	m		;; 0905: 86          .
	stx	a,-124		;; 0906: dd 77 84    .w.
	lda	L0231		;; 0909: 3a 31 02    :1.
	rar			;; 090c: 1f          .
	jrnc	L0921		;; 090d: 30 12       0.
	ldx	a,-124		;; 090f: dd 7e 84    .~.
	stx	a,-126		;; 0912: dd 77 82    .w.
	ldx	a,-123		;; 0915: dd 7e 85    .~.
	stx	a,-124		;; 0918: dd 77 84    .w.
	ldx	a,-126		;; 091b: dd 7e 82    .~.
	stx	a,-123		;; 091e: dd 77 85    .w.
L0921:	lxi	h,L0201		;; 0921: 21 01 02    ...
	push	h		;; 0924: e5          .
	ldx	a,-123		;; 0925: dd 7e 85    .~.
	push	psw		;; 0928: f5          .
	call	L0861		;; 0929: cd 61 08    .a.
	lxi	h,L0211		;; 092c: 21 11 02    ...
	push	h		;; 092f: e5          .
	ldx	a,-124		;; 0930: dd 7e 84    .~.
	push	psw		;; 0933: f5          .
	call	L0861		;; 0934: cd 61 08    .a.
	lxi	h,L0221		;; 0937: 21 21 02    ...
	push	h		;; 093a: e5          .
	call	L5b56		;; 093b: cd 56 5b    .V[
L093e:	call	L0496		;; 093e: cd 96 04    ...
	stx	a,-125		;; 0941: dd 77 83    .w.
	ldx	a,-119		;; 0944: dd 7e 89    .~.
	sta	L02e3		;; 0947: 32 e3 02    2..
	ldx	a,-121		;; 094a: dd 7e 87    .~.
	sta	L02ee		;; 094d: 32 ee 02    2..
	jmp	L8d56		;; 0950: c3 56 8d    .V.

L0953:	call	L8d27		;; 0953: cd 27 8d    .'.
	db	0,8
	ldx	a,-125		;; 0958: dd 7e 83    .~.
	push	psw		;; 095b: f5          .
	mvi	a,000h		;; 095c: 3e 00       >.
	push	psw		;; 095e: f5          .
	call	L0889		;; 095f: cd 89 08    ...
	jmp	L8d56		;; 0962: c3 56 8d    .V.

L0965:	call	L8d27		;; 0965: cd 27 8d    .'.
	db	0,6
	lda	L02e3		;; 096a: 3a e3 02    :..
	push	psw		;; 096d: f5          .
	mvi	a,000h		;; 096e: 3e 00       >.
	push	psw		;; 0970: f5          .
	call	L0889		;; 0971: cd 89 08    ...
	jmp	L8d56		;; 0974: c3 56 8d    .V.

L0977:	call	L8d27		;; 0977: cd 27 8d    .'.
	db	0feh,8
	lda	L02f6		;; 097c: 3a f6 02    :..
	xri	001h		;; 097f: ee 01       ..
	rar			;; 0981: 1f          .
	jnc	L0a62		;; 0982: d2 62 0a    .b.
	lda	L02ee		;; 0985: 3a ee 02    :..
	stx	a,-126		;; 0988: dd 77 82    .w.
	lda	L02e3		;; 098b: 3a e3 02    :..
	mov	l,a		;; 098e: 6f          o
	mvi	h,000h		;; 098f: 26 00       &.
	lxi	d,L03fa		;; 0991: 11 fa 03    ...
	dad	d		;; 0994: 19          .
	mov	a,m		;; 0995: 7e          ~
	lxi	h,L02ee		;; 0996: 21 ee 02    ...
	cmp	m		;; 0999: be          .
	jc	L0a52		;; 099a: da 52 0a    .R.
	lda	L0235		;; 099d: 3a 35 02    :5.
	ora	a		;; 09a0: b7          .
	jrnz	L09c4		;; 09a1: 20 21        .
	lda	L02e3		;; 09a3: 3a e3 02    :..
	mov	l,a		;; 09a6: 6f          o
	mvi	h,000h		;; 09a7: 26 00       &.
	lxi	d,L03fa		;; 09a9: 11 fa 03    ...
	dad	d		;; 09ac: 19          .
	push	h		;; 09ad: e5          .
	lda	L02ee		;; 09ae: 3a ee 02    :..
	mov	c,a		;; 09b1: 4f          O
	mvi	b,000h		;; 09b2: 06 00       ..
	pop	h		;; 09b4: e1          .
	mov	a,m		;; 09b5: 7e          ~
	mov	l,a		;; 09b6: 6f          o
	mvi	h,000h		;; 09b7: 26 00       &.
	ora	a		;; 09b9: b7          .
	dsbc	b		;; 09ba: ed 42       .B
	mov	a,l		;; 09bc: 7d          }
	push	psw		;; 09bd: f5          .
	call	L0771		;; 09be: cd 71 07    .q.
	jmp	L0a52		;; 09c1: c3 52 0a    .R.

L09c4:	lda	L02e3		;; 09c4: 3a e3 02    :..
	ora	a		;; 09c7: b7          .
	call	L8c09		;; 09c8: cd 09 8c    ...
	lxi	h,L0391		;; 09cb: 21 91 03    ...
	ora	m		;; 09ce: b6          .
	rar			;; 09cf: 1f          .
	jrnc	L09db		;; 09d0: 30 09       0.
	lxi	h,L0235		;; 09d2: 21 35 02    .5.
	push	h		;; 09d5: e5          .
	call	L5b56		;; 09d6: cd 56 5b    .V[
	jr	L0a13		;; 09d9: 18 38       .8

L09db:	lda	L02e3		;; 09db: 3a e3 02    :..
	mov	l,a		;; 09de: 6f          o
	mvi	h,000h		;; 09df: 26 00       &.
	lxi	d,L03c4		;; 09e1: 11 c4 03    ...
	dad	d		;; 09e4: 19          .
	mov	a,m		;; 09e5: 7e          ~
	push	psw		;; 09e6: f5          .
	lda	L02ee		;; 09e7: 3a ee 02    :..
	pop	b		;; 09ea: c1          .
	cmp	b		;; 09eb: b8          .
	jrnc	L09fe		;; 09ec: 30 10       0.
	lda	L02e3		;; 09ee: 3a e3 02    :..
	mov	l,a		;; 09f1: 6f          o
	mvi	h,000h		;; 09f2: 26 00       &.
	lxi	d,L03c4		;; 09f4: 11 c4 03    ...
	dad	d		;; 09f7: 19          .
	push	h		;; 09f8: e5          .
	lda	L02ee		;; 09f9: 3a ee 02    :..
	pop	h		;; 09fc: e1          .
	mov	m,a		;; 09fd: 77          w
L09fe:	lda	L02e3		;; 09fe: 3a e3 02    :..
	mov	l,a		;; 0a01: 6f          o
	mvi	h,000h		;; 0a02: 26 00       &.
	lxi	d,L03dd		;; 0a04: 11 dd 03    ...
	dad	d		;; 0a07: 19          .
	push	h		;; 0a08: e5          .
	lda	L02ef		;; 0a09: 3a ef 02    :..
	pop	h		;; 0a0c: e1          .
	mov	m,a		;; 0a0d: 77          w
	lxi	h,L03f6		;; 0a0e: 21 f6 03    ...
	mvi	m,001h		;; 0a11: 36 01       6.
L0a13:	lda	L02e3		;; 0a13: 3a e3 02    :..
	mov	l,a		;; 0a16: 6f          o
	mvi	h,000h		;; 0a17: 26 00       &.
	lxi	d,L03fa		;; 0a19: 11 fa 03    ...
	dad	d		;; 0a1c: 19          .
	lda	L02ee		;; 0a1d: 3a ee 02    :..
	cmp	m		;; 0a20: be          .
	jrnc	L0a52		;; 0a21: 30 2f       0/
	lxi	h,L029d		;; 0a23: 21 9d 02    ...
	push	h		;; 0a26: e5          .
	call	L72e8		;; 0a27: cd e8 72    ..r
	lda	L02e3		;; 0a2a: 3a e3 02    :..
	mov	l,a		;; 0a2d: 6f          o
	mvi	h,000h		;; 0a2e: 26 00       &.
	dad	h		;; 0a30: 29          )
	lxi	d,L0392		;; 0a31: 11 92 03    ...
	dad	d		;; 0a34: 19          .
	rst	4		;; 0a35: e7          .
	db	80h
	push	h		;; 0a37: e5          .
	lda	L02ee		;; 0a38: 3a ee 02    :..
	mov	l,a		;; 0a3b: 6f          o
	mvi	h,000h		;; 0a3c: 26 00       &.
	pop	d		;; 0a3e: d1          .
	dad	d		;; 0a3f: 19          .
	mvi	m,020h		;; 0a40: 36 20       6 
	lxi	h,L02a0		;; 0a42: 21 a0 02    ...
	push	h		;; 0a45: e5          .
	call	L72e8		;; 0a46: cd e8 72    ..r
	lda	L02ee		;; 0a49: 3a ee 02    :..
	inr	a		;; 0a4c: 3c          <
	sta	L02ee		;; 0a4d: 32 ee 02    2..
	jr	L0a13		;; 0a50: 18 c1       ..

L0a52:	lda	L02e3		;; 0a52: 3a e3 02    :..
	mov	l,a		;; 0a55: 6f          o
	mvi	h,000h		;; 0a56: 26 00       &.
	lxi	d,L03fa		;; 0a58: 11 fa 03    ...
	dad	d		;; 0a5b: 19          .
	push	h		;; 0a5c: e5          .
	ldx	a,-126		;; 0a5d: dd 7e 82    .~.
	pop	h		;; 0a60: e1          .
	mov	m,a		;; 0a61: 77          w
L0a62:	jmp	L8d56		;; 0a62: c3 56 8d    .V.

L0a65:	call	L8d27		;; 0a65: cd 27 8d    .'.
	db	0feh,0ch
	ldx	a,-121		;; 0a6a: dd 7e 87    .~.
	mov	b,a		;; 0a6d: 47          G
	ldx	a,-123		;; 0a6e: dd 7e 85    .~.
	call	L8953		;; 0a71: cd 53 89    .S.
	stx	b,-126		;; 0a74: dd 70 82    .p.
	jrc	L0a8c		;; 0a77: 38 13       8.
L0a79:	stx	a,-125		;; 0a79: dd 77 83    .w.
	push	psw		;; 0a7c: f5          .
	call	L0953		;; 0a7d: cd 53 09    .S.
	call	L0977		;; 0a80: cd 77 09    .w.
	ldx	a,-125		;; 0a83: dd 7e 83    .~.
	dcr	a		;; 0a86: 3d          =
	dcrx	-126		;; 0a87: dd 35 82    .5.
	jrnz	L0a79		;; 0a8a: 20 ed        .
L0a8c:	jmp	L8d56		;; 0a8c: c3 56 8d    .V.

L0a8f:	call	L8d27		;; 0a8f: cd 27 8d    .'.
	db	0feh,8
	mvi	a,007h		;; 0a94: 3e 07       >.
	push	psw		;; 0a96: f5          .
	call	L0414		;; 0a97: cd 14 04    ...
	lda	L02e3		;; 0a9a: 3a e3 02    :..
	stx	a,-125		;; 0a9d: dd 77 83    .w.
	lda	L02ee		;; 0aa0: 3a ee 02    :..
	stx	a,-126		;; 0aa3: dd 77 82    .w.
	mvi	a,000h		;; 0aa6: 3e 00       >.
	push	psw		;; 0aa8: f5          .
	lxi	b,0fffdh	;; 0aa9: 01 fd ff    ...
	lda	L02ef		;; 0aac: 3a ef 02    :..
	mov	l,a		;; 0aaf: 6f          o
	mvi	h,000h		;; 0ab0: 26 00       &.
	dad	b		;; 0ab2: 09          .
	mov	a,l		;; 0ab3: 7d          }
	push	psw		;; 0ab4: f5          .
	call	L0889		;; 0ab5: cd 89 08    ...
	mvi	a,003h		;; 0ab8: 3e 03       >.
	push	psw		;; 0aba: f5          .
	mvi	a,02ah		;; 0abb: 3e 2a       >*
	push	psw		;; 0abd: f5          .
	call	L0720		;; 0abe: cd 20 07    . .
	call	L0977		;; 0ac1: cd 77 09    .w.
	ldx	a,-125		;; 0ac4: dd 7e 83    .~.
	push	psw		;; 0ac7: f5          .
	ldx	a,-126		;; 0ac8: dd 7e 82    .~.
	push	psw		;; 0acb: f5          .
	call	L0889		;; 0acc: cd 89 08    ...
	jmp	L8d56		;; 0acf: c3 56 8d    .V.

L0ad2:	call	L8d27		;; 0ad2: cd 27 8d    .'.
	db	0,6
	lda	L03f7		;; 0ad7: 3a f7 03    :..
	lxi	h,L02ee		;; 0ada: 21 ee 02    ...
	cmp	m		;; 0add: be          .
	call	L8c0e		;; 0ade: cd 0e 8c    ...
	push	psw		;; 0ae1: f5          .
	lda	L03f8		;; 0ae2: 3a f8 03    :..
	lxi	h,L02e3		;; 0ae5: 21 e3 02    ...
	cmp	m		;; 0ae8: be          .
	call	L8c0e		;; 0ae9: cd 0e 8c    ...
	mov	b,a		;; 0aec: 47          G
	pop	psw		;; 0aed: f1          .
	ora	b		;; 0aee: b0          .
	rar			;; 0aef: 1f          .
	jrnc	L0afd		;; 0af0: 30 0b       0.
	lda	L02e3		;; 0af2: 3a e3 02    :..
	push	psw		;; 0af5: f5          .
	lda	L02ee		;; 0af6: 3a ee 02    :..
	push	psw		;; 0af9: f5          .
	call	L0889		;; 0afa: cd 89 08    ...
L0afd:	jmp	L8d56		;; 0afd: c3 56 8d    .V.

L0b00:	call	L8d27		;; 0b00: cd 27 8d    .'.
	db	0f8h,0eh
	lda	L02e3		;; 0b05: 3a e3 02    :..
	stx	a,-120		;; 0b08: dd 77 88    .w.
	lda	L02ee		;; 0b0b: 3a ee 02    :..
	stx	a,-122		;; 0b0e: dd 77 86    .w.
	call	L0ad2		;; 0b11: cd d2 0a    ...
	mvix	000h,-119	;; 0b14: dd 36 89 00 .6..
L0b18:	lda	L02e4		;; 0b18: 3a e4 02    :..
	cmpx	-119		;; 0b1b: dd be 89    ...
	mvi	a,000h		;; 0b1e: 3e 00       >.
	cmc			;; 0b20: 3f          ?
	ral			;; 0b21: 17          .
	lxi	h,L0391		;; 0b22: 21 91 03    ...
	ana	m		;; 0b25: a6          .
	rar			;; 0b26: 1f          .
	jnc	L0c3a		;; 0b27: d2 3a 0c    .:.
	ldx	l,-119		;; 0b2a: dd 6e 89    .n.
	mvi	h,000h		;; 0b2d: 26 00       &.
	lxi	d,L03c4		;; 0b2f: 11 c4 03    ...
	dad	d		;; 0b32: 19          .
	push	h		;; 0b33: e5          .
	ldx	l,-119		;; 0b34: dd 6e 89    .n.
	mvi	h,000h		;; 0b37: 26 00       &.
	lxi	d,L03dd		;; 0b39: 11 dd 03    ...
	dad	d		;; 0b3c: 19          .
	xthl			;; 0b3d: e3          .
	mov	a,m		;; 0b3e: 7e          ~
	pop	h		;; 0b3f: e1          .
	push	psw		;; 0b40: f5          .
	mov	a,m		;; 0b41: 7e          ~
	pop	b		;; 0b42: c1          .
	cmp	b		;; 0b43: b8          .
	jc	L0c30		;; 0b44: da 30 0c    .0.
	ldx	a,-119		;; 0b47: dd 7e 89    .~.
	push	psw		;; 0b4a: f5          .
	ldx	l,-119		;; 0b4b: dd 6e 89    .n.
	mvi	h,000h		;; 0b4e: 26 00       &.
	lxi	d,L03c4		;; 0b50: 11 c4 03    ...
	dad	d		;; 0b53: 19          .
	mov	a,m		;; 0b54: 7e          ~
	push	psw		;; 0b55: f5          .
	call	L0889		;; 0b56: cd 89 08    ...
	ldx	a,-119		;; 0b59: dd 7e 89    .~.
	lxi	h,L02e4		;; 0b5c: 21 e4 02    ...
	cmp	m		;; 0b5f: be          .
	jrnz	L0b8a		;; 0b60: 20 28        (
	lda	L0296		;; 0b62: 3a 96 02    :..
	xri	001h		;; 0b65: ee 01       ..
	rar			;; 0b67: 1f          .
	jrnc	L0b8a		;; 0b68: 30 20       0 
	ldx	l,-119		;; 0b6a: dd 6e 89    .n.
	mvi	h,000h		;; 0b6d: 26 00       &.
	lxi	d,L03dd		;; 0b6f: 11 dd 03    ...
	dad	d		;; 0b72: 19          .
	mov	a,m		;; 0b73: 7e          ~
	lxi	h,L02ef		;; 0b74: 21 ef 02    ...
	cmp	m		;; 0b77: be          .
	jrc	L0b8a		;; 0b78: 38 10       8.
	ldx	l,-119		;; 0b7a: dd 6e 89    .n.
	mvi	h,000h		;; 0b7d: 26 00       &.
	lxi	d,L03dd		;; 0b7f: 11 dd 03    ...
	dad	d		;; 0b82: 19          .
	push	h		;; 0b83: e5          .
	lda	L02ef		;; 0b84: 3a ef 02    :..
	dcr	a		;; 0b87: 3d          =
	pop	h		;; 0b88: e1          .
	mov	m,a		;; 0b89: 77          w
L0b8a:	ldx	l,-119		;; 0b8a: dd 6e 89    .n.
	mvi	h,000h		;; 0b8d: 26 00       &.
	lxi	d,L03c4		;; 0b8f: 11 c4 03    ...
	dad	d		;; 0b92: 19          .
	push	h		;; 0b93: e5          .
	ldx	l,-119		;; 0b94: dd 6e 89    .n.
	mvi	h,000h		;; 0b97: 26 00       &.
	lxi	d,L03dd		;; 0b99: 11 dd 03    ...
	dad	d		;; 0b9c: 19          .
	mov	a,m		;; 0b9d: 7e          ~
	mov	b,a		;; 0b9e: 47          G
	pop	h		;; 0b9f: e1          .
	mov	a,m		;; 0ba0: 7e          ~
	call	L894e		;; 0ba1: cd 4e 89    .N.
	stx	b,-126		;; 0ba4: dd 70 82    .p.
	jrc	L0c16		;; 0ba7: 38 6d       8m
L0ba9:	stx	a,-121		;; 0ba9: dd 77 87    .w.
	lda	L0297		;; 0bac: 3a 97 02    :..
	xri	001h		;; 0baf: ee 01       ..
	rar			;; 0bb1: 1f          .
	jrnc	L0c07		;; 0bb2: 30 53       0S
	ldx	l,-119		;; 0bb4: dd 6e 89    .n.
	mvi	h,000h		;; 0bb7: 26 00       &.
	dad	h		;; 0bb9: 29          )
	lxi	d,L0392		;; 0bba: 11 92 03    ...
	dad	d		;; 0bbd: 19          .
	rst	4		;; 0bbe: e7          .
	db	80h
	push	h		;; 0bc0: e5          .
	ldx	l,-121		;; 0bc1: dd 6e 87    .n.
	mvi	h,000h		;; 0bc4: 26 00       &.
	pop	d		;; 0bc6: d1          .
	dad	d		;; 0bc7: 19          .
	mov	a,m		;; 0bc8: 7e          ~
	stx	a,-124		;; 0bc9: dd 77 84    .w.
	lda	L0275		;; 0bcc: 3a 75 02    :u.
	ora	a		;; 0bcf: b7          .
	jrz	L0beb		;; 0bd0: 28 19       (.
	ldx	a,-124		;; 0bd2: dd 7e 84    .~.
	cpi	080h		;; 0bd5: fe 80       ..
	mvi	a,000h		;; 0bd7: 3e 00       >.
	cmc			;; 0bd9: 3f          ?
	ral			;; 0bda: 17          .
	stx	a,-125		;; 0bdb: dd 77 83    .w.
	lxi	h,L03f9		;; 0bde: 21 f9 03    ...
	cmp	m		;; 0be1: be          .
	jrz	L0beb		;; 0be2: 28 07       (.
	ldx	a,-125		;; 0be4: dd 7e 83    .~.
	push	psw		;; 0be7: f5          .
	call	L0573		;; 0be8: cd 73 05    .s.
L0beb:	lda	L029a		;; 0beb: 3a 9a 02    :..
	xri	001h		;; 0bee: ee 01       ..
	rar			;; 0bf0: 1f          .
	jrnc	L0c00		;; 0bf1: 30 0d       0.
	ldx	a,-124		;; 0bf3: dd 7e 84    .~.
	push	psw		;; 0bf6: f5          .
	mvi	a,07fh		;; 0bf7: 3e 7f       >.
	push	psw		;; 0bf9: f5          .
	call	L72f2		;; 0bfa: cd f2 72    ..r
	stx	a,-124		;; 0bfd: dd 77 84    .w.
L0c00:	ldx	a,-124		;; 0c00: dd 7e 84    .~.
	push	psw		;; 0c03: f5          .
	call	L0414		;; 0c04: cd 14 04    ...
L0c07:	call	L0496		;; 0c07: cd 96 04    ...
	stx	a,-123		;; 0c0a: dd 77 85    .w.
	ldx	a,-121		;; 0c0d: dd 7e 87    .~.
	inr	a		;; 0c10: 3c          <
	dcrx	-126		;; 0c11: dd 35 82    .5.
	jrnz	L0ba9		;; 0c14: 20 93        .
L0c16:	ldx	l,-119		;; 0c16: dd 6e 89    .n.
	mvi	h,000h		;; 0c19: 26 00       &.
	lxi	d,L03c4		;; 0c1b: 11 c4 03    ...
	dad	d		;; 0c1e: 19          .
	push	h		;; 0c1f: e5          .
	lda	L02ef		;; 0c20: 3a ef 02    :..
	pop	h		;; 0c23: e1          .
	mov	m,a		;; 0c24: 77          w
	ldx	l,-119		;; 0c25: dd 6e 89    .n.
	mvi	h,000h		;; 0c28: 26 00       &.
	lxi	d,L03dd		;; 0c2a: 11 dd 03    ...
	dad	d		;; 0c2d: 19          .
	mvi	m,000h		;; 0c2e: 36 00       6.
L0c30:	ldx	a,-119		;; 0c30: dd 7e 89    .~.
	inr	a		;; 0c33: 3c          <
	stx	a,-119		;; 0c34: dd 77 89    .w.
	jmp	L0b18		;; 0c37: c3 18 0b    ...

L0c3a:	lxi	h,L03f6		;; 0c3a: 21 f6 03    ...
	mvi	m,000h		;; 0c3d: 36 00       6.
	mvix	000h,-119	;; 0c3f: dd 36 89 00 .6..
L0c43:	lda	L03f6		;; 0c43: 3a f6 03    :..
	xri	001h		;; 0c46: ee 01       ..
	push	psw		;; 0c48: f5          .
	lda	L02e4		;; 0c49: 3a e4 02    :..
	cmpx	-119		;; 0c4c: dd be 89    ...
	mvi	a,000h		;; 0c4f: 3e 00       >.
	cmc			;; 0c51: 3f          ?
	ral			;; 0c52: 17          .
	mov	b,a		;; 0c53: 47          G
	pop	psw		;; 0c54: f1          .
	ana	b		;; 0c55: a0          .
	rar			;; 0c56: 1f          .
	jrnc	L0c83		;; 0c57: 30 2a       0*
	ldx	l,-119		;; 0c59: dd 6e 89    .n.
	mvi	h,000h		;; 0c5c: 26 00       &.
	lxi	d,L03c4		;; 0c5e: 11 c4 03    ...
	dad	d		;; 0c61: 19          .
	push	h		;; 0c62: e5          .
	ldx	l,-119		;; 0c63: dd 6e 89    .n.
	mvi	h,000h		;; 0c66: 26 00       &.
	lxi	d,L03dd		;; 0c68: 11 dd 03    ...
	dad	d		;; 0c6b: 19          .
	xthl			;; 0c6c: e3          .
	mov	a,m		;; 0c6d: 7e          ~
	pop	h		;; 0c6e: e1          .
	push	psw		;; 0c6f: f5          .
	mov	a,m		;; 0c70: 7e          ~
	pop	b		;; 0c71: c1          .
	cmp	b		;; 0c72: b8          .
	jrc	L0c7a		;; 0c73: 38 05       8.
	lxi	h,L03f6		;; 0c75: 21 f6 03    ...
	mvi	m,001h		;; 0c78: 36 01       6.
L0c7a:	ldx	a,-119		;; 0c7a: dd 7e 89    .~.
	inr	a		;; 0c7d: 3c          <
	stx	a,-119		;; 0c7e: dd 77 89    .w.
	jr	L0c43		;; 0c81: 18 c0       ..

L0c83:	ldx	a,-120		;; 0c83: dd 7e 88    .~.
	push	psw		;; 0c86: f5          .
	ldx	a,-122		;; 0c87: dd 7e 86    .~.
	push	psw		;; 0c8a: f5          .
	call	L0889		;; 0c8b: cd 89 08    ...
	jmp	L8d56		;; 0c8e: c3 56 8d    .V.

L0c91:	call	L8d27		;; 0c91: cd 27 8d    .'.
	db	0fbh,0bh
	lda	L02f2		;; 0c96: 3a f2 02    :..
	call	L0d8a		;; 0c99: cd 8a 0d    ...
L0c9c:	lda	L02e3		;; 0c9c: 3a e3 02    :..
	inr	a		;; 0c9f: 3c          <
	push	psw		;; 0ca0: f5          .
	call	L0953		;; 0ca1: cd 53 09    .S.
	call	L0496		;; 0ca4: cd 96 04    ...
	stx	a,-123		;; 0ca7: dd 77 85    .w.
	jmp	L0d98		;; 0caa: c3 98 0d    ...

L0cad:	lda	L02f6		;; 0cad: 3a f6 02    :..
	rar			;; 0cb0: 1f          .
	jnc	L0d5f		;; 0cb1: d2 5f 0d    ._.
	lda	L02f5		;; 0cb4: 3a f5 02    :..
	xri	001h		;; 0cb7: ee 01       ..
	push	psw		;; 0cb9: f5          .
	lda	L019d		;; 0cba: 3a 9d 01    :..
	cpi	03ah		;; 0cbd: fe 3a       .:
	call	L8c09		;; 0cbf: cd 09 8c    ...
	mov	b,a		;; 0cc2: 47          G
	pop	psw		;; 0cc3: f1          .
	ana	b		;; 0cc4: a0          .
	rar			;; 0cc5: 1f          .
	jrnc	L0ccf		;; 0cc6: 30 07       0.
	lda	L01ad		;; 0cc8: 3a ad 01    :..
	push	psw		;; 0ccb: f5          .
	call	L0749		;; 0ccc: cd 49 07    .I.
L0ccf:	mvix	000h,-122	;; 0ccf: dd 36 86 00 .6..
	mvix	000h,-125	;; 0cd3: dd 36 83 00 .6..
	lda	L02f5		;; 0cd7: 3a f5 02    :..
	stx	a,-126		;; 0cda: dd 77 82    .w.
L0cdd:	ldx	a,-122		;; 0cdd: dd 7e 86    .~.
	lxi	h,L02f7		;; 0ce0: 21 f7 02    ...
	cmp	m		;; 0ce3: be          .
	jrnc	L0d5a		;; 0ce4: 30 74       0t
	ldx	l,-122		;; 0ce6: dd 6e 86    .n.
	mvi	h,000h		;; 0ce9: 26 00       &.
	lxi	d,L02f8		;; 0ceb: 11 f8 02    ...
	dad	d		;; 0cee: 19          .
	mov	a,m		;; 0cef: 7e          ~
	stx	a,-124		;; 0cf0: dd 77 84    .w.
	cpi	020h		;; 0cf3: fe 20       . 
	jrnz	L0d19		;; 0cf5: 20 22        "
	ldx	a,-125		;; 0cf7: dd 7e 83    .~.
	inr	a		;; 0cfa: 3c          <
	stx	a,-125		;; 0cfb: dd 77 83    .w.
	ldx	a,-126		;; 0cfe: dd 7e 82    .~.
	rar			;; 0d01: 1f          .
	jrnc	L0d17		;; 0d02: 30 13       0.
	ldx	a,-122		;; 0d04: dd 7e 86    .~.
	inr	a		;; 0d07: 3c          <
	ani	007h		;; 0d08: e6 07       ..
	ora	a		;; 0d0a: b7          .
	jrnz	L0d17		;; 0d0b: 20 0a        .
	mvi	a,009h		;; 0d0d: 3e 09       >.
	push	psw		;; 0d0f: f5          .
	call	L0414		;; 0d10: cd 14 04    ...
	mvix	000h,-125	;; 0d13: dd 36 83 00 .6..
L0d17:	jr	L0d46		;; 0d17: 18 2d       .-

L0d19:	ldx	a,-125		;; 0d19: dd 7e 83    .~.
	push	psw		;; 0d1c: f5          .
	call	L0749		;; 0d1d: cd 49 07    .I.
	mvix	000h,-125	;; 0d20: dd 36 83 00 .6..
	ldx	a,-124		;; 0d24: dd 7e 84    .~.
	push	psw		;; 0d27: f5          .
	call	L0414		;; 0d28: cd 14 04    ...
	ldx	a,-124		;; 0d2b: dd 7e 84    .~.
	cpi	03bh		;; 0d2e: fe 3b       .;
	call	L8c09		;; 0d30: cd 09 8c    ...
	push	psw		;; 0d33: f5          .
	ldx	a,-124		;; 0d34: dd 7e 84    .~.
	cpi	027h		;; 0d37: fe 27       .'
	call	L8c09		;; 0d39: cd 09 8c    ...
	mov	b,a		;; 0d3c: 47          G
	pop	psw		;; 0d3d: f1          .
	ora	b		;; 0d3e: b0          .
	rar			;; 0d3f: 1f          .
	jrnc	L0d46		;; 0d40: 30 04       0.
	mvix	000h,-126	;; 0d42: dd 36 82 00 .6..
L0d46:	ldx	l,-122		;; 0d46: dd 6e 86    .n.
	mvi	h,000h		;; 0d49: 26 00       &.
	lxi	d,L02f8		;; 0d4b: 11 f8 02    ...
	dad	d		;; 0d4e: 19          .
	mvi	m,020h		;; 0d4f: 36 20       6 
	ldx	a,-122		;; 0d51: dd 7e 86    .~.
	inr	a		;; 0d54: 3c          <
	stx	a,-122		;; 0d55: dd 77 86    .w.
	jr	L0cdd		;; 0d58: 18 83       ..

L0d5a:	lxi	h,L02f7		;; 0d5a: 21 f7 02    ...
	mvi	m,000h		;; 0d5d: 36 00       6.
L0d5f:	call	L7650		;; 0d5f: cd 50 76    .Pv
	lhld	L02f3		;; 0d62: 2a f3 02    *..
	push	h		;; 0d65: e5          .
	call	L7682		;; 0d66: cd 82 76    ..v
	call	L768c		;; 0d69: cd 8c 76    ..v
	lxi	h,L02ee		;; 0d6c: 21 ee 02    ...
	mvi	m,000h		;; 0d6f: 36 00       6.
	lda	L02e3		;; 0d71: 3a e3 02    :..
	lxi	h,L02e4		;; 0d74: 21 e4 02    ...
	cmp	m		;; 0d77: be          .
	jrnc	L0d81		;; 0d78: 30 07       0.
	lda	L02e3		;; 0d7a: 3a e3 02    :..
	inr	a		;; 0d7d: 3c          <
	sta	L02e3		;; 0d7e: 32 e3 02    2..
L0d81:	jr	L0d98		;; 0d81: 18 15       ..

L0d83:	lxi	h,L02ee		;; 0d83: 21 ee 02    ...
	mvi	m,000h		;; 0d86: 36 00       6.
	jr	L0d98		;; 0d88: 18 0e       ..

L0d8a:	lxi	b,00003h	;; 0d8a: 01 03 00    ...
	call	L8d90		;; 0d8d: cd 90 8d    ...
	dw	L0c9c
	dw	L0cad
	dw	L0d83
	dw	L8e06
L0d98:	jmp	L8d56		;; 0d98: c3 56 8d    .V.

L0d9b:	call	L8d27		;; 0d9b: cd 27 8d    .'.
	db	0,8
L0da0:	call	L0799		;; 0da0: cd 99 07    ...
	lda	L02f5		;; 0da3: 3a f5 02    :..
	mov	l,a		;; 0da6: 6f          o
	mvi	h,000h		;; 0da7: 26 00       &.
	lxi	b,00005h	;; 0da9: 01 05 00    ...
	call	L88e9		;; 0dac: cd e9 88    ...
	lxi	d,L018f		;; 0daf: 11 8f 01    ...
	dad	d		;; 0db2: 19          .
	push	h		;; 0db3: e5          .
	ldx	l,-125		;; 0db4: dd 6e 83    .n.
	mvi	h,000h		;; 0db7: 26 00       &.
	pop	d		;; 0db9: d1          .
	dad	d		;; 0dba: 19          .
	lda	L02ee		;; 0dbb: 3a ee 02    :..
	cmp	m		;; 0dbe: be          .
	jrc	L0da0		;; 0dbf: 38 df       8.
	jmp	L8d56		;; 0dc1: c3 56 8d    .V.

L0dc4:	call	L8d27		;; 0dc4: cd 27 8d    .'.
	db	0feh,8
	lda	L02e4		;; 0dc9: 3a e4 02    :..
	mov	b,a		;; 0dcc: 47          G
	mvi	a,000h		;; 0dcd: 3e 00       >.
	call	L894e		;; 0dcf: cd 4e 89    .N.
	stx	b,-126		;; 0dd2: dd 70 82    .p.
	jrc	L0df0		;; 0dd5: 38 19       8.
L0dd7:	stx	a,-125		;; 0dd7: dd 77 83    .w.
	mov	l,a		;; 0dda: 6f          o
	mvi	h,000h		;; 0ddb: 26 00       &.
	lxi	d,L03fa		;; 0ddd: 11 fa 03    ...
	dad	d		;; 0de0: 19          .
	push	h		;; 0de1: e5          .
	lda	L0413		;; 0de2: 3a 13 04    :..
	pop	h		;; 0de5: e1          .
	mov	m,a		;; 0de6: 77          w
	ldx	a,-125		;; 0de7: dd 7e 83    .~.
	inr	a		;; 0dea: 3c          <
	dcrx	-126		;; 0deb: dd 35 82    .5.
	jrnz	L0dd7		;; 0dee: 20 e7        .
L0df0:	lda	L02e4		;; 0df0: 3a e4 02    :..
	mov	l,a		;; 0df3: 6f          o
	mvi	h,000h		;; 0df4: 26 00       &.
	lxi	d,L03fa		;; 0df6: 11 fa 03    ...
	dad	d		;; 0df9: 19          .
	push	h		;; 0dfa: e5          .
	lda	L02ef		;; 0dfb: 3a ef 02    :..
	pop	h		;; 0dfe: e1          .
	mov	m,a		;; 0dff: 77          w
	jmp	L8d56		;; 0e00: c3 56 8d    .V.

L0e03:	call	L8d27		;; 0e03: cd 27 8d    .'.
	db	0fah,0ch
	lda	L01df		;; 0e08: 3a df 01    :..
	dcr	a		;; 0e0b: 3d          =
	sta	L02e4		;; 0e0c: 32 e4 02    2..
	push	psw		;; 0e0f: f5          .
	mvi	a,018h		;; 0e10: 3e 18       >.
	pop	b		;; 0e12: c1          .
	cmp	b		;; 0e13: b8          .
	jrnc	L0e1b		;; 0e14: 30 05       0.
	lxi	h,L02e4		;; 0e16: 21 e4 02    ...
	mvi	m,017h		;; 0e19: 36 17       6.
L0e1b:	lxi	h,L02ef		;; 0e1b: 21 ef 02    ...
	mvi	m,04fh		;; 0e1e: 36 4f       6O
	lda	L02ef		;; 0e20: 3a ef 02    :..
	inr	a		;; 0e23: 3c          <
	sta	L0413		;; 0e24: 32 13 04    2..
	lxi	h,L02f2		;; 0e27: 21 f2 02    ...
	mvi	m,000h		;; 0e2a: 36 00       6.
	lxi	h,L0391		;; 0e2c: 21 91 03    ...
	mvi	m,001h		;; 0e2f: 36 01       6.
	lxi	b,00002h	;; 0e31: 01 02 00    ...
	lxi	h,0ff84h	;; 0e34: 21 84 ff    ...
	rst	2		;; 0e37: d7          .
	push	h		;; 0e38: e5          .
	lxi	h,L0298		;; 0e39: 21 98 02    ...
	pop	d		;; 0e3c: d1          .
	ldir			;; 0e3d: ed b0       ..
	lda	L02e4		;; 0e3f: 3a e4 02    :..
	mov	b,a		;; 0e42: 47          G
	mvi	a,000h		;; 0e43: 3e 00       >.
	call	L894e		;; 0e45: cd 4e 89    .N.
	stx	b,-125		;; 0e48: dd 70 83    .p.
	jc	L0ef4		;; 0e4b: da f4 0e    ...
L0e4e:	stx	a,-121		;; 0e4e: dd 77 87    .w.
	lda	L0297		;; 0e51: 3a 97 02    :..
	xri	001h		;; 0e54: ee 01       ..
	rar			;; 0e56: 1f          .
	jrnc	L0e6d		;; 0e57: 30 14       0.
	ldx	l,-121		;; 0e59: dd 6e 87    .n.
	mvi	h,000h		;; 0e5c: 26 00       &.
	dad	h		;; 0e5e: 29          )
	lxi	d,L0392		;; 0e5f: 11 92 03    ...
	dad	d		;; 0e62: 19          .
	push	h		;; 0e63: e5          .
	lxi	h,00050h	;; 0e64: 21 50 00    .P.
	push	h		;; 0e67: e5          .
	call	L9016		;; 0e68: cd 16 90    ...
	jr	L0e92		;; 0e6b: 18 25       .%

L0e6d:	ldx	l,-121		;; 0e6d: dd 6e 87    .n.
	mvi	h,000h		;; 0e70: 26 00       &.
	dad	h		;; 0e72: 29          )
	lxi	d,L0392		;; 0e73: 11 92 03    ...
	dad	d		;; 0e76: 19          .
	lxi	b,00002h	;; 0e77: 01 02 00    ...
	push	h		;; 0e7a: e5          .
	lxi	h,0ff84h	;; 0e7b: 21 84 ff    ...
	rst	2		;; 0e7e: d7          .
	pop	d		;; 0e7f: d1          .
	ldir			;; 0e80: ed b0       ..
	lxi	b,00050h	;; 0e82: 01 50 00    .P.
	ldx	l,-124		;; 0e85: dd 6e 84    .n.
	ldx	h,-123		;; 0e88: dd 66 85    .f.
	dad	b		;; 0e8b: 09          .
	stx	l,-124		;; 0e8c: dd 75 84    .u.
	stx	h,-123		;; 0e8f: dd 74 85    .t.
L0e92:	ldx	l,-121		;; 0e92: dd 6e 87    .n.
	mvi	h,000h		;; 0e95: 26 00       &.
	lxi	d,L03c4		;; 0e97: 11 c4 03    ...
	dad	d		;; 0e9a: 19          .
	push	h		;; 0e9b: e5          .
	lda	L02ef		;; 0e9c: 3a ef 02    :..
	pop	h		;; 0e9f: e1          .
	mov	m,a		;; 0ea0: 77          w
	ldx	l,-121		;; 0ea1: dd 6e 87    .n.
	mvi	h,000h		;; 0ea4: 26 00       &.
	lxi	d,L03dd		;; 0ea6: 11 dd 03    ...
	dad	d		;; 0ea9: 19          .
	mvi	m,000h		;; 0eaa: 36 00       6.
	lda	L02ef		;; 0eac: 3a ef 02    :..
	mov	b,a		;; 0eaf: 47          G
	mvi	a,000h		;; 0eb0: 3e 00       >.
	call	L894e		;; 0eb2: cd 4e 89    .N.
	stx	b,-126		;; 0eb5: dd 70 82    .p.
	jrc	L0eea		;; 0eb8: 38 30       80
L0eba:	stx	a,-122		;; 0eba: dd 77 86    .w.
	lxi	h,L029d		;; 0ebd: 21 9d 02    ...
	push	h		;; 0ec0: e5          .
	call	L72e8		;; 0ec1: cd e8 72    ..r
	ldx	l,-121		;; 0ec4: dd 6e 87    .n.
	mvi	h,000h		;; 0ec7: 26 00       &.
	dad	h		;; 0ec9: 29          )
	lxi	d,L0392		;; 0eca: 11 92 03    ...
	dad	d		;; 0ecd: 19          .
	rst	4		;; 0ece: e7          .
	db	80h
	push	h		;; 0ed0: e5          .
	ldx	l,-122		;; 0ed1: dd 6e 86    .n.
	mvi	h,000h		;; 0ed4: 26 00       &.
	pop	d		;; 0ed6: d1          .
	dad	d		;; 0ed7: 19          .
	mvi	m,020h		;; 0ed8: 36 20       6 
	lxi	h,L02a0		;; 0eda: 21 a0 02    ...
	push	h		;; 0edd: e5          .
	call	L72e8		;; 0ede: cd e8 72    ..r
	ldx	a,-122		;; 0ee1: dd 7e 86    .~.
	inr	a		;; 0ee4: 3c          <
	dcrx	-126		;; 0ee5: dd 35 82    .5.
	jrnz	L0eba		;; 0ee8: 20 d0        .
L0eea:	ldx	a,-121		;; 0eea: dd 7e 87    .~.
	inr	a		;; 0eed: 3c          <
	dcrx	-125		;; 0eee: dd 35 83    .5.
	jnz	L0e4e		;; 0ef1: c2 4e 0e    .N.
L0ef4:	lxi	h,L01e1		;; 0ef4: 21 e1 01    ...
	push	h		;; 0ef7: e5          .
	call	L5b56		;; 0ef8: cd 56 5b    .V[
	lxi	h,L02a6		;; 0efb: 21 a6 02    ...
	push	h		;; 0efe: e5          .
	call	L72e8		;; 0eff: cd e8 72    ..r
	jmp	L8d56		;; 0f02: c3 56 8d    .V.

L0f05:	call	L8d27		;; 0f05: cd 27 8d    .'.
	db	0,6
	mvi	a,000h		;; 0f0a: 3e 00       >.
	push	psw		;; 0f0c: f5          .
	lda	L02e4		;; 0f0d: 3a e4 02    :..
	push	psw		;; 0f10: f5          .
	call	L0a65		;; 0f11: cd 65 0a    .e.
	lxi	h,L01f1		;; 0f14: 21 f1 01    ...
	push	h		;; 0f17: e5          .
	call	L5b56		;; 0f18: cd 56 5b    .V[
	lxi	h,L02a9		;; 0f1b: 21 a9 02    ...
	push	h		;; 0f1e: e5          .
	call	L72e8		;; 0f1f: cd e8 72    ..r
	jmp	L8d56		;; 0f22: c3 56 8d    .V.

L0f25:	call	L8d27		;; 0f25: cd 27 8d    .'.
	db	0,8
	call	L0496		;; 0f2a: cd 96 04    ...
	sta	L02f0		;; 0f2d: 32 f0 02    2..
	lda	L038f		;; 0f30: 3a 8f 03    :..
	lxi	h,L0390		;; 0f33: 21 90 03    ...
	cmp	m		;; 0f36: be          .
	jrnz	L0f4c		;; 0f37: 20 13        .
	lda	L03f6		;; 0f39: 3a f6 03    :..
	rar			;; 0f3c: 1f          .
	jrnc	L0f42		;; 0f3d: 30 03       0.
	call	L0b00		;; 0f3f: cd 00 0b    ...
L0f42:	ldx	l,-126		;; 0f42: dd 6e 82    .n.
	ldx	h,-125		;; 0f45: dd 66 83    .f.
	mvi	m,000h		;; 0f48: 36 00       6.
	jr	L0f7f		;; 0f4a: 18 33       .3

L0f4c:	ldx	l,-126		;; 0f4c: dd 6e 82    .n.
	ldx	h,-125		;; 0f4f: dd 66 83    .f.
	push	h		;; 0f52: e5          .
	lda	L038f		;; 0f53: 3a 8f 03    :..
	rst	4		;; 0f56: e7          .
	db	84h
	lxi	d,L0348		;; 0f58: 11 48 03    .H.
	dad	d		;; 0f5b: 19          .
	mov	a,m		;; 0f5c: 7e          ~
	pop	h		;; 0f5d: e1          .
	mov	m,a		;; 0f5e: 77          w
	lda	L038f		;; 0f5f: 3a 8f 03    :..
	inr	a		;; 0f62: 3c          <
	push	psw		;; 0f63: f5          .
	mvi	a,047h		;; 0f64: 3e 47       >G
	call	L896c		;; 0f66: cd 6c 89    .l.
	sta	L038f		;; 0f69: 32 8f 03    2..
	lxi	h,L0390		;; 0f6c: 21 90 03    ...
	cmp	m		;; 0f6f: be          .
	jrnz	L0f7f		;; 0f70: 20 0d        .
	lxi	h,L0391		;; 0f72: 21 91 03    ...
	mvi	m,001h		;; 0f75: 36 01       6.
	lxi	h,L02f1		;; 0f77: 21 f1 02    ...
	mvi	m,000h		;; 0f7a: 36 00       6.
	call	L0ad2		;; 0f7c: cd d2 0a    ...
L0f7f:	jmp	L8d56		;; 0f7f: c3 56 8d    .V.

L0f82:	call	L8d27		;; 0f82: cd 27 8d    .'.
	db	0,8
L0f87:	ldx	l,-126		;; 0f87: dd 6e 82    .n.
	ldx	h,-125		;; 0f8a: dd 66 83    .f.
	push	h		;; 0f8d: e5          .
	call	L0f25		;; 0f8e: cd 25 0f    .%.
	ldx	l,-126		;; 0f91: dd 6e 82    .n.
	ldx	h,-125		;; 0f94: dd 66 83    .f.
	mov	a,m		;; 0f97: 7e          ~
	ora	a		;; 0f98: b7          .
	jrz	L0f87		;; 0f99: 28 ec       (.
	jmp	L8d56		;; 0f9b: c3 56 8d    .V.

L0f9e:	db	0
L0f9f:	db	'*** DazzleStar *'
	db	'**     (Nov 86)'
L0fbe:	call	L8d27		;; 0fbe: cd 27 8d    .'.
	db	0c5h,'A'
	mvix	003h,-125	;; 0fc3: dd 36 83 03 .6..
	lxi	h,L0143		;; 0fc7: 21 43 01    .C.
	call	L75ea		;; 0fca: cd ea 75    ..u
	lxi	h,0ff85h	;; 0fcd: 21 85 ff    ...
	rst	2		;; 0fd0: d7          .
	mvi	a,037h		;; 0fd1: 3e 37       >7
	call	L8b81		;; 0fd3: cd 81 8b    ...
	lda	L02e4		;; 0fd6: 3a e4 02    :..
	mov	b,a		;; 0fd9: 47          G
	mvi	a,000h		;; 0fda: 3e 00       >.
	call	L894e		;; 0fdc: cd 4e 89    .N.
	stx	b,-126		;; 0fdf: dd 70 82    .p.
	jrc	L1049		;; 0fe2: 38 65       8e
L0fe4:	stx	a,-124		;; 0fe4: dd 77 84    .w.
	push	psw		;; 0fe7: f5          .
	call	L0953		;; 0fe8: cd 53 09    .S.
	ldx	a,-125		;; 0feb: dd 7e 83    .~.
	push	psw		;; 0fee: f5          .
	call	L0771		;; 0fef: cd 71 07    .q.
	lxi	h,0ff85h	;; 0ff2: 21 85 ff    ...
	rst	2		;; 0ff5: d7          .
	call	L75ea		;; 0ff6: cd ea 75    ..u
	mvi	a,037h		;; 0ff9: 3e 37       >7
	call	L8bb0		;; 0ffb: cd b0 8b    ...
	call	L0803		;; 0ffe: cd 03 08    ...
	call	L0977		;; 1001: cd 77 09    .w.
	ldx	a,-124		;; 1004: dd 7e 84    .~.
	ora	a		;; 1007: b7          .
	jrnz	L1020		;; 1008: 20 16        .
	lxi	h,L0f9f		;; 100a: 21 9f 0f    ...
	call	L75be		;; 100d: cd be 75    ..u
	db	1fh
	lxi	h,0ff85h	;; 1011: 21 85 ff    ...
	rst	2		;; 1014: d7          .
	mvi	a,037h		;; 1015: 3e 37       >7
	call	L8b81		;; 1017: cd 81 8b    ...
	lda	L0f9e		;; 101a: 3a 9e 0f    :..
	stx	a,-118		;; 101d: dd 77 8a    .w.
L1020:	ldx	a,-125		;; 1020: dd 7e 83    .~.
	inr	a		;; 1023: 3c          <
	stx	a,-125		;; 1024: dd 77 83    .w.
	lxi	h,L0189		;; 1027: 21 89 01    ...
	cmp	m		;; 102a: be          .
	jrnz	L1040		;; 102b: 20 13        .
	mvix	001h,-125	;; 102d: dd 36 83 01 .6..
	lxi	h,L010a		;; 1031: 21 0a 01    ...
	call	L75ea		;; 1034: cd ea 75    ..u
	lxi	h,0ff85h	;; 1037: 21 85 ff    ...
	rst	2		;; 103a: d7          .
	mvi	a,037h		;; 103b: 3e 37       >7
	call	L8b81		;; 103d: cd 81 8b    ...
L1040:	ldx	a,-124		;; 1040: dd 7e 84    .~.
	inr	a		;; 1043: 3c          <
	dcrx	-126		;; 1044: dd 35 82    .5.
	jrnz	L0fe4		;; 1047: 20 9b        .
L1049:	jmp	L8d56		;; 1049: c3 56 8d    .V.

L104c:	db	0,0
L104e:	db	0,0
L1050:	db	0
L1051:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0
L1074:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0
L1098:	db	0,0,0,0
L109c:	db	0
L109d:	db	0,0
L109f:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L10af:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L10bf:	db	0
L10c0:	db	0,0
L10c2:	db	0,0,0,0,0,0,0,0
L10ca:	db	0,0
L10cc:	db	0,0
L10ce:	db	0,0
L10d0:	db	0
L10d1:	db	0
L10d2:	db	0
L10d3:	call	L8d27		;; 10d3: cd 27 8d    .'.
	db	0fbh,0dh
	mvix	001h,-122	;; 10d8: dd 36 86 01 .6..
	lxi	h,0ffffh	;; 10dc: 21 ff ff    ...
	shld	L10cc		;; 10df: 22 cc 10    "..
	lhld	L10ce		;; 10e2: 2a ce 10    *..
	rst	3		;; 10e5: df          .
	db	4
L10e7:	ldx	a,-123		;; 10e7: dd 7e 85    .~.
	ora	a		;; 10ea: b7          .
	jrz	L1158		;; 10eb: 28 6b       (k
	rst	3		;; 10ed: df          .
	db	84h
	inx	h		;; 10ef: 23          #
	inx	h		;; 10f0: 23          #
	rst	4		;; 10f1: e7          .
	db	80h
	rst	3		;; 10f3: df          .
	db	2
	ldx	c,-126		;; 10f5: dd 4e 82    .N.
	ldx	b,-125		;; 10f8: dd 46 83    .F.
	rst	3		;; 10fb: df          .
	db	87h
	ora	a		;; 10fd: b7          .
	dsbc	b		;; 10fe: ed 42       .B
	jrnc	L1114		;; 1100: 30 12       0.
	lbcd	L10cc		;; 1102: ed 4b cc 10 .K..
	rst	3		;; 1106: df          .
	db	82h
	ora	a		;; 1108: b7          .
	dsbc	b		;; 1109: ed 42       .B
	jrnc	L1112		;; 110b: 30 05       0.
	rst	3		;; 110d: df          .
	db	82h
	shld	L10cc		;; 110f: 22 cc 10    "..
L1112:	jr	L114c		;; 1112: 18 38       .8

L1114:	rst	3		;; 1114: df          .
	db	84h
	lxi	d,00004h	;; 1116: 11 04 00    ...
	dad	d		;; 1119: 19          .
	mov	c,m		;; 111a: 4e          N
	inx	h		;; 111b: 23          #
	mov	b,m		;; 111c: 46          F
	rst	3		;; 111d: df          .
	db	82h
	dad	b		;; 111f: 09          .
	mov	b,h		;; 1120: 44          D
	mov	c,l		;; 1121: 4d          M
	rst	3		;; 1122: df          .
	db	87h
	ora	a		;; 1124: b7          .
	dsbc	b		;; 1125: ed 42       .B
	jrnc	L114c		;; 1127: 30 23       0#
	mvix	000h,-122	;; 1129: dd 36 86 00 .6..
	rst	3		;; 112d: df          .
	db	87h
	rst	4		;; 112f: e7          .
	db	87h
	push	h		;; 1131: e5          .
	push	b		;; 1132: c5          .
	rst	3		;; 1133: df          .
	db	82h
	rst	4		;; 1135: e7          .
	db	87h
	call	L87f6		;; 1137: cd f6 87    ...
	push	h		;; 113a: e5          .
	push	b		;; 113b: c5          .
	rst	3		;; 113c: df          .
	db	84h
	rst	4		;; 113e: e7          .
	db	80h
	rst	4		;; 1140: e7          .
	db	87h
	call	L87e7		;; 1142: cd e7 87    ...
	mov	h,b		;; 1145: 60          `
	mov	l,c		;; 1146: 69          i
	shld	L10ca		;; 1147: 22 ca 10    "..
	jr	L1158		;; 114a: 18 0c       ..

L114c:	rst	3		;; 114c: df          .
	db	84h
	lxi	d,00006h	;; 114e: 11 06 00    ...
	dad	d		;; 1151: 19          .
	rst	4		;; 1152: e7          .
	db	80h
	rst	3		;; 1154: df          .
	db	4
	jr	L10e7		;; 1156: 18 8f       ..

L1158:	ldx	a,-122		;; 1158: dd 7e 86    .~.
	jmp	L8d56		;; 115b: c3 56 8d    .V.

L115e:	call	L8d27		;; 115e: cd 27 8d    .'.
	db	0feh,8
	lhld	L10cc		;; 1163: 2a cc 10    *..
	rst	3		;; 1166: df          .
	db	2
	jmp	L8d56		;; 1168: c3 56 8d    .V.

L116b:	call	L8d27		;; 116b: cd 27 8d    .'.
	db	0f6h,10h
	call	L66d1		;; 1170: cd d1 66    ..f
	lhld	L10ce		;; 1173: 2a ce 10    *..
	rst	3		;; 1176: df          .
	db	0ah
	inx	h		;; 1178: 23          #
	inx	h		;; 1179: 23          #
	rst	4		;; 117a: e7          .
	db	80h
	rst	3		;; 117c: df          .
	db	4
	lxi	b,00000h	;; 117e: 01 00 00    ...
	lxi	h,00000h	;; 1181: 21 00 00    ...
	call	L8d71		;; 1184: cd 71 8d    .q.
	dw	L104c
L1189:	ldx	a,-117		;; 1189: dd 7e 8b    .~.
	ora	a		;; 118c: b7          .
	jrz	L11dd		;; 118d: 28 4e       (N
	rst	3		;; 118f: df          .
	db	8ah
	inx	h		;; 1191: 23          #
	inx	h		;; 1192: 23          #
	rst	4		;; 1193: e7          .
	db	80h
	rst	3		;; 1195: df          .
	db	2
	rst	3		;; 1197: df          .
	db	84h
	push	h		;; 1199: e5          .
	rst	3		;; 119a: df          .
	db	82h
	push	h		;; 119c: e5          .
	call	L671c		;; 119d: cd 1c 67    ..g
	rst	3		;; 11a0: df          .
	db	8ah
	inx	h		;; 11a2: 23          #
	inx	h		;; 11a3: 23          #
	push	h		;; 11a4: e5          .
	rst	3		;; 11a5: df          .
	db	8ah
	lxi	d,00004h	;; 11a7: 11 04 00    ...
	dad	d		;; 11aa: 19          .
	mov	c,m		;; 11ab: 4e          N
	inx	h		;; 11ac: 23          #
	mov	b,m		;; 11ad: 46          F
	pop	h		;; 11ae: e1          .
	rst	4		;; 11af: e7          .
	db	80h
	dad	b		;; 11b1: 09          .
	rst	3		;; 11b2: df          .
	db	4
	dcx	h		;; 11b4: 2b          +
	rst	4		;; 11b5: e7          .
	db	87h
	call	L8c3a		;; 11b7: cd 3a 8c    .:.
	db	86h
	push	h		;; 11bb: e5          .
	push	b		;; 11bc: c5          .
	call	L8d60		;; 11bd: cd 60 8d    .`.
	dw	L104c
	call	L8870		;; 11c2: cd 70 88    .p.
	jm	L11d1		;; 11c5: fa d1 11    ...
	call	L8c26		;; 11c8: cd 26 8c    .&.
	db	86h
	call	L8d71		;; 11cc: cd 71 8d    .q.
	dw	L104c
L11d1:	rst	3		;; 11d1: df          .
	db	8ah
	lxi	d,00006h	;; 11d3: 11 06 00    ...
	dad	d		;; 11d6: 19          .
	rst	4		;; 11d7: e7          .
	db	80h
	rst	3		;; 11d9: df          .
	db	0ah
	jr	L1189		;; 11db: 18 ac       ..

L11dd:	jmp	L8d56		;; 11dd: c3 56 8d    .V.

L11e0:	call	L8d27		;; 11e0: cd 27 8d    .'.
	db	0ffh,0bh
	lda	L10d0		;; 11e5: 3a d0 10    :..
	xri	001h		;; 11e8: ee 01       ..
	rar			;; 11ea: 1f          .
	jrnc	L11f3		;; 11eb: 30 06       0.
	lhld	L10ce		;; 11ed: 2a ce 10    *..
	shld	L10d1		;; 11f0: 22 d1 10    "..
L11f3:	lxi	h,L10d0		;; 11f3: 21 d0 10    ...
	mvi	m,000h		;; 11f6: 36 00       6.
	lda	L10d2		;; 11f8: 3a d2 10    :..
	ora	a		;; 11fb: b7          .
	jrz	L1227		;; 11fc: 28 29       ()
	rst	3		;; 11fe: df          .
	db	85h
	push	h		;; 1200: e5          .
	lhld	L10d1		;; 1201: 2a d1 10    *..
	pop	d		;; 1204: d1          .
	ldi			;; 1205: ed a0       ..
	ldi			;; 1207: ed a0       ..
	rst	3		;; 1209: df          .
	db	83h
	push	h		;; 120b: e5          .
	lhld	L10d1		;; 120c: 2a d1 10    *..
	inx	h		;; 120f: 23          #
	inx	h		;; 1210: 23          #
	pop	d		;; 1211: d1          .
	ldi			;; 1212: ed a0       ..
	ldi			;; 1214: ed a0       ..
	lhld	L10d1		;; 1216: 2a d1 10    *..
	lxi	d,00006h	;; 1219: 11 06 00    ...
	dad	d		;; 121c: 19          .
	rst	4		;; 121d: e7          .
	db	80h
	shld	L10d1		;; 121f: 22 d1 10    "..
	lxi	h,L10d0		;; 1222: 21 d0 10    ...
	mvi	m,001h		;; 1225: 36 01       6.
L1227:	lda	L10d0		;; 1227: 3a d0 10    :..
	stx	a,-126		;; 122a: dd 77 82    .w.
	jmp	L8d56		;; 122d: c3 56 8d    .V.

L1230:	call	L8d27		;; 1230: cd 27 8d    .'.
	db	0f7h
L1234:	db	13h
	mvix	000h,-118	;; 1235: dd 36 8a 00 .6..
	lhld	L10ce		;; 1239: 2a ce 10    *..
	rst	3		;; 123c: df          .
	db	8
L123e:	ldx	a,-119		;; 123e: dd 7e 89    .~.
	ora	a		;; 1241: b7          .
	jz	L131f		;; 1242: ca 1f 13    ...
	rst	3		;; 1245: df          .
	db	88h
	push	h		;; 1247: e5          .
	rst	3		;; 1248: df          .
	db	8dh
	rst	4		;; 124a: e7          .
	db	87h
	pop	d		;; 124c: d1          .
	push	h		;; 124d: e5          .
	push	b		;; 124e: c5          .
	xchg			;; 124f: eb          .
	rst	4		;; 1250: e7          .
	db	80h
	rst	4		;; 1252: e7          .
	db	87h
	call	L87f6		;; 1254: cd f6 87    ...
	call	L8c3a		;; 1257: cd 3a 8c    .:.
	db	82h
	mov	a,h		;; 125b: 7c          |
	ora	l		;; 125c: b5          .
	ora	b		;; 125d: b0          .
	ora	c		;; 125e: b1          .
	jrnz	L1270		;; 125f: 20 0f        .
	rst	3		;; 1261: df          .
	db	88h
	inx	h		;; 1263: 23          #
	inx	h		;; 1264: 23          #
	push	h		;; 1265: e5          .
	rst	3		;; 1266: df          .
	db	8bh
	rst	4		;; 1268: e7          .
	db	81h
	jmp	L1321		;; 126a: c3 21 13    ...

	jmp	L1312		;; 126d: c3 12 13    ...

L1270:	call	L8c26		;; 1270: cd 26 8c    .&.
	db	82h
	mov	a,h		;; 1274: 7c          |
	ora	a		;; 1275: b7          .
	call	L8c18		;; 1276: cd 18 8c    ...
	push	psw		;; 1279: f5          .
	call	L8c26		;; 127a: cd 26 8c    .&.
	db	82h
	push	h		;; 127e: e5          .
	push	b		;; 127f: c5          .
	rst	3		;; 1280: df          .
	db	88h
	lxi	d,00004h	;; 1282: 11 04 00    ...
	dad	d		;; 1285: 19          .
	rst	4		;; 1286: e7          .
	db	80h
	rst	4		;; 1288: e7          .
	db	87h
	call	L8870		;; 128a: cd 70 88    .p.
	call	L8c13		;; 128d: cd 13 8c    ...
	mov	b,a		;; 1290: 47          G
	pop	psw		;; 1291: f1          .
	ana	b		;; 1292: a0          .
	rar			;; 1293: 1f          .
	jrnc	L1312		;; 1294: 30 7c       0|
	lxi	h,0ff86h	;; 1296: 21 86 ff    ...
	rst	2		;; 1299: d7          .
	push	h		;; 129a: e5          .
	lxi	h,00008h	;; 129b: 21 08 00    ...
	push	h		;; 129e: e5          .
	call	L9016		;; 129f: cd 16 90    ...
	rst	3		;; 12a2: df          .
	db	86h
	inx	h		;; 12a4: 23          #
	inx	h		;; 12a5: 23          #
	push	h		;; 12a6: e5          .
	rst	3		;; 12a7: df          .
	db	8bh
	rst	4		;; 12a9: e7          .
	db	81h
	rst	3		;; 12ab: df          .
	db	86h
	lxi	d,00004h	;; 12ad: 11 04 00    ...
	dad	d		;; 12b0: 19          .
	push	h		;; 12b1: e5          .
	rst	3		;; 12b2: df          .
	db	88h
	lxi	d,00004h	;; 12b4: 11 04 00    ...
	dad	d		;; 12b7: 19          .
	push	h		;; 12b8: e5          .
	call	L8c26		;; 12b9: cd 26 8c    .&.
	db	82h
	xthl			;; 12bd: e3          .
	push	b		;; 12be: c5          .
	rst	4		;; 12bf: e7          .
	db	80h
	rst	4		;; 12c1: e7          .
	db	87h
	call	L8d87		;; 12c3: cd 87 8d    ...
	call	L87f6		;; 12c6: cd f6 87    ...
	mov	h,b		;; 12c9: 60          `
	mov	l,c		;; 12ca: 69          i
	rst	4		;; 12cb: e7          .
	db	81h
	rst	3		;; 12cd: df          .
	db	86h
	push	h		;; 12cf: e5          .
	rst	3		;; 12d0: df          .
	db	88h
	push	h		;; 12d2: e5          .
	call	L8c26		;; 12d3: cd 26 8c    .&.
	db	82h
	xthl			;; 12d7: e3          .
	push	b		;; 12d8: c5          .
	rst	4		;; 12d9: e7          .
	db	80h
	rst	4		;; 12db: e7          .
	db	87h
	call	L87e7		;; 12dd: cd e7 87    ...
	mov	h,b		;; 12e0: 60          `
	mov	l,c		;; 12e1: 69          i
	rst	4		;; 12e2: e7          .
	db	81h
	rst	3		;; 12e4: df          .
	db	88h
	lxi	d,00004h	;; 12e6: 11 04 00    ...
	dad	d		;; 12e9: 19          .
	push	h		;; 12ea: e5          .
	call	L8c26		;; 12eb: cd 26 8c    .&.
	db	82h
	mov	h,b		;; 12ef: 60          `
	mov	l,c		;; 12f0: 69          i
	rst	4		;; 12f1: e7          .
	db	81h
	rst	3		;; 12f3: df          .
	db	86h
	lxi	d,00006h	;; 12f5: 11 06 00    ...
	dad	d		;; 12f8: 19          .
	push	h		;; 12f9: e5          .
	rst	3		;; 12fa: df          .
	db	88h
	lxi	d,00006h	;; 12fc: 11 06 00    ...
	dad	d		;; 12ff: 19          .
	pop	d		;; 1300: d1          .
	ldi			;; 1301: ed a0       ..
	ldi			;; 1303: ed a0       ..
	rst	3		;; 1305: df          .
	db	88h
	lxi	d,00006h	;; 1307: 11 06 00    ...
	dad	d		;; 130a: 19          .
	push	h		;; 130b: e5          .
	rst	3		;; 130c: df          .
	db	86h
	rst	4		;; 130e: e7          .
	db	81h
	jr	L1321		;; 1310: 18 0f       ..

L1312:	rst	3		;; 1312: df          .
	db	88h
	lxi	d,00006h	;; 1314: 11 06 00    ...
	dad	d		;; 1317: 19          .
	rst	4		;; 1318: e7          .
	db	80h
	rst	3		;; 131a: df          .
	db	8
	jmp	L123e		;; 131c: c3 3e 12    .>.

L131f:	jr	L1328		;; 131f: 18 07       ..

L1321:	mvix	001h,-118	;; 1321: dd 36 8a 01 .6..
	call	L116b		;; 1325: cd 6b 11    .k.
L1328:	ldx	a,-118		;; 1328: dd 7e 8a    .~.
	jmp	L8d56		;; 132b: c3 56 8d    .V.

L132e:	call	L8d27		;; 132e: cd 27 8d    .'.
	db	0ffh,0bh
	mvix	000h,-126	;; 1333: dd 36 82 00 .6..
	rst	3		;; 1337: df          .
	db	85h
	push	h		;; 1339: e5          .
	call	L10d3		;; 133a: cd d3 10    ...
	xri	001h		;; 133d: ee 01       ..
	rar			;; 133f: 1f          .
	jrnc	L134f		;; 1340: 30 0d       0.
	lhld	L10ca		;; 1342: 2a ca 10    *..
	push	h		;; 1345: e5          .
	rst	3		;; 1346: df          .
	db	83h
	push	h		;; 1348: e5          .
	call	L1230		;; 1349: cd 30 12    .0.
	stx	a,-126		;; 134c: dd 77 82    .w.
L134f:	ldx	a,-126		;; 134f: dd 7e 82    .~.
	jmp	L8d56		;; 1352: c3 56 8d    .V.

L1355:	call	L8d27		;; 1355: cd 27 8d    .'.
	db	0f8h,10h
	rst	3		;; 135a: df          .
	db	8ah
	push	h		;; 135c: e5          .
	call	L10d3		;; 135d: cd d3 10    ...
	rar			;; 1360: 1f          .
	jrnc	L136a		;; 1361: 30 07       0.
	mvix	000h,-119	;; 1363: dd 36 89 00 .6..
	jmp	L14ab		;; 1367: c3 ab 14    ...

L136a:	lhld	L10ca		;; 136a: 2a ca 10    *..
	push	h		;; 136d: e5          .
	lxi	h,00080h	;; 136e: 21 80 00    ...
	call	L8758		;; 1371: cd 58 87    .X.
	rst	3		;; 1374: df          .
	db	7
	lbcd	L10c0		;; 1376: ed 4b c0 10 .K..
	ora	a		;; 137a: b7          .
	dsbc	b		;; 137b: ed 42       .B
	jrc	L1386		;; 137d: 38 07       8.
	mvix	0ffh,-119	;; 137f: dd 36 89 ff .6..
	jmp	L14ab		;; 1383: c3 ab 14    ...

L1386:	mvix	000h,-125	;; 1386: dd 36 83 00 .6..
	lda	L10bf		;; 138a: 3a bf 10    :..
	stx	a,-126		;; 138d: dd 77 82    .w.
	mvix	000h,-124	;; 1390: dd 36 84 00 .6..
L1394:	lda	L10bf		;; 1394: 3a bf 10    :..
	rst	4		;; 1397: e7          .
	db	84h
	dad	h		;; 1399: 29          )
	lxi	d,L109f		;; 139a: 11 9f 10    ...
	dad	d		;; 139d: 19          .
	mov	c,m		;; 139e: 4e          N
	inx	h		;; 139f: 23          #
	mov	b,m		;; 13a0: 46          F
	rst	3		;; 13a1: df          .
	db	87h
	ora	a		;; 13a3: b7          .
	dsbc	b		;; 13a4: ed 42       .B
	jrnz	L13b9		;; 13a6: 20 11        .
	mvix	001h,-124	;; 13a8: dd 36 84 01 .6..
	lda	L10bf		;; 13ac: 3a bf 10    :..
	rst	4		;; 13af: e7          .
	db	84h
	lxi	d,L10c2		;; 13b1: 11 c2 10    ...
	dad	d		;; 13b4: 19          .
	mvi	m,001h		;; 13b5: 36 01       6.
	jr	L1410		;; 13b7: 18 57       .W

L13b9:	ldx	a,-125		;; 13b9: dd 7e 83    .~.
	cpi	002h		;; 13bc: fe 02       ..
	cpe	L8c01		;; 13be: ec 01 8c    ...
	jm	L13e2		;; 13c1: fa e2 13    ...
	lda	L10bf		;; 13c4: 3a bf 10    :..
	rst	4		;; 13c7: e7          .
	db	84h
	lxi	d,L10c2		;; 13c9: 11 c2 10    ...
	dad	d		;; 13cc: 19          .
	mov	a,m		;; 13cd: 7e          ~
	xri	001h		;; 13ce: ee 01       ..
	stx	a,-124		;; 13d0: dd 77 84    .w.
	lda	L10bf		;; 13d3: 3a bf 10    :..
	rst	4		;; 13d6: e7          .
	db	84h
	lxi	d,L10c2		;; 13d8: 11 c2 10    ...
	dad	d		;; 13db: 19          .
	push	h		;; 13dc: e5          .
	ldx	a,-124		;; 13dd: dd 7e 84    .~.
	pop	h		;; 13e0: e1          .
	mov	m,a		;; 13e1: 77          w
L13e2:	ldx	a,-124		;; 13e2: dd 7e 84    .~.
	xri	001h		;; 13e5: ee 01       ..
	rar			;; 13e7: 1f          .
	jrnc	L1410		;; 13e8: 30 26       0&
	lda	L10bf		;; 13ea: 3a bf 10    :..
	cmpx	-126		;; 13ed: dd be 82    ...
	jrnz	L13f9		;; 13f0: 20 07        .
	ldx	a,-125		;; 13f2: dd 7e 83    .~.
	inr	a		;; 13f5: 3c          <
	stx	a,-125		;; 13f6: dd 77 83    .w.
L13f9:	lda	L10bf		;; 13f9: 3a bf 10    :..
	lxi	h,L01a7		;; 13fc: 21 a7 01    ...
	cmp	m		;; 13ff: be          .
	jrnz	L1409		;; 1400: 20 07        .
	lxi	h,L10bf		;; 1402: 21 bf 10    ...
	mvi	m,000h		;; 1405: 36 00       6.
	jr	L1410		;; 1407: 18 07       ..

L1409:	lda	L10bf		;; 1409: 3a bf 10    :..
	inr	a		;; 140c: 3c          <
	sta	L10bf		;; 140d: 32 bf 10    2..
L1410:	ldx	a,-124		;; 1410: dd 7e 84    .~.
	rar			;; 1413: 1f          .
	jnc	L1394		;; 1414: d2 94 13    ...
	lhld	L10ca		;; 1417: 2a ca 10    *..
	mov	a,l		;; 141a: 7d          }
	ani	07fh		;; 141b: e6 7f       ..
	mov	l,a		;; 141d: 6f          o
	mvi	h,000h		;; 141e: 26 00       &.
	rst	3		;; 1420: df          .
	db	5
	lda	L10bf		;; 1422: 3a bf 10    :..
	rst	4		;; 1425: e7          .
	db	84h
	dad	h		;; 1427: 29          )
	lxi	d,L109f		;; 1428: 11 9f 10    ...
	dad	d		;; 142b: 19          .
	mov	c,m		;; 142c: 4e          N
	inx	h		;; 142d: 23          #
	mov	b,m		;; 142e: 46          F
	rst	3		;; 142f: df          .
	db	87h
	ora	a		;; 1431: b7          .
	dsbc	b		;; 1432: ed 42       .B
	jrz	L148b		;; 1434: 28 55       (U
	lda	L10bf		;; 1436: 3a bf 10    :..
	rst	4		;; 1439: e7          .
	db	84h
	dad	h		;; 143b: 29          )
	lxi	d,L109f		;; 143c: 11 9f 10    ...
	dad	d		;; 143f: 19          .
	push	h		;; 1440: e5          .
	rst	3		;; 1441: df          .
	db	87h
	rst	4		;; 1443: e7          .
	db	81h
	lhld	L109d		;; 1445: 2a 9d 10    *..
	push	h		;; 1448: e5          .
	rst	3		;; 1449: df          .
	db	87h
	lxi	d,00000h	;; 144b: 11 00 00    ...
	push	d		;; 144e: d5          .
	push	h		;; 144f: e5          .
	call	L7813		;; 1450: cd 13 78    ..x
	lhld	L109d		;; 1453: 2a 9d 10    *..
	push	h		;; 1456: e5          .
	call	L7ba1		;; 1457: cd a1 7b    ..{
	rar			;; 145a: 1f          .
	jrnc	L1465		;; 145b: 30 08       0.
	mvi	a,062h		;; 145d: 3e 62       >b
	push	psw		;; 145f: f5          .
	call	L0597		;; 1460: cd 97 05    ...
	jr	L148b		;; 1463: 18 26       .&

L1465:	call	L763d		;; 1465: cd 3d 76    .=v
	lhld	L109d		;; 1468: 2a 9d 10    *..
	push	h		;; 146b: e5          .
	call	L7682		;; 146c: cd 82 76    ..v
	lda	L10bf		;; 146f: 3a bf 10    :..
	rst	4		;; 1472: e7          .
	db	84h
	dad	h		;; 1474: 29          )
	lxi	d,L10af		;; 1475: 11 af 10    ...
	dad	d		;; 1478: 19          .
	rst	4		;; 1479: e7          .
	db	80h
	push	h		;; 147b: e5          .
	call	L7bf4		;; 147c: cd f4 7b    ..{
	pop	d		;; 147f: d1          .
	lxi	b,00080h	;; 1480: 01 80 00    ...
	ldir			;; 1483: ed b0       ..
	call	L7aed		;; 1485: cd ed 7a    ..z
	call	L768c		;; 1488: cd 8c 76    ..v
L148b:	lda	L10bf		;; 148b: 3a bf 10    :..
	rst	4		;; 148e: e7          .
	db	84h
	dad	h		;; 1490: 29          )
	lxi	d,L10af		;; 1491: 11 af 10    ...
	dad	d		;; 1494: 19          .
	rst	4		;; 1495: e7          .
	db	80h
	push	h		;; 1497: e5          .
	rst	3		;; 1498: df          .
	db	85h
	pop	d		;; 149a: d1          .
	dad	d		;; 149b: 19          .
	mov	a,m		;; 149c: 7e          ~
	stx	a,-119		;; 149d: dd 77 89    .w.
	lda	L10bf		;; 14a0: 3a bf 10    :..
	rst	4		;; 14a3: e7          .
	db	84h
	lxi	d,L10c2		;; 14a5: 11 c2 10    ...
	dad	d		;; 14a8: 19          .
	mvi	m,001h		;; 14a9: 36 01       6.
L14ab:	ldx	a,-119		;; 14ab: dd 7e 89    .~.
	jmp	L8d56		;; 14ae: c3 56 8d    .V.

L14b1:	call	L8d27		;; 14b1: cd 27 8d    .'.
	db	0feh,0ah
	rst	3		;; 14b6: df          .
	db	84h
	inx	h		;; 14b8: 23          #
	push	h		;; 14b9: e5          .
	call	L1355		;; 14ba: cd 55 13    .U.
	mov	h,a		;; 14bd: 67          g
	mvi	l,000h		;; 14be: 2e 00       ..
	push	h		;; 14c0: e5          .
	rst	3		;; 14c1: df          .
	db	84h
	push	h		;; 14c3: e5          .
	call	L1355		;; 14c4: cd 55 13    .U.
	mov	c,a		;; 14c7: 4f          O
	mvi	b,000h		;; 14c8: 06 00       ..
	pop	h		;; 14ca: e1          .
	dad	b		;; 14cb: 09          .
	rst	3		;; 14cc: df          .
	db	2
	jmp	L8d56		;; 14ce: c3 56 8d    .V.

L14d1:	call	L8d27		;; 14d1: cd 27 8d    .'.
	db	0fah,0ch
	mvi	a,007h		;; 14d6: 3e 07       >.
	lxi	h,L01a7		;; 14d8: 21 a7 01    ...
	cmp	m		;; 14db: be          .
	jrnc	L14e3		;; 14dc: 30 05       0.
	lxi	h,L01a7		;; 14de: 21 a7 01    ...
	mvi	m,007h		;; 14e1: 36 07       6.
L14e3:	lda	L01a7		;; 14e3: 3a a7 01    :..
	mov	c,a		;; 14e6: 4f          O
	mvi	b,000h		;; 14e7: 06 00       ..
	mvi	a,000h		;; 14e9: 3e 00       >.
	rst	4		;; 14eb: e7          .
	db	84h
	call	L88a6		;; 14ed: cd a6 88    ...
	stx	c,-126		;; 14f0: dd 71 82    .q.
	jrc	L1520		;; 14f3: 38 2b       8+
	mov	a,l		;; 14f5: 7d          }
L14f6:	stx	a,-121		;; 14f6: dd 77 87    .w.
	rst	4		;; 14f9: e7          .
	db	84h
	dad	h		;; 14fb: 29          )
	lxi	d,L109f		;; 14fc: 11 9f 10    ...
	dad	d		;; 14ff: 19          .
	mvi	m,0ffh		;; 1500: 36 ff       6.
	inx	h		;; 1502: 23          #
	mvi	m,0ffh		;; 1503: 36 ff       6.
	ldx	a,-121		;; 1505: dd 7e 87    .~.
	rst	4		;; 1508: e7          .
	db	84h
	dad	h		;; 150a: 29          )
	lxi	d,L10af		;; 150b: 11 af 10    ...
	dad	d		;; 150e: 19          .
	push	h		;; 150f: e5          .
	lxi	h,00080h	;; 1510: 21 80 00    ...
	push	h		;; 1513: e5          .
	call	L9016		;; 1514: cd 16 90    ...
	ldx	a,-121		;; 1517: dd 7e 87    .~.
	inr	a		;; 151a: 3c          <
	dcrx	-126		;; 151b: dd 35 82    .5.
	jrnz	L14f6		;; 151e: 20 d6        .
L1520:	lxi	h,L1050		;; 1520: 21 50 10    .P.
	push	h		;; 1523: e5          .
	mvi	a,024h		;; 1524: 3e 24       >$
	push	psw		;; 1526: f5          .
	call	L7604		;; 1527: cd 04 76    ..v
L152a:	lda	L1050		;; 152a: 3a 50 10    :P.
	push	psw		;; 152d: f5          .
	mvi	a,000h		;; 152e: 3e 00       >.
	pop	b		;; 1530: c1          .
	cmp	b		;; 1531: b8          .
	mvi	a,000h		;; 1532: 3e 00       >.
	ral			;; 1534: 17          .
	push	psw		;; 1535: f5          .
	lda	L1051		;; 1536: 3a 51 10    :Q.
	cpi	020h		;; 1539: fe 20       . 
	call	L8c09		;; 153b: cd 09 8c    ...
	mov	b,a		;; 153e: 47          G
	pop	psw		;; 153f: f1          .
	ana	b		;; 1540: a0          .
	rar			;; 1541: 1f          .
	jrnc	L1553		;; 1542: 30 0f       0.
	lxi	h,L1050		;; 1544: 21 50 10    .P.
	push	h		;; 1547: e5          .
	mvi	a,001h		;; 1548: 3e 01       >.
	push	psw		;; 154a: f5          .
	mvi	a,001h		;; 154b: 3e 01       >.
	push	psw		;; 154d: f5          .
	call	L8a48		;; 154e: cd 48 8a    .H.
	jr	L152a		;; 1551: 18 d7       ..

L1553:	lxi	h,L1074		;; 1553: 21 74 10    .t.
	mvi	m,000h		;; 1556: 36 00       6.
	lda	L1050		;; 1558: 3a 50 10    :P.
	ora	a		;; 155b: b7          .
	jrnz	L1561		;; 155c: 20 03        .
	jmp	L1695		;; 155e: c3 95 16    ...

L1561:	lxi	b,02e01h	;; 1561: 01 01 2e    ...
	push	b		;; 1564: c5          .
	lxi	h,L1050		;; 1565: 21 50 10    .P.
	call	L75ea		;; 1568: cd ea 75    ..u
	call	L8ad7		;; 156b: cd d7 8a    ...
	mov	a,h		;; 156e: 7c          |
	ora	l		;; 156f: b5          .
	ora	b		;; 1570: b0          .
	ora	c		;; 1571: b1          .
	jrnz	L1590		;; 1572: 20 1c        .
	lxi	h,L1050		;; 1574: 21 50 10    .P.
	call	L75ea		;; 1577: cd ea 75    ..u
	call	L1581		;; 157a: cd 81 15    ...
	db	'.COM'
L1581:	call	L75e5		;; 1581: cd e5 75    ..u
	db	4
	call	L8b20		;; 1585: cd 20 8b    . .
	lxi	h,L1050		;; 1588: 21 50 10    .P.
	mvi	a,023h		;; 158b: 3e 23       >#
	call	L8b81		;; 158d: cd 81 8b    ...
L1590:	lxi	h,L1050		;; 1590: 21 50 10    .P.
	call	L75ea		;; 1593: cd ea 75    ..u
	lxi	h,L1074		;; 1596: 21 74 10    .t.
	mvi	a,023h		;; 1599: 3e 23       >#
	call	L8b81		;; 159b: cd 81 8b    ...
	lxi	b,02e01h	;; 159e: 01 01 2e    ...
	push	b		;; 15a1: c5          .
	lxi	h,L1074		;; 15a2: 21 74 10    .t.
	call	L75ea		;; 15a5: cd ea 75    ..u
	call	L8ad7		;; 15a8: cd d7 8a    ...
	mov	a,c		;; 15ab: 79          y
	stx	a,-123		;; 15ac: dd 77 85    .w.
	lda	L1074		;; 15af: 3a 74 10    :t.
	push	psw		;; 15b2: f5          .
	ldx	a,-123		;; 15b3: dd 7e 85    .~.
	mov	c,a		;; 15b6: 4f          O
	mvi	b,000h		;; 15b7: 06 00       ..
	pop	psw		;; 15b9: f1          .
	mov	l,a		;; 15ba: 6f          o
	mvi	h,000h		;; 15bb: 26 00       &.
	ora	a		;; 15bd: b7          .
	dsbc	b		;; 15be: ed 42       .B
	inx	h		;; 15c0: 23          #
	mov	a,l		;; 15c1: 7d          }
	stx	a,-122		;; 15c2: dd 77 86    .w.
	lxi	h,L1074		;; 15c5: 21 74 10    .t.
	push	h		;; 15c8: e5          .
	ldx	a,-123		;; 15c9: dd 7e 85    .~.
	push	psw		;; 15cc: f5          .
	ldx	a,-122		;; 15cd: dd 7e 86    .~.
	push	psw		;; 15d0: f5          .
	call	L8a48		;; 15d1: cd 48 8a    .H.
	lxi	h,L1050		;; 15d4: 21 50 10    .P.
	call	L75ea		;; 15d7: cd ea 75    ..u
	call	L793e		;; 15da: cd 3e 79    .>y
	xri	001h		;; 15dd: ee 01       ..
	rar			;; 15df: 1f          .
	jrnc	L15ea		;; 15e0: 30 08       0.
	lxi	h,L1050		;; 15e2: 21 50 10    .P.
	mvi	m,000h		;; 15e5: 36 00       6.
	jmp	L1695		;; 15e7: c3 95 16    ...

L15ea:	lxi	h,L109d		;; 15ea: 21 9d 10    ...
	push	h		;; 15ed: e5          .
	lxi	h,00080h	;; 15ee: 21 80 00    ...
	push	h		;; 15f1: e5          .
	lxi	h,L1050		;; 15f2: 21 50 10    .P.
	call	L75ea		;; 15f5: cd ea 75    ..u
	call	L7995		;; 15f8: cd 95 79    ..y
	lxi	h,L109d		;; 15fb: 21 9d 10    ...
	push	h		;; 15fe: e5          .
	lxi	h,00080h	;; 15ff: 21 80 00    ...
	push	h		;; 1602: e5          .
	call	L78b6		;; 1603: cd b6 78    ..x
L1606:	lhld	L109d		;; 1606: 2a 9d 10    *..
	push	h		;; 1609: e5          .
	lhld	L10c0		;; 160a: 2a c0 10    *..
	lxi	d,00000h	;; 160d: 11 00 00    ...
	push	d		;; 1610: d5          .
	push	h		;; 1611: e5          .
	call	L7813		;; 1612: cd 13 78    ..x
	lhld	L10c0		;; 1615: 2a c0 10    *..
	inx	h		;; 1618: 23          #
	shld	L10c0		;; 1619: 22 c0 10    "..
	lhld	L109d		;; 161c: 2a 9d 10    *..
	push	h		;; 161f: e5          .
	call	L7ba1		;; 1620: cd a1 7b    ..{
	rar			;; 1623: 1f          .
	jrnc	L1606		;; 1624: 30 e0       0.
	lhld	L10c0		;; 1626: 2a c0 10    *..
	dcx	h		;; 1629: 2b          +
	shld	L10c0		;; 162a: 22 c0 10    "..
	lxi	b,001feh	;; 162d: 01 fe 01    ...
	ora	a		;; 1630: b7          .
	dsbc	b		;; 1631: ed 42       .B
	jrc	L163b		;; 1633: 38 06       8.
	lxi	h,001feh	;; 1635: 21 fe 01    ...
	shld	L10c0		;; 1638: 22 c0 10    "..
L163b:	lhld	L10c0		;; 163b: 2a c0 10    *..
	push	h		;; 163e: e5          .
	lxi	h,00080h	;; 163f: 21 80 00    ...
	call	L87b7		;; 1642: cd b7 87    ...
	call	L885c		;; 1645: cd 5c 88    .\.
	mov	h,b		;; 1648: 60          `
	mov	l,c		;; 1649: 69          i
	rst	3		;; 164a: df          .
	db	3
	lxi	b,00100h	;; 164c: 01 00 01    ...
	rst	3		;; 164f: df          .
	db	83h
	dad	b		;; 1651: 09          .
	rst	4		;; 1652: e7          .
	db	87h
	call	L8d71		;; 1654: cd 71 8d    .q.
	dw	L104c
	lxi	h,00000h	;; 1659: 21 00 00    ...
	shld	L10ca		;; 165c: 22 ca 10    "..
	lxi	h,L10ce		;; 165f: 21 ce 10    ...
	push	h		;; 1662: e5          .
	lxi	h,00008h	;; 1663: 21 08 00    ...
	push	h		;; 1666: e5          .
	call	L9016		;; 1667: cd 16 90    ...
	lhld	L10ce		;; 166a: 2a ce 10    *..
	lxi	d,00006h	;; 166d: 11 06 00    ...
	dad	d		;; 1670: 19          .
	mvi	m,080h		;; 1671: 36 80       6.
	inx	h		;; 1673: 23          #
	mvi	m,000h		;; 1674: 36 00       6.
	lhld	L10ce		;; 1676: 2a ce 10    *..
	mvi	m,000h		;; 1679: 36 00       6.
	inx	h		;; 167b: 23          #
	mvi	m,000h		;; 167c: 36 00       6.
	lhld	L10ce		;; 167e: 2a ce 10    *..
	inx	h		;; 1681: 23          #
	inx	h		;; 1682: 23          #
	mvi	m,000h		;; 1683: 36 00       6.
	inx	h		;; 1685: 23          #
	mvi	m,001h		;; 1686: 36 01       6.
	lhld	L10ce		;; 1688: 2a ce 10    *..
	lxi	d,00004h	;; 168b: 11 04 00    ...
	dad	d		;; 168e: 19          .
	push	h		;; 168f: e5          .
	rst	3		;; 1690: df          .
	db	83h
	inx	h		;; 1692: 23          #
	rst	4		;; 1693: e7          .
	db	81h
L1695:	jmp	L8d56		;; 1695: c3 56 8d    .V.

L1698:	call	L8d27		;; 1698: cd 27 8d    .'.
	db	0,6
	lxi	h,L0f9e		;; 169d: 21 9e 0f    ...
	mvi	m,044h		;; 16a0: 36 44       6D
	call	L16a8		;; 16a2: cd a8 16    ...
	db	'.DZ'
L16a8:	call	L75e5		;; 16a8: cd e5 75    ..u
	db	3
	lxi	h,L1098		;; 16ac: 21 98 10    ...
	mvi	a,003h		;; 16af: 3e 03       >.
	call	L8b81		;; 16b1: cd 81 8b    ...
	lxi	h,L109c		;; 16b4: 21 9c 10    ...
	mvi	m,001h		;; 16b7: 36 01       6.
	jmp	L8d56		;; 16b9: c3 56 8d    .V.

L16bc:	db	0
L16bd:	call	L8d27		;; 16bd: cd 27 8d    .'.
	db	0fbh,0fh
	jr	L16c4		;; 16c2: 18 00       ..

L16c3	equ	$-1
L16c4:	mvi	a,011h		;; 16c4: 3e 11       >.
	sta	L16c3		;; 16c6: 32 c3 16    2..
	lxi	h,L01ce		;; 16c9: 21 ce 01    ...
	call	L75ea		;; 16cc: cd ea 75    ..u
	call	L793e		;; 16cf: cd 3e 79    .>y
	sta	L16bc		;; 16d2: 32 bc 16    2..
	rst	3		;; 16d5: df          .
	db	87h
	push	h		;; 16d7: e5          .
	call	L16df		;; 16d8: cd df 16    ...
	db	'@@@@'
L16df:	call	L75e5		;; 16df: cd e5 75    ..u
	db	4
	call	L8b95		;; 16e3: cd 95 8b    ...
	pop	h		;; 16e6: e1          .
	mvi	a,037h		;; 16e7: 3e 37       >7
	call	L8b81		;; 16e9: cd 81 8b    ...
	lda	L16bc		;; 16ec: 3a bc 16    :..
	rar			;; 16ef: 1f          .
	jnc	L175c		;; 16f0: d2 5c 17    .\.
	lxi	h,0ff85h	;; 16f3: 21 85 ff    ...
	rst	2		;; 16f6: d7          .
	push	h		;; 16f7: e5          .
	push	h		;; 16f8: e5          .
	lxi	h,00000h	;; 16f9: 21 00 00    ...
	push	h		;; 16fc: e5          .
	lxi	h,L01ce		;; 16fd: 21 ce 01    ...
	call	L75ea		;; 1700: cd ea 75    ..u
	call	L7995		;; 1703: cd 95 79    ..y
	lxi	h,00000h	;; 1706: 21 00 00    ...
	push	h		;; 1709: e5          .
	call	L78b6		;; 170a: cd b6 78    ..x
	ldx	a,-118		;; 170d: dd 7e 8a    .~.
	mov	b,a		;; 1710: 47          G
	inr	b		;; 1711: 04          .
	jr	L1726		;; 1712: 18 12       ..

L1714:	push	b		;; 1714: c5          .
	call	L7649		;; 1715: cd 49 76    .Iv
	ldx	l,-123		;; 1718: dd 6e 85    .n.
	ldx	h,-122		;; 171b: dd 66 86    .f.
	push	h		;; 171e: e5          .
	call	L7682		;; 171f: cd 82 76    ..v
	call	L768c		;; 1722: cd 8c 76    ..v
	pop	b		;; 1725: c1          .
L1726:	djnz	L1714		;; 1726: 10 ec       ..
L1728:	call	L763d		;; 1728: cd 3d 76    .=v
	rst	3		;; 172b: df          .
	db	85h
	push	h		;; 172d: e5          .
	call	L7682		;; 172e: cd 82 76    ..v
	call	L7bf4		;; 1731: cd f4 7b    ..{
	mov	a,m		;; 1734: 7e          ~
	push	psw		;; 1735: f5          .
	call	L7aed		;; 1736: cd ed 7a    ..z
	call	L768c		;; 1739: cd 8c 76    ..v
	pop	psw		;; 173c: f1          .
	cpi	020h		;; 173d: fe 20       . 
	jrnz	L1728		;; 173f: 20 e7        .
	call	L7649		;; 1741: cd 49 76    .Iv
	rst	3		;; 1744: df          .
	db	85h
	push	h		;; 1746: e5          .
	call	L7682		;; 1747: cd 82 76    ..v
	rst	3		;; 174a: df          .
	db	87h
	push	h		;; 174c: e5          .
	mvi	a,037h		;; 174d: 3e 37       >7
	push	psw		;; 174f: f5          .
	call	L7777		;; 1750: cd 77 77    .ww
	call	L768c		;; 1753: cd 8c 76    ..v
	rst	3		;; 1756: df          .
	db	85h
	push	h		;; 1758: e5          .
	call	L78e7		;; 1759: cd e7 78    ..x
L175c:	call	L76d6		;; 175c: cd d6 76    ..v
	jmp	L8d56		;; 175f: c3 56 8d    .V.

L1762:	call	L8d27		;; 1762: cd 27 8d    .'.
	db	0c8h,'@'
	ldx	a,-69		;; 1767: dd 7e bb    .~.
	push	psw		;; 176a: f5          .
	lxi	h,0ff82h	;; 176b: 21 82 ff    ...
	rst	2		;; 176e: d7          .
	push	h		;; 176f: e5          .
	call	L16bd		;; 1770: cd bd 16    ...
	lxi	h,0ff82h	;; 1773: 21 82 ff    ...
	rst	2		;; 1776: d7          .
	call	L75ea		;; 1777: cd ea 75    ..u
	mvi	a,037h		;; 177a: 3e 37       >7
	call	L8bb0		;; 177c: cd b0 8b    ...
	call	L0803		;; 177f: cd 03 08    ...
	jmp	L8d56		;; 1782: c3 56 8d    .V.

L1785:	db	0
L1786:	db	0
L1787:	db	0,0
L1789:	db	0,0
L178b:	db	0
L178c:	db	0
L178d:	db	'Space to continu'
	db	'e, or ^U to inte'
	db	'rrupt'
L17b2:	call	L8d27		;; 17b2: cd 27 8d    .'.
	db	0,0ah
	mvi	a,07fh		;; 17b7: 3e 7f       >.
	rst	4		;; 17b9: e7          .
	db	8ah
	cmpy	-121		;; 17bb: fd be 87    ...
	jrnc	L17f8		;; 17be: 30 38       08
	mviy	000h,-121	;; 17c0: fd 36 87 00 .6..
	rst	3		;; 17c4: df          .
	db	84h
	rst	4		;; 17c6: e7          .
	db	80h
	push	h		;; 17c8: e5          .
	call	L7ba1		;; 17c9: cd a1 7b    ..{
	rar			;; 17cc: 1f          .
	jrnc	L17d7		;; 17cd: 30 08       0.
	rst	4		;; 17cf: e7          .
	db	8ah
	mviy	01ah,-120	;; 17d1: fd 36 88 1a .6..
	jr	L17f8		;; 17d5: 18 21       ..

L17d7:	call	L763d		;; 17d7: cd 3d 76    .=v
	rst	3		;; 17da: df          .
	db	84h
	rst	4		;; 17dc: e7          .
	db	80h
	push	h		;; 17de: e5          .
	call	L7682		;; 17df: cd 82 76    ..v
	call	L7bf4		;; 17e2: cd f4 7b    ..{
	push	h		;; 17e5: e5          .
	lxi	h,0ff88h	;; 17e6: 21 88 ff    ...
	rst	4		;; 17e9: e7          .
	db	8bh
	pop	d		;; 17eb: d1          .
	xchg			;; 17ec: eb          .
	lxi	b,00080h	;; 17ed: 01 80 00    ...
	ldir			;; 17f0: ed b0       ..
	call	L7aed		;; 17f2: cd ed 7a    ..z
	call	L768c		;; 17f5: cd 8c 76    ..v
L17f8:	rst	4		;; 17f8: e7          .
	db	8ah
	ldy	l,-121		;; 17fa: fd 6e 87    .n.
	mvi	h,000h		;; 17fd: 26 00       &.
	rst	4		;; 17ff: e7          .
	db	8bh
	lxi	d,0ff88h	;; 1801: 11 88 ff    ...
	dad	d		;; 1804: 19          .
	mov	a,m		;; 1805: 7e          ~
	rst	3		;; 1806: df          .
	db	82h
	mov	m,a		;; 1808: 77          w
	rst	4		;; 1809: e7          .
	db	8ah
	inry	-121		;; 180b: fd 34 87    .4.
	jmp	L8d56		;; 180e: c3 56 8d    .V.

L1811:	call	L8d27		;; 1811: cd 27 8d    .'.
	db	'x',90h
L1816:	ldx	a,+11		;; 1816: dd 7e 0b    .~.
	call	L199d		;; 1819: cd 9d 19    ...
L181c:	call	L1e41		;; 181c: cd 41 1e    .A.
	lda	L1785		;; 181f: 3a 85 17    :..
	stx	a,+11		;; 1822: dd 77 0b    .w.
	jr	L1816		;; 1825: 18 ef       ..

L1827:	ldx	a,+11		;; 1827: dd 7e 0b    .~.
	adi	0d0h		;; 182a: c6 d0       ..
	sta	L017f		;; 182c: 32 7f 01    2..
	jmp	L19b6		;; 182f: c3 b6 19    ...

L1832:	lxi	h,L01bf		;; 1832: 21 bf 01    ...
	call	L75ea		;; 1835: cd ea 75    ..u
	call	L793e		;; 1838: cd 3e 79    .>y
	rar			;; 183b: 1f          .
	jnc	L1971		;; 183c: d2 71 19    .q.
	lxi	h,00008h	;; 183f: 21 08 00    ...
	rst	2		;; 1842: d7          .
	push	h		;; 1843: e5          .
	push	h		;; 1844: e5          .
	lxi	h,00080h	;; 1845: 21 80 00    ...
	push	h		;; 1848: e5          .
	lxi	h,L01bf		;; 1849: 21 bf 01    ...
	call	L75ea		;; 184c: cd ea 75    ..u
	call	L7995		;; 184f: cd 95 79    ..y
	lxi	h,00080h	;; 1852: 21 80 00    ...
	push	h		;; 1855: e5          .
	call	L78b6		;; 1856: cd b6 78    ..x
	mvix	080h,-121	;; 1859: dd 36 87 80 .6..
	mvix	001h,-123	;; 185d: dd 36 85 01 .6..
	mvix	000h,-124	;; 1861: dd 36 84 00 .6..
	mvix	000h,-122	;; 1865: dd 36 86 00 .6..
	mvix	020h,-126	;; 1869: dd 36 82 20 .6. 
	xra	a		;; 186d: af          .
	push	psw		;; 186e: f5          .
	call	L0953		;; 186f: cd 53 09    .S.
L1872:	ldx	a,-123		;; 1872: dd 7e 85    .~.
	rar			;; 1875: 1f          .
	jnc	L1965		;; 1876: d2 65 19    .e.
	lxi	h,00008h	;; 1879: 21 08 00    ...
	rst	2		;; 187c: d7          .
	push	h		;; 187d: e5          .
	lxi	h,L178c		;; 187e: 21 8c 17    ...
	push	h		;; 1881: e5          .
	rst	4		;; 1882: e7          .
	db	82h
	call	L17b2		;; 1884: cd b2 17    ...
	lxi	h,L178c		;; 1887: 21 8c 17    ...
	res	7,m		;; 188a: cb be       ..
	mov	a,m		;; 188c: 7e          ~
	cpi	01fh		;; 188d: fe 1f       ..
	jrnz	L1893		;; 188f: 20 02        .
	mvi	m,02dh		;; 1891: 36 2d       6-
L1893:	mov	a,m		;; 1893: 7e          ~
	cpi	01ah		;; 1894: fe 1a       ..
	jrnz	L18a2		;; 1896: 20 0a        .
	mvix	000h,-123	;; 1898: dd 36 85 00 .6..
	mvix	001h,-124	;; 189c: dd 36 84 01 .6..
	jr	L18f7		;; 18a0: 18 55       .U

L18a2:	lda	L178c		;; 18a2: 3a 8c 17    :..
	cpi	02eh		;; 18a5: fe 2e       ..
	jrnz	L18b6		;; 18a7: 20 0d        .
	ldx	a,-125		;; 18a9: dd 7e 83    .~.
	cpi	00ah		;; 18ac: fe 0a       ..
	jrnz	L18b6		;; 18ae: 20 06        .
	mvix	001h,-124	;; 18b0: dd 36 84 01 .6..
	jr	L18c4		;; 18b4: 18 0e       ..

L18b6:	lda	L178c		;; 18b6: 3a 8c 17    :..
	cpi	02dh		;; 18b9: fe 2d       .-
	jrnz	L18ca		;; 18bb: 20 0d        .
	ldx	a,-125		;; 18bd: dd 7e 83    .~.
	cpi	00ah		;; 18c0: fe 0a       ..
	jrnz	L18ca		;; 18c2: 20 06        .
L18c4:	mvix	001h,-122	;; 18c4: dd 36 86 01 .6..
	jr	L18f7		;; 18c8: 18 2d       .-

L18ca:	ldx	a,-122		;; 18ca: dd 7e 86    .~.
	rar			;; 18cd: 1f          .
	jrnc	L18dd		;; 18ce: 30 0d       0.
	lda	L178c		;; 18d0: 3a 8c 17    :..
	cpi	00ah		;; 18d3: fe 0a       ..
	jrnz	L18db		;; 18d5: 20 04        .
	mvix	000h,-122	;; 18d7: dd 36 86 00 .6..
L18db:	jr	L18f7		;; 18db: 18 1a       ..

L18dd:	lda	L178c		;; 18dd: 3a 8c 17    :..
	cpi	00dh		;; 18e0: fe 0d       ..
	jrz	L18f7		;; 18e2: 28 13       (.
	lda	L178c		;; 18e4: 3a 8c 17    :..
	cpi	00ah		;; 18e7: fe 0a       ..
	jrnz	L18f3		;; 18e9: 20 08        .
	call	L0977		;; 18eb: cd 77 09    .w.
	call	L0c91		;; 18ee: cd 91 0c    ...
	jr	L18f7		;; 18f1: 18 04       ..

L18f3:	push	psw		;; 18f3: f5          .
	call	L0597		;; 18f4: cd 97 05    ...
L18f7:	mvix	020h,-126	;; 18f7: dd 36 82 20 .6. 
	ldx	a,-124		;; 18fb: dd 7e 84    .~.
	rar			;; 18fe: 1f          .
	jrnc	L195c		;; 18ff: 30 5b       0[
L1901:	lda	L02e3		;; 1901: 3a e3 02    :..
	lxi	h,L02e4		;; 1904: 21 e4 02    ...
	cmp	m		;; 1907: be          .
	jrnc	L1912		;; 1908: 30 08       0.
	call	L0977		;; 190a: cd 77 09    .w.
	call	L0c91		;; 190d: cd 91 0c    ...
	jr	L1901		;; 1910: 18 ef       ..

L1912:	lda	L02ef		;; 1912: 3a ef 02    :..
	adi	0dah		;; 1915: c6 da       ..
	push	psw		;; 1917: f5          .
	mvi	a,020h		;; 1918: 3e 20       > 
	push	psw		;; 191a: f5          .
	call	L0720		;; 191b: cd 20 07    . .
	lxi	h,L178d		;; 191e: 21 8d 17    ...
	call	L75be		;; 1921: cd be 75    ..u
	db	'%'
	mvi	a,037h		;; 1925: 3e 37       >7
	call	L8bb0		;; 1927: cd b0 8b    ...
	call	L0803		;; 192a: cd 03 08    ...
	call	L0977		;; 192d: cd 77 09    .w.
	lxi	h,0ff82h	;; 1930: 21 82 ff    ...
	rst	2		;; 1933: d7          .
	push	h		;; 1934: e5          .
	call	L0f82		;; 1935: cd 82 0f    ...
	ldx	a,-123		;; 1938: dd 7e 85    .~.
	rar			;; 193b: 1f          .
	jrnc	L1949		;; 193c: 30 0b       0.
	ldx	a,-126		;; 193e: dd 7e 82    .~.
	cpi	015h		;; 1941: fe 15       ..
	call	L8c0e		;; 1943: cd 0e 8c    ...
	stx	a,-123		;; 1946: dd 77 85    .w.
L1949:	lda	L02e4		;; 1949: 3a e4 02    :..
	push	psw		;; 194c: f5          .
	call	L0953		;; 194d: cd 53 09    .S.
	call	L0977		;; 1950: cd 77 09    .w.
	xra	a		;; 1953: af          .
	push	psw		;; 1954: f5          .
	call	L0953		;; 1955: cd 53 09    .S.
	mvix	000h,-124	;; 1958: dd 36 84 00 .6..
L195c:	lda	L178c		;; 195c: 3a 8c 17    :..
	stx	a,-125		;; 195f: dd 77 83    .w.
	jmp	L1872		;; 1962: c3 72 18    .r.

L1965:	ldx	l,+8		;; 1965: dd 6e 08    .n.
	ldx	h,+9		;; 1968: dd 66 09    .f.
	push	h		;; 196b: e5          .
	call	L78e7		;; 196c: cd e7 78    ..x
	jr	L1993		;; 196f: 18 22       ."

L1971:	call	L0c91		;; 1971: cd 91 0c    ...
	lxi	h,L01bf		;; 1974: 21 bf 01    ...
	call	L75ea		;; 1977: cd ea 75    ..u
	mvi	a,037h		;; 197a: 3e 37       >7
	call	L8bb0		;; 197c: cd b0 8b    ...
	call	L0803		;; 197f: cd 03 08    ...
	mvi	a,03fh		;; 1982: 3e 3f       >?
	push	psw		;; 1984: f5          .
	call	L0597		;; 1985: cd 97 05    ...
	call	L0977		;; 1988: cd 77 09    .w.
	lxi	h,0ff82h	;; 198b: 21 82 ff    ...
	rst	2		;; 198e: d7          .
	push	h		;; 198f: e5          .
	call	L0f82		;; 1990: cd 82 0f    ...
L1993:	xra	a		;; 1993: af          .
	push	psw		;; 1994: f5          .
	call	L0953		;; 1995: cd 53 09    .S.
	call	L0977		;; 1998: cd 77 09    .w.
	jr	L19b6		;; 199b: 18 19       ..

L199d:	mvi	b,006h		;; 199d: 06 06       ..
	call	L8ddc		;; 199f: cd dc 8d    ...
	db ' ' ! dw L19b6
	db '0' ! dw L1827
	db '1' ! dw L1827
	db '2' ! dw L1827
	db '3' ! dw L1827
	db 'H' ! dw L181c
	dw	L1832
L19b6:	call	L76d6		;; 19b6: cd d6 76    ..v
	jmp	L8d56		;; 19b9: c3 56 8d    .V.

	pop	h		;; 19bc: e1          .
	pop	psw		;; 19bd: f1          .
	cpi	00ah		;; 19be: fe 0a       ..
	jrnc	L19c5		;; 19c0: 30 03       0.
	adi	030h		;; 19c2: c6 30       .0
	pchl			;; 19c4: e9          .

L19c5:	adi	037h		;; 19c5: c6 37       .7
	pchl			;; 19c7: e9          .

L19c8:	call	L8d27		;; 19c8: cd 27 8d    .'.
	db	0ffh,0bh
	mvix	000h,-126	;; 19cd: dd 36 82 00 .6..
	ldx	a,-122		;; 19d1: dd 7e 86    .~.
	cpi	030h		;; 19d4: fe 30       .0
	mvi	a,000h		;; 19d6: 3e 00       >.
	cmc			;; 19d8: 3f          ?
	ral			;; 19d9: 17          .
	push	psw		;; 19da: f5          .
	mvi	a,039h		;; 19db: 3e 39       >9
	cmpx	-122		;; 19dd: dd be 86    ...
	mvi	a,000h		;; 19e0: 3e 00       >.
	cmc			;; 19e2: 3f          ?
	ral			;; 19e3: 17          .
	mov	b,a		;; 19e4: 47          G
	pop	psw		;; 19e5: f1          .
	ana	b		;; 19e6: a0          .
	rar			;; 19e7: 1f          .
	jrnc	L19f8		;; 19e8: 30 0e       0.
	ldx	a,-122		;; 19ea: dd 7e 86    .~.
	adi	0d0h		;; 19ed: c6 d0       ..
	rst	3		;; 19ef: df          .
	db	83h
	mov	m,a		;; 19f1: 77          w
	mvix	001h,-126	;; 19f2: dd 36 82 01 .6..
	jr	L1a22		;; 19f6: 18 2a       .*

L19f8:	ldx	a,-122		;; 19f8: dd 7e 86    .~.
	ani	0dfh		;; 19fb: e6 df       ..
	stx	a,-122		;; 19fd: dd 77 86    .w.
	cpi	041h		;; 1a00: fe 41       .A
	mvi	a,000h		;; 1a02: 3e 00       >.
	cmc			;; 1a04: 3f          ?
	ral			;; 1a05: 17          .
	push	psw		;; 1a06: f5          .
	mvi	a,046h		;; 1a07: 3e 46       >F
	cmpx	-122		;; 1a09: dd be 86    ...
	mvi	a,000h		;; 1a0c: 3e 00       >.
	cmc			;; 1a0e: 3f          ?
	ral			;; 1a0f: 17          .
	mov	b,a		;; 1a10: 47          G
	pop	psw		;; 1a11: f1          .
	ana	b		;; 1a12: a0          .
	rar			;; 1a13: 1f          .
	jrnc	L1a22		;; 1a14: 30 0c       0.
	ldx	a,-122		;; 1a16: dd 7e 86    .~.
	adi	0c9h		;; 1a19: c6 c9       ..
	rst	3		;; 1a1b: df          .
	db	83h
	mov	m,a		;; 1a1d: 77          w
	mvix	001h,-126	;; 1a1e: dd 36 82 01 .6..
L1a22:	ldx	a,-126		;; 1a22: dd 7e 82    .~.
	jmp	L8d56		;; 1a25: c3 56 8d    .V.

L1a28:	db	0,0
L1a2a:	db	0,0
L1a2c:	db	0,0,0,0
L1a30:	call	L8d27		;; 1a30: cd 27 8d    .'.
	db	0fch,0ah
	lda	L02e3		;; 1a35: 3a e3 02    :..
	stx	a,-123		;; 1a38: dd 77 85    .w.
	lda	L02ee		;; 1a3b: 3a ee 02    :..
	stx	a,-124		;; 1a3e: dd 77 84    .w.
	lda	L1786		;; 1a41: 3a 86 17    :..
	stx	a,-125		;; 1a44: dd 77 83    .w.
	lda	L1786		;; 1a47: 3a 86 17    :..
	cpi	020h		;; 1a4a: fe 20       . 
	jrnc	L1a52		;; 1a4c: 30 04       0.
	mvix	021h,-125	;; 1a4e: dd 36 83 21 .6..
L1a52:	lda	L1785		;; 1a52: 3a 85 17    :..
	stx	a,-126		;; 1a55: dd 77 82    .w.
	lda	L1785		;; 1a58: 3a 85 17    :..
	cpi	020h		;; 1a5b: fe 20       . 
	jrnc	L1a63		;; 1a5d: 30 04       0.
	mvix	021h,-126	;; 1a5f: dd 36 82 21 .6..
L1a63:	lda	L1785		;; 1a63: 3a 85 17    :..
	ora	a		;; 1a66: b7          .
	jrnz	L1a6d		;; 1a67: 20 04        .
	mvix	020h,-126	;; 1a69: dd 36 82 20 .6. 
L1a6d:	mvi	a,000h		;; 1a6d: 3e 00       >.
	push	psw		;; 1a6f: f5          .
	call	L0953		;; 1a70: cd 53 09    .S.
	ldx	a,-125		;; 1a73: dd 7e 83    .~.
	ora	a		;; 1a76: b7          .
	call	L8c09		;; 1a77: cd 09 8c    ...
	push	psw		;; 1a7a: f5          .
	ldx	a,-125		;; 1a7b: dd 7e 83    .~.
	cpi	020h		;; 1a7e: fe 20       . 
	call	L8c09		;; 1a80: cd 09 8c    ...
	mov	b,a		;; 1a83: 47          G
	pop	psw		;; 1a84: f1          .
	ora	b		;; 1a85: b0          .
	rar			;; 1a86: 1f          .
	jrnc	L1a94		;; 1a87: 30 0b       0.
	mvi	a,004h		;; 1a89: 3e 04       >.
	push	psw		;; 1a8b: f5          .
	mvi	a,020h		;; 1a8c: 3e 20       > 
	push	psw		;; 1a8e: f5          .
	call	L0720		;; 1a8f: cd 20 07    . .
	jr	L1aa8		;; 1a92: 18 14       ..

L1a94:	mvi	a,020h		;; 1a94: 3e 20       > 
	push	psw		;; 1a96: f5          .
	call	L0597		;; 1a97: cd 97 05    ...
	ldx	a,-125		;; 1a9a: dd 7e 83    .~.
	push	psw		;; 1a9d: f5          .
	call	L0597		;; 1a9e: cd 97 05    ...
	ldx	a,-126		;; 1aa1: dd 7e 82    .~.
	push	psw		;; 1aa4: f5          .
	call	L0597		;; 1aa5: cd 97 05    ...
L1aa8:	ldx	a,-123		;; 1aa8: dd 7e 85    .~.
	push	psw		;; 1aab: f5          .
	ldx	a,-124		;; 1aac: dd 7e 84    .~.
	push	psw		;; 1aaf: f5          .
	call	L0889		;; 1ab0: cd 89 08    ...
	jmp	L8d56		;; 1ab3: c3 56 8d    .V.

L1ab6:	call	L8d27		;; 1ab6: cd 27 8d    .'.
	db	0,6
	mvi	a,000h		;; 1abb: 3e 00       >.
	push	psw		;; 1abd: f5          .
	mvi	a,00ah		;; 1abe: 3e 0a       >.
	push	psw		;; 1ac0: f5          .
	call	L0889		;; 1ac1: cd 89 08    ...
	lhld	L1789		;; 1ac4: 2a 89 17    *..
	push	h		;; 1ac7: e5          .
	call	L5428		;; 1ac8: cd 28 54    .(T
	jmp	L8d56		;; 1acb: c3 56 8d    .V.

L1ace:	call	L8d27		;; 1ace: cd 27 8d    .'.
	db	0,6
	mvi	a,000h		;; 1ad3: 3e 00       >.
	push	psw		;; 1ad5: f5          .
	mvi	a,010h		;; 1ad6: 3e 10       >.
	push	psw		;; 1ad8: f5          .
	call	L0889		;; 1ad9: cd 89 08    ...
	lhld	L1787		;; 1adc: 2a 87 17    *..
	push	h		;; 1adf: e5          .
	call	L5428		;; 1ae0: cd 28 54    .(T
	jmp	L8d56		;; 1ae3: c3 56 8d    .V.

L1ae6:	call	L8d27		;; 1ae6: cd 27 8d    .'.
	db	0fch,0ah
	mvi	a,000h		;; 1aeb: 3e 00       >.
	push	psw		;; 1aed: f5          .
	mvi	a,033h		;; 1aee: 3e 33       >3
	push	psw		;; 1af0: f5          .
	call	L0889		;; 1af1: cd 89 08    ...
	call	L7611		;; 1af4: cd 11 76    ..v
	call	L8c3a		;; 1af7: cd 3a 8c    .:.
	db	82h
	push	h		;; 1afb: e5          .
	push	b		;; 1afc: c5          .
	call	L8d60		;; 1afd: cd 60 8d    .`.
	dw	L1a2c
	call	L8870		;; 1b02: cd 70 88    .p.
	call	L8c13		;; 1b05: cd 13 8c    ...
	push	psw		;; 1b08: f5          .
	call	L8d60		;; 1b09: cd 60 8d    .`.
	dw	L1a2c
	mov	a,h		;; 1b0e: 7c          |
	ora	l		;; 1b0f: b5          .
	ora	b		;; 1b10: b0          .
	ora	c		;; 1b11: b1          .
	call	L8c09		;; 1b12: cd 09 8c    ...
	mov	b,a		;; 1b15: 47          G
	pop	psw		;; 1b16: f1          .
	ora	b		;; 1b17: b0          .
	rar			;; 1b18: 1f          .
	jrnc	L1b24		;; 1b19: 30 09       0.
	call	L8c26		;; 1b1b: cd 26 8c    .&.
	db	82h
	call	L8d71		;; 1b1f: cd 71 8d    .q.
	dw	L1a2c
L1b24:	call	L8d60		;; 1b24: cd 60 8d    .`.
	dw	L1a2c
	mov	h,b		;; 1b29: 60          `
	mov	l,c		;; 1b2a: 69          i
	push	h		;; 1b2b: e5          .
	call	L07d2		;; 1b2c: cd d2 07    ...
	mvi	a,02bh		;; 1b2f: 3e 2b       >+
	push	psw		;; 1b31: f5          .
	call	L0597		;; 1b32: cd 97 05    ...
	lhld	L1a28		;; 1b35: 2a 28 1a    *(.
	rst	4		;; 1b38: e7          .
	db	87h
	push	h		;; 1b3a: e5          .
	push	b		;; 1b3b: c5          .
	lhld	L1a2a		;; 1b3c: 2a 2a 1a    **.
	rst	4		;; 1b3f: e7          .
	db	87h
	call	L87f6		;; 1b41: cd f6 87    ...
	mov	h,b		;; 1b44: 60          `
	mov	l,c		;; 1b45: 69          i
	push	h		;; 1b46: e5          .
	call	L07d2		;; 1b47: cd d2 07    ...
	call	L0977		;; 1b4a: cd 77 09    .w.
	jmp	L8d56		;; 1b4d: c3 56 8d    .V.

L1b50:	call	L8d27		;; 1b50: cd 27 8d    .'.
	db	0c6h,'@'
	mvi	a,000h		;; 1b55: 3e 00       >.
	push	psw		;; 1b57: f5          .
	mvi	a,003h		;; 1b58: 3e 03       >.
	push	psw		;; 1b5a: f5          .
	call	L0889		;; 1b5b: cd 89 08    ...
	mvi	a,007h		;; 1b5e: 3e 07       >.
	push	psw		;; 1b60: f5          .
	mvi	a,020h		;; 1b61: 3e 20       > 
	push	psw		;; 1b63: f5          .
	call	L0720		;; 1b64: cd 20 07    . .
	call	L1ab6		;; 1b67: cd b6 1a    ...
	mvi	a,02eh		;; 1b6a: 3e 2e       >.
	push	psw		;; 1b6c: f5          .
	call	L0597		;; 1b6d: cd 97 05    ...
	mvi	a,02eh		;; 1b70: 3e 2e       >.
	push	psw		;; 1b72: f5          .
	call	L0597		;; 1b73: cd 97 05    ...
	call	L1ace		;; 1b76: cd ce 1a    ...
	mvi	a,006h		;; 1b79: 3e 06       >.
	push	psw		;; 1b7b: f5          .
	mvi	a,020h		;; 1b7c: 3e 20       > 
	push	psw		;; 1b7e: f5          .
	call	L0720		;; 1b7f: cd 20 07    . .
	lda	L1050		;; 1b82: 3a 50 10    :P.
	mov	b,a		;; 1b85: 47          G
	mvi	a,001h		;; 1b86: 3e 01       >.
	call	L894e		;; 1b88: cd 4e 89    .N.
	stx	b,-126		;; 1b8b: dd 70 82    .p.
	jrc	L1ba8		;; 1b8e: 38 18       8.
L1b90:	stx	a,-69		;; 1b90: dd 77 bb    .w.
	mov	l,a		;; 1b93: 6f          o
	mvi	h,000h		;; 1b94: 26 00       &.
	lxi	d,L1050		;; 1b96: 11 50 10    .P.
	dad	d		;; 1b99: 19          .
	mov	a,m		;; 1b9a: 7e          ~
	push	psw		;; 1b9b: f5          .
	call	L0597		;; 1b9c: cd 97 05    ...
	ldx	a,-69		;; 1b9f: dd 7e bb    .~.
	inr	a		;; 1ba2: 3c          <
	dcrx	-126		;; 1ba3: dd 35 82    .5.
	jrnz	L1b90		;; 1ba6: 20 e8        .
L1ba8:	call	L1bb2		;; 1ba8: cd b2 1b    ...
	db	'       '
L1bb2:	call	L75e5		;; 1bb2: cd e5 75    ..u
	db	7
	lxi	h,0ff83h	;; 1bb6: 21 83 ff    ...
	rst	2		;; 1bb9: d7          .
	mvi	a,037h		;; 1bba: 3e 37       >7
	call	L8b81		;; 1bbc: cd 81 8b    ...
	lda	L178b		;; 1bbf: 3a 8b 17    :..
	rar			;; 1bc2: 1f          .
	jrnc	L1bdc		;; 1bc3: 30 17       0.
	call	L1bcf		;; 1bc5: cd cf 1b    ...
	db	'   WAIT'
L1bcf:	call	L75e5		;; 1bcf: cd e5 75    ..u
	db	7
	lxi	h,0ff83h	;; 1bd3: 21 83 ff    ...
	rst	2		;; 1bd6: d7          .
	mvi	a,037h		;; 1bd7: 3e 37       >7
	call	L8b81		;; 1bd9: cd 81 8b    ...
L1bdc:	lxi	h,0ff83h	;; 1bdc: 21 83 ff    ...
	rst	2		;; 1bdf: d7          .
	call	L75ea		;; 1be0: cd ea 75    ..u
	mvi	a,037h		;; 1be3: 3e 37       >7
	call	L8bb0		;; 1be5: cd b0 8b    ...
	call	L0803		;; 1be8: cd 03 08    ...
	call	L1bf5		;; 1beb: cd f5 1b    ...
	db	' Free ='
L1bf5:	call	L75e5		;; 1bf5: cd e5 75    ..u
	db	7
	mvi	a,037h		;; 1bf9: 3e 37       >7
	call	L8bb0		;; 1bfb: cd b0 8b    ...
	call	L0803		;; 1bfe: cd 03 08    ...
	call	L0977		;; 1c01: cd 77 09    .w.
	call	L1ae6		;; 1c04: cd e6 1a    ...
	jmp	L8d56		;; 1c07: c3 56 8d    .V.

L1c0a:	db	0
L1c0b:	db	0
L1c0c:	db	0
L1c0d:	db	0
L1c0e:	db	0
L1c0f:	db	0
L1c10:	db	0
L1c11:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0
L1c53:	db	0
L1c54:	db	0
L1c55:	db	0
L1c56:	db	0,0
L1c58:	db	0
L1c59:	db	0
L1c5a:	db	0
L1c5b:	db	0
L1c5c:	db	0
L1c5d:	db	0
L1c5e:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0
L1c90:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0
L1cc2:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0
L1cf4:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0
L1d26:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0
L1d3f:	db	0
L1d40:	db	0
L1d41:	db	0,0
L1d43:	db	0,0
L1d45:	db	0
L1d46:	db	0
L1d47:	db	0
L1d48:	db	0
L1d49:	db	0
L1d4a:	db	0,0
L1d4c:	db	0,0,0,0
L1d50:	db	0
L1d51:	db	0
L1d52:	db	0,0
L1d54:	db	0
L1d55:	db	0
L1d56:	db	0
L1d57:	db	0
L1d58:	db	0,0
L1d5a:	db	0,0
L1d5c:	db	0
L1d5d:	call	L8d27		;; 1d5d: cd 27 8d    .'.
	db	0,8
	ldx	a,-125		;; 1d62: dd 7e 83    .~.
	sta	L02e1		;; 1d65: 32 e1 02    2..
	lda	L02ea		;; 1d68: 3a ea 02    :..
	ora	a		;; 1d6b: b7          .
	jrnz	L1d73		;; 1d6c: 20 05        .
	lxi	h,L02ea		;; 1d6e: 21 ea 02    ...
	mvi	m,001h		;; 1d71: 36 01       6.
L1d73:	lda	L02ea		;; 1d73: 3a ea 02    :..
	dcr	a		;; 1d76: 3d          =
	mov	b,a		;; 1d77: 47          G
	lda	L02e9		;; 1d78: 3a e9 02    :..
	cmp	b		;; 1d7b: b8          .
	jrnc	L1d85		;; 1d7c: 30 07       0.
	lda	L02ea		;; 1d7e: 3a ea 02    :..
	dcr	a		;; 1d81: 3d          =
	sta	L02e9		;; 1d82: 32 e9 02    2..
L1d85:	lda	L02e9		;; 1d85: 3a e9 02    :..
	inr	a		;; 1d88: 3c          <
	mov	b,a		;; 1d89: 47          G
	lda	L02e8		;; 1d8a: 3a e8 02    :..
	cmp	b		;; 1d8d: b8          .
	jrnc	L1d97		;; 1d8e: 30 07       0.
	lda	L02e9		;; 1d90: 3a e9 02    :..
	inr	a		;; 1d93: 3c          <
	sta	L02e8		;; 1d94: 32 e8 02    2..
L1d97:	lda	L02e8		;; 1d97: 3a e8 02    :..
	dcr	a		;; 1d9a: 3d          =
	mov	b,a		;; 1d9b: 47          G
	lda	L02e7		;; 1d9c: 3a e7 02    :..
	cmp	b		;; 1d9f: b8          .
	jrnc	L1da9		;; 1da0: 30 07       0.
	lda	L02e8		;; 1da2: 3a e8 02    :..
	dcr	a		;; 1da5: 3d          =
	sta	L02e7		;; 1da6: 32 e7 02    2..
L1da9:	ldx	a,-125		;; 1da9: dd 7e 83    .~.
	call	L1dcb		;; 1dac: cd cb 1d    ...
L1daf:	lda	L02ea		;; 1daf: 3a ea 02    :..
	sta	L02e6		;; 1db2: 32 e6 02    2..
	lda	L02e9		;; 1db5: 3a e9 02    :..
	sta	L02e5		;; 1db8: 32 e5 02    2..
	jr	L1dd7		;; 1dbb: 18 1a       ..

L1dbd:	lda	L02e8		;; 1dbd: 3a e8 02    :..
	sta	L02e6		;; 1dc0: 32 e6 02    2..
	lda	L02e7		;; 1dc3: 3a e7 02    :..
	sta	L02e5		;; 1dc6: 32 e5 02    2..
	jr	L1dd7		;; 1dc9: 18 0c       ..

L1dcb:	lxi	b,00102h	;; 1dcb: 01 02 01    ...
	call	L8d90		;; 1dce: cd 90 8d    ...
	dw	L1daf
	dw	L1dbd
	dw	L8e06
L1dd7:	jmp	L8d56		;; 1dd7: c3 56 8d    .V.

L1dda:	call	L8d27		;; 1dda: cd 27 8d    .'.
	db	0,6
	lda	L02e6		;; 1ddf: 3a e6 02    :..
	push	psw		;; 1de2: f5          .
	call	L0953		;; 1de3: cd 53 09    .S.
	jmp	L8d56		;; 1de6: c3 56 8d    .V.

L1de9:	call	L8d27		;; 1de9: cd 27 8d    .'.
	db	0ffh,9
	ldx	a,-124		;; 1dee: dd 7e 84    .~.
	stx	a,-126		;; 1df1: dd 77 82    .w.
	ldx	a,-124		;; 1df4: dd 7e 84    .~.
	ora	a		;; 1df7: b7          .
	jrz	L1e2c		;; 1df8: 28 32       (2
	mvi	a,01fh		;; 1dfa: 3e 1f       >.
	cmpx	-124		;; 1dfc: dd be 84    ...
	jrc	L1e0b		;; 1dff: 38 0a       8.
	ldx	a,-124		;; 1e01: dd 7e 84    .~.
	adi	040h		;; 1e04: c6 40       .@
	stx	a,-126		;; 1e06: dd 77 82    .w.
	jr	L1e2c		;; 1e09: 18 21       ..

L1e0b:	ldx	a,-124		;; 1e0b: dd 7e 84    .~.
	cpi	061h		;; 1e0e: fe 61       .a
	mvi	a,000h		;; 1e10: 3e 00       >.
	cmc			;; 1e12: 3f          ?
	ral			;; 1e13: 17          .
	push	psw		;; 1e14: f5          .
	mvi	a,07ah		;; 1e15: 3e 7a       >z
	cmpx	-124		;; 1e17: dd be 84    ...
	mvi	a,000h		;; 1e1a: 3e 00       >.
	cmc			;; 1e1c: 3f          ?
	ral			;; 1e1d: 17          .
	mov	b,a		;; 1e1e: 47          G
	pop	psw		;; 1e1f: f1          .
	ana	b		;; 1e20: a0          .
	rar			;; 1e21: 1f          .
	jrnc	L1e2c		;; 1e22: 30 08       0.
	ldx	a,-124		;; 1e24: dd 7e 84    .~.
	adi	0e0h		;; 1e27: c6 e0       ..
	stx	a,-126		;; 1e29: dd 77 82    .w.
L1e2c:	ldx	a,-126		;; 1e2c: dd 7e 82    .~.
	jmp	L8d56		;; 1e2f: c3 56 8d    .V.

L1e32:	call	L8d27		;; 1e32: cd 27 8d    .'.
	db	0,6
	lda	L02e2		;; 1e37: 3a e2 02    :..
	push	psw		;; 1e3a: f5          .
	call	L0953		;; 1e3b: cd 53 09    .S.
	jmp	L8d56		;; 1e3e: c3 56 8d    .V.

L1e41:	call	L8d27		;; 1e41: cd 27 8d    .'.
	db	0fch,0ah
	lda	L017e		;; 1e46: 3a 7e 01    :~.
	push	psw		;; 1e49: f5          .
	mvi	a,080h		;; 1e4a: 3e 80       >.
	call	L8a08		;; 1e4c: cd 08 8a    ...
	rst	4		;; 1e4f: e7          .
	db	87h
	call	L8c3a		;; 1e51: cd 3a 8c    .:.
	db	82h
L1e55:	lxi	h,L1785		;; 1e55: 21 85 17    ...
	push	h		;; 1e58: e5          .
	call	L0f25		;; 1e59: cd 25 0f    .%.
	call	L8c26		;; 1e5c: cd 26 8c    .&.
	db	82h
	mov	a,h		;; 1e60: 7c          |
	ora	l		;; 1e61: b5          .
	ora	b		;; 1e62: b0          .
	ora	c		;; 1e63: b1          .
	jrnz	L1e6d		;; 1e64: 20 07        .
	lda	L1786		;; 1e66: 3a 86 17    :..
	push	psw		;; 1e69: f5          .
	call	L50de		;; 1e6a: cd de 50    ..P
L1e6d:	call	L8c26		;; 1e6d: cd 26 8c    .&.
	db	82h
	call	L885c		;; 1e71: cd 5c 88    .\.
	call	L8c3a		;; 1e74: cd 3a 8c    .:.
	db	82h
	lda	L1785		;; 1e78: 3a 85 17    :..
	ora	a		;; 1e7b: b7          .
	jrz	L1e55		;; 1e7c: 28 d7       (.
	lda	L1785		;; 1e7e: 3a 85 17    :..
	push	psw		;; 1e81: f5          .
	call	L1de9		;; 1e82: cd e9 1d    ...
	sta	L1785		;; 1e85: 32 85 17    2..
	call	L1a30		;; 1e88: cd 30 1a    .0.
	jmp	L8d56		;; 1e8b: c3 56 8d    .V.

L1e8e:	call	L8d27		;; 1e8e: cd 27 8d    .'.
	db	0,6
	lxi	h,L1c5c		;; 1e93: 21 5c 1c    .\.
	push	h		;; 1e96: e5          .
	call	L0f82		;; 1e97: cd 82 0f    ...
	jmp	L8d56		;; 1e9a: c3 56 8d    .V.

L1e9d:	call	L8d27		;; 1e9d: cd 27 8d    .'.
	db	0,6
	lda	L1c5c		;; 1ea2: 3a 5c 1c    :\.
	push	psw		;; 1ea5: f5          .
	call	L0597		;; 1ea6: cd 97 05    ...
	jmp	L8d56		;; 1ea9: c3 56 8d    .V.

L1eac:	call	L8d27		;; 1eac: cd 27 8d    .'.
	db	0,6
	lda	L0295		;; 1eb1: 3a 95 02    :..
	push	psw		;; 1eb4: f5          .
	call	L0414		;; 1eb5: cd 14 04    ...
	lda	L02ee		;; 1eb8: 3a ee 02    :..
	dcr	a		;; 1ebb: 3d          =
	sta	L02ee		;; 1ebc: 32 ee 02    2..
	call	L0799		;; 1ebf: cd 99 07    ...
	lda	L0295		;; 1ec2: 3a 95 02    :..
	push	psw		;; 1ec5: f5          .
	call	L0414		;; 1ec6: cd 14 04    ...
	lda	L02ee		;; 1ec9: 3a ee 02    :..
	dcr	a		;; 1ecc: 3d          =
	sta	L02ee		;; 1ecd: 32 ee 02    2..
	jmp	L8d56		;; 1ed0: c3 56 8d    .V.

L1ed3:	call	L8d27		;; 1ed3: cd 27 8d    .'.
	db	0ffh,9
	ldx	a,-124		;; 1ed8: dd 7e 84    .~.
	adi	002h		;; 1edb: c6 02       ..
	stx	a,-126		;; 1edd: dd 77 82    .w.
	mvi	a,001h		;; 1ee0: 3e 01       >.
	push	psw		;; 1ee2: f5          .
	ldx	a,-126		;; 1ee3: dd 7e 82    .~.
	push	psw		;; 1ee6: f5          .
	call	L0a65		;; 1ee7: cd 65 0a    .e.
	lda	L1c5b		;; 1eea: 3a 5b 1c    :[.
	cmpx	-126		;; 1eed: dd be 82    ...
	jrnc	L1ef8		;; 1ef0: 30 06       0.
	ldx	a,-126		;; 1ef2: dd 7e 82    .~.
	sta	L1c5b		;; 1ef5: 32 5b 1c    2[.
L1ef8:	ldx	a,-126		;; 1ef8: dd 7e 82    .~.
	lxi	h,L1d57		;; 1efb: 21 57 1d    .W.
	cmp	m		;; 1efe: be          .
	jrc	L1f06		;; 1eff: 38 05       8.
	lxi	h,L1d57		;; 1f01: 21 57 1d    .W.
	mvi	m,000h		;; 1f04: 36 00       6.
L1f06:	mvi	a,002h		;; 1f06: 3e 02       >.
	push	psw		;; 1f08: f5          .
	mvi	a,003h		;; 1f09: 3e 03       >.
	push	psw		;; 1f0b: f5          .
	call	L0889		;; 1f0c: cd 89 08    ...
	jmp	L8d56		;; 1f0f: c3 56 8d    .V.

L1f12:	call	L8d27		;; 1f12: cd 27 8d    .'.
	db	0f1h,19h
	mvi	a,001h		;; 1f17: 3e 01       >.
	push	psw		;; 1f19: f5          .
	call	L1ed3		;; 1f1a: cd d3 1e    ...
	ldx	a,-108		;; 1f1d: dd 7e 94    .~.
	push	psw		;; 1f20: f5          .
	call	L1762		;; 1f21: cd 62 17    .b.
	call	L0799		;; 1f24: cd 99 07    ...
	mvi	a,05bh		;; 1f27: 3e 5b       >[
	push	psw		;; 1f29: f5          .
	call	L0597		;; 1f2a: cd 97 05    ...
	rst	3		;; 1f2d: df          .
	db	91h
	push	h		;; 1f2f: e5          .
	call	L5428		;; 1f30: cd 28 54    .(T
	mvi	a,05dh		;; 1f33: 3e 5d       >]
	push	psw		;; 1f35: f5          .
	call	L0597		;; 1f36: cd 97 05    ...
	call	L0799		;; 1f39: cd 99 07    ...
	mvi	a,03fh		;; 1f3c: 3e 3f       >?
	push	psw		;; 1f3e: f5          .
	call	L0597		;; 1f3f: cd 97 05    ...
	call	L0799		;; 1f42: cd 99 07    ...
	lxi	h,00000h	;; 1f45: 21 00 00    ...
	rst	3		;; 1f48: df          .
	db	2
	mvix	001h,-124	;; 1f4a: dd 36 84 01 .6..
L1f4e:	call	L1e8e		;; 1f4e: cd 8e 1e    ...
	ldx	l,-124		;; 1f51: dd 6e 84    .n.
	mvi	h,000h		;; 1f54: 26 00       &.
	rst	2		;; 1f56: d7          .
	lxi	d,0ff84h	;; 1f57: 11 84 ff    ...
	dad	d		;; 1f5a: 19          .
	push	h		;; 1f5b: e5          .
	lda	L1c5c		;; 1f5c: 3a 5c 1c    :\.
	pop	h		;; 1f5f: e1          .
	mov	m,a		;; 1f60: 77          w
	lda	L1c5c		;; 1f61: 3a 5c 1c    :\.
	cpi	008h		;; 1f64: fe 08       ..
	jrnz	L1f86		;; 1f66: 20 1e        .
	mvi	a,001h		;; 1f68: 3e 01       >.
	cmpx	-124		;; 1f6a: dd be 84    ...
	jrnc	L1f84		;; 1f6d: 30 15       0.
	call	L1eac		;; 1f6f: cd ac 1e    ...
	ldx	a,-124		;; 1f72: dd 7e 84    .~.
	dcr	a		;; 1f75: 3d          =
	stx	a,-124		;; 1f76: dd 77 84    .w.
	rst	3		;; 1f79: df          .
	db	82h
	push	h		;; 1f7b: e5          .
	lxi	h,00010h	;; 1f7c: 21 10 00    ...
	call	L8758		;; 1f7f: cd 58 87    .X.
	rst	3		;; 1f82: df          .
	db	2
L1f84:	jr	L1fca		;; 1f84: 18 44       .D

L1f86:	lda	L1c5c		;; 1f86: 3a 5c 1c    :\.
	push	psw		;; 1f89: f5          .
	lxi	h,L1c5d		;; 1f8a: 21 5d 1c    .].
	push	h		;; 1f8d: e5          .
	call	L19c8		;; 1f8e: cd c8 19    ...
	rar			;; 1f91: 1f          .
	jrnc	L1fb3		;; 1f92: 30 1f       0.
	rst	3		;; 1f94: df          .
	db	82h
	push	h		;; 1f96: e5          .
	lxi	h,00010h	;; 1f97: 21 10 00    ...
	call	L87b7		;; 1f9a: cd b7 87    ...
	push	h		;; 1f9d: e5          .
	push	b		;; 1f9e: c5          .
	lda	L1c5d		;; 1f9f: 3a 5d 1c    :].
	call	L8807		;; 1fa2: cd 07 88    ...
	call	L87e7		;; 1fa5: cd e7 87    ...
	mov	h,b		;; 1fa8: 60          `
	mov	l,c		;; 1fa9: 69          i
	rst	3		;; 1faa: df          .
	db	2
	rst	3		;; 1fac: df          .
	db	0fh
	call	L1e9d		;; 1fae: cd 9d 1e    ...
	jr	L1fca		;; 1fb1: 18 17       ..

L1fb3:	lda	L1c5c		;; 1fb3: 3a 5c 1c    :\.
	cpi	00dh		;; 1fb6: fe 0d       ..
	jrnz	L1fc7		;; 1fb8: 20 0d        .
	ldx	a,-124		;; 1fba: dd 7e 84    .~.
	cpi	001h		;; 1fbd: fe 01       ..
	jrnz	L1fc5		;; 1fbf: 20 04        .
	rst	3		;; 1fc1: df          .
	db	91h
	rst	3		;; 1fc3: df          .
	db	0fh
L1fc5:	jr	L1fca		;; 1fc5: 18 03       ..

L1fc7:	call	L0a8f		;; 1fc7: cd 8f 0a    ...
L1fca:	ldx	a,-124		;; 1fca: dd 7e 84    .~.
	inr	a		;; 1fcd: 3c          <
	stx	a,-124		;; 1fce: dd 77 84    .w.
	lda	L1c5c		;; 1fd1: 3a 5c 1c    :\.
	cpi	00dh		;; 1fd4: fe 0d       ..
	call	L8c09		;; 1fd6: cd 09 8c    ...
	push	psw		;; 1fd9: f5          .
	ldx	a,-124		;; 1fda: dd 7e 84    .~.
	cpi	00ah		;; 1fdd: fe 0a       ..
	mvi	a,000h		;; 1fdf: 3e 00       >.
	cmc			;; 1fe1: 3f          ?
	ral			;; 1fe2: 17          .
	mov	b,a		;; 1fe3: 47          G
	pop	psw		;; 1fe4: f1          .
	ora	b		;; 1fe5: b0          .
	lxi	h,L02f0		;; 1fe6: 21 f0 02    ...
	ora	m		;; 1fe9: b6          .
	rar			;; 1fea: 1f          .
	jnc	L1f4e		;; 1feb: d2 4e 1f    .N.
	call	L0977		;; 1fee: cd 77 09    .w.
	call	L0965		;; 1ff1: cd 65 09    .e.
	rst	3		;; 1ff4: df          .
	db	8fh
	jmp	L8d56		;; 1ff6: c3 56 8d    .V.

L1ff9:	call	L8d27		;; 1ff9: cd 27 8d    .'.
	db	0fbh,0bh
	lda	L017d		;; 1ffe: 3a 7d 01    :}.
	push	psw		;; 2001: f5          .
	mvi	a,008h		;; 2002: 3e 08       >.
	call	L8a08		;; 2004: cd 08 8a    ...
	rst	4		;; 2007: e7          .
	db	87h
	call	L8c3a		;; 2009: cd 3a 8c    .:.
	db	83h
L200d:	call	L0496		;; 200d: cd 96 04    ...
	stx	a,-126		;; 2010: dd 77 82    .w.
	call	L8c26		;; 2013: cd 26 8c    .&.
	db	83h
	call	L885c		;; 2017: cd 5c 88    .\.
	call	L8c3a		;; 201a: cd 3a 8c    .:.
	db	83h
	mov	a,h		;; 201e: 7c          |
	ora	l		;; 201f: b5          .
	ora	b		;; 2020: b0          .
	ora	c		;; 2021: b1          .
	jrnz	L200d		;; 2022: 20 e9        .
	jmp	L8d56		;; 2024: c3 56 8d    .V.

L2027:	call	L8d27		;; 2027: cd 27 8d    .'.
	db	0ffh,7
	mvi	a,000h		;; 202c: 3e 00       >.
	push	psw		;; 202e: f5          .
	lxi	b,0fff7h	;; 202f: 01 f7 ff    ...
	lda	L02ef		;; 2032: 3a ef 02    :..
	mov	l,a		;; 2035: 6f          o
	mvi	h,000h		;; 2036: 26 00       &.
	dad	b		;; 2038: 09          .
	mov	a,l		;; 2039: 7d          }
	push	psw		;; 203a: f5          .
	call	L0889		;; 203b: cd 89 08    ...
	mvi	a,00ah		;; 203e: 3e 0a       >.
	push	psw		;; 2040: f5          .
	call	L1762		;; 2041: cd 62 17    .b.
	call	L0977		;; 2044: cd 77 09    .w.
L2047:	call	L1dda		;; 2047: cd da 1d    ...
	call	L1ff9		;; 204a: cd f9 1f    ...
	mvi	a,000h		;; 204d: 3e 00       >.
	push	psw		;; 204f: f5          .
	lxi	b,0fffch	;; 2050: 01 fc ff    ...
	lda	L02ef		;; 2053: 3a ef 02    :..
	mov	l,a		;; 2056: 6f          o
	mvi	h,000h		;; 2057: 26 00       &.
	dad	b		;; 2059: 09          .
	mov	a,l		;; 205a: 7d          }
	push	psw		;; 205b: f5          .
	call	L0889		;; 205c: cd 89 08    ...
	call	L1ff9		;; 205f: cd f9 1f    ...
	lxi	h,L1c5c		;; 2062: 21 5c 1c    .\.
	push	h		;; 2065: e5          .
	call	L0f25		;; 2066: cd 25 0f    .%.
	lda	L1c5c		;; 2069: 3a 5c 1c    :\.
	push	psw		;; 206c: f5          .
	call	L1de9		;; 206d: cd e9 1d    ...
	sta	L1c5c		;; 2070: 32 5c 1c    2\.
	push	psw		;; 2073: f5          .
	call	L75c9		;; 2074: cd c9 75    ..u
	db	0ch,0,0,0,0,0,0,0,0,0,'@',0,2
	call	L7450		;; 2084: cd 50 74    .Pt
	jrz	L208e		;; 2087: 28 05       (.
	call	L1e9d		;; 2089: cd 9d 1e    ...
	jr	L209c		;; 208c: 18 0e       ..

L208e:	lda	L1c5c		;; 208e: 3a 5c 1c    :\.
	ora	a		;; 2091: b7          .
	jrz	L209c		;; 2092: 28 08       (.
	call	L0a8f		;; 2094: cd 8f 0a    ...
	lxi	h,L1c5c		;; 2097: 21 5c 1c    .\.
	mvi	m,000h		;; 209a: 36 00       6.
L209c:	lda	L1c5c		;; 209c: 3a 5c 1c    :\.
	ora	a		;; 209f: b7          .
	call	L8c0e		;; 20a0: cd 0e 8c    ...
	lxi	h,L02f0		;; 20a3: 21 f0 02    ...
	ora	m		;; 20a6: b6          .
	rar			;; 20a7: 1f          .
	jrnc	L2047		;; 20a8: 30 9d       0.
	lda	L1c5c		;; 20aa: 3a 5c 1c    :\.
	cpi	059h		;; 20ad: fe 59       .Y
	call	L8c09		;; 20af: cd 09 8c    ...
	stx	a,-126		;; 20b2: dd 77 82    .w.
	jmp	L8d56		;; 20b5: c3 56 8d    .V.

L20b8:	call	L8d27		;; 20b8: cd 27 8d    .'.
	db	0ffh,9
	ldx	a,-124		;; 20bd: dd 7e 84    .~.
	cpi	020h		;; 20c0: fe 20       . 
	mvi	a,000h		;; 20c2: 3e 00       >.
	cmc			;; 20c4: 3f          ?
	ral			;; 20c5: 17          .
	push	psw		;; 20c6: f5          .
	mvi	a,07dh		;; 20c7: 3e 7d       >}
	cmpx	-124		;; 20c9: dd be 84    ...
	mvi	a,000h		;; 20cc: 3e 00       >.
	cmc			;; 20ce: 3f          ?
	ral			;; 20cf: 17          .
	mov	b,a		;; 20d0: 47          G
	pop	psw		;; 20d1: f1          .
	ana	b		;; 20d2: a0          .
	push	psw		;; 20d3: f5          .
	ldx	a,-124		;; 20d4: dd 7e 84    .~.
	cpi	027h		;; 20d7: fe 27       .'
	call	L8c0e		;; 20d9: cd 0e 8c    ...
	mov	b,a		;; 20dc: 47          G
	pop	psw		;; 20dd: f1          .
	ana	b		;; 20de: a0          .
	stx	a,-126		;; 20df: dd 77 82    .w.
	jmp	L8d56		;; 20e2: c3 56 8d    .V.

L20e5:	call	L8d27		;; 20e5: cd 27 8d    .'.
	db	0,0ah
	mvi	a,001h		;; 20ea: 3e 01       >.
	cmpx	-125		;; 20ec: dd be 83    ...
	jrnc	L20ff		;; 20ef: 30 0e       0.
	ldx	a,-123		;; 20f1: dd 7e 85    .~.
	srlr	a		;; 20f4: cb 3f       .?
	push	psw		;; 20f6: f5          .
	ldx	a,-125		;; 20f7: dd 7e 83    .~.
	dcr	a		;; 20fa: 3d          =
	push	psw		;; 20fb: f5          .
	call	L20e5		;; 20fc: cd e5 20    .. 
L20ff:	ldx	a,-123		;; 20ff: dd 7e 85    .~.
	ani	001h		;; 2102: e6 01       ..
	adi	030h		;; 2104: c6 30       .0
	push	psw		;; 2106: f5          .
	call	L0597		;; 2107: cd 97 05    ...
	jmp	L8d56		;; 210a: c3 56 8d    .V.

L210d:	call	L8d27		;; 210d: cd 27 8d    .'.
	db	0,8
	lda	L1c0d		;; 2112: 3a 0d 1c    :..
	cpi	044h		;; 2115: fe 44       .D
	jrnz	L2122		;; 2117: 20 09        .
	ldx	a,-125		;; 2119: dd 7e 83    .~.
	push	psw		;; 211c: f5          .
	call	L07a7		;; 211d: cd a7 07    ...
	jr	L2143		;; 2120: 18 21       ..

L2122:	lda	L1c0d		;; 2122: 3a 0d 1c    :..
	cpi	032h		;; 2125: fe 32       .2
	jrnz	L213c		;; 2127: 20 13        .
	ldx	a,-125		;; 2129: dd 7e 83    .~.
	push	psw		;; 212c: f5          .
	mvi	a,008h		;; 212d: 3e 08       >.
	push	psw		;; 212f: f5          .
	call	L20e5		;; 2130: cd e5 20    .. 
	lda	L01af		;; 2133: 3a af 01    :..
	push	psw		;; 2136: f5          .
	call	L0597		;; 2137: cd 97 05    ...
	jr	L2143		;; 213a: 18 07       ..

L213c:	ldx	a,-125		;; 213c: dd 7e 83    .~.
	push	psw		;; 213f: f5          .
	call	L538e		;; 2140: cd 8e 53    ..S
L2143:	jmp	L8d56		;; 2143: c3 56 8d    .V.

L2146:	call	L8d27		;; 2146: cd 27 8d    .'.
	db	0,8
	lda	L1c0d		;; 214b: 3a 0d 1c    :..
	cpi	044h		;; 214e: fe 44       .D
	jrnz	L215a		;; 2150: 20 08        .
	rst	3		;; 2152: df          .
	db	82h
	push	h		;; 2154: e5          .
	call	L07d2		;; 2155: cd d2 07    ...
	jr	L2160		;; 2158: 18 06       ..

L215a:	rst	3		;; 215a: df          .
	db	82h
	push	h		;; 215c: e5          .
	call	L53c1		;; 215d: cd c1 53    ..S
L2160:	jmp	L8d56		;; 2160: c3 56 8d    .V.

L2163:	call	L8d27		;; 2163: cd 27 8d    .'.
	db	0,6
	lda	L1d5c		;; 2168: 3a 5c 1d    :\.
	rar			;; 216b: 1f          .
	jrnc	L2178		;; 216c: 30 0a       0.
	lxi	h,L1d5c		;; 216e: 21 5c 1d    .\.
	mvi	m,000h		;; 2171: 36 00       6.
	lxi	h,L1c0f		;; 2173: 21 0f 1c    ...
	mvi	m,049h		;; 2176: 36 49       6I
L2178:	jmp	L8d56		;; 2178: c3 56 8d    .V.

L217b:	call	L8d27		;; 217b: cd 27 8d    .'.
	db	0f2h,16h
	mvi	a,001h		;; 2180: 3e 01       >.
	push	psw		;; 2182: f5          .
	call	L0d9b		;; 2183: cd 9b 0d    ...
	lda	L1c0f		;; 2186: 3a 0f 1c    :..
	stx	a,-125		;; 2189: dd 77 83    .w.
	push	psw		;; 218c: f5          .
	call	L75c9		;; 218d: cd c9 75    ..u
	db	8,0,0,0,0,0,0,0feh,3
	call	L7450		;; 2199: cd 50 74    .Pt
	jrz	L21a2		;; 219c: 28 04       (.
	mvix	042h,-125	;; 219e: dd 36 83 42 .6.B
L21a2:	ldx	a,-125		;; 21a2: dd 7e 83    .~.
	call	L252d		;; 21a5: cd 2d 25    .-%
L21a8:	rst	3		;; 21a8: df          .
	db	90h
	rst	4		;; 21aa: e7          .
	db	80h
	rst	4		;; 21ac: e7          .
	db	87h
	push	h		;; 21ae: e5          .
	push	b		;; 21af: c5          .
	lhld	L1d52		;; 21b0: 2a 52 1d    *R.
	rst	4		;; 21b3: e7          .
	db	87h
	call	L87f6		;; 21b5: cd f6 87    ...
	push	h		;; 21b8: e5          .
	push	b		;; 21b9: c5          .
	lda	L1d54		;; 21ba: 3a 54 1d    :T.
	rst	4		;; 21bd: e7          .
	db	86h
	call	L855b		;; 21bf: cd 5b 85    .[.
	mov	a,h		;; 21c2: 7c          |
	ora	l		;; 21c3: b5          .
	ora	b		;; 21c4: b0          .
	ora	c		;; 21c5: b1          .
	jrz	L21cf		;; 21c6: 28 07       (.
	mvix	04ch,-125	;; 21c8: dd 36 83 4c .6.L
	jmp	L2461		;; 21cc: c3 61 24    .a$

L21cf:	mvix	001h,-116	;; 21cf: dd 36 8c 01 .6..
	ldx	a,-125		;; 21d3: dd 7e 83    .~.
	cpi	054h		;; 21d6: fe 54       .T
	jrnz	L21dc		;; 21d8: 20 02        .
	jr	L21e6		;; 21da: 18 0a       ..

L21dc:	jmp	L2461		;; 21dc: c3 61 24    .a$

	jmp	L2549		;; 21df: c3 49 25    .I%

L21e2:	mvix	000h,-116	;; 21e2: dd 36 8c 00 .6..
L21e6:	mvix	000h,-113	;; 21e6: dd 36 8f 00 .6..
	mvix	000h,-115	;; 21ea: dd 36 8d 00 .6..
	mvix	000h,-114	;; 21ee: dd 36 8e 00 .6..
	lxi	h,L01a8		;; 21f2: 21 a8 01    ...
	call	L75ea		;; 21f5: cd ea 75    ..u
	mvi	a,037h		;; 21f8: 3e 37       >7
	call	L8bb0		;; 21fa: cd b0 8b    ...
	call	L0803		;; 21fd: cd 03 08    ...
	mvi	a,042h		;; 2200: 3e 42       >B
	push	psw		;; 2202: f5          .
	call	L0597		;; 2203: cd 97 05    ...
	lda	L02ee		;; 2206: 3a ee 02    :..
	stx	a,-123		;; 2209: dd 77 85    .w.
	mvi	a,002h		;; 220c: 3e 02       >.
	push	psw		;; 220e: f5          .
	call	L0d9b		;; 220f: cd 9b 0d    ...
	rst	3		;; 2212: df          .
	db	90h
	rst	4		;; 2214: e7          .
	db	80h
	push	h		;; 2216: e5          .
	call	L1355		;; 2217: cd 55 13    .U.
	stx	a,-117		;; 221a: dd 77 8b    .w.
L221d:	ldx	a,-117		;; 221d: dd 7e 8b    .~.
	stx	a,-118		;; 2220: dd 77 8a    .w.
	lda	L1c0f		;; 2223: 3a 0f 1c    :..
	cpi	043h		;; 2226: fe 43       .C
	jrnz	L2232		;; 2228: 20 08        .
	ldx	a,-117		;; 222a: dd 7e 8b    .~.
	ani	07fh		;; 222d: e6 7f       ..
	stx	a,-118		;; 222f: dd 77 8a    .w.
L2232:	ldx	a,-118		;; 2232: dd 7e 8a    .~.
	push	psw		;; 2235: f5          .
	call	L20b8		;; 2236: cd b8 20    .. 
	push	psw		;; 2239: f5          .
	lda	L1c0e		;; 223a: 3a 0e 1c    :..
	cpi	04dh		;; 223d: fe 4d       .M
	call	L8c09		;; 223f: cd 09 8c    ...
	mov	b,a		;; 2242: 47          G
	pop	psw		;; 2243: f1          .
	ana	b		;; 2244: a0          .
	rar			;; 2245: 1f          .
	jrnc	L227b		;; 2246: 30 33       03
	ldx	a,-113		;; 2248: dd 7e 8f    .~.
	ora	a		;; 224b: b7          .
	jrnz	L2258		;; 224c: 20 0a        .
	mvi	a,027h		;; 224e: 3e 27       >'
	push	psw		;; 2250: f5          .
	call	L0597		;; 2251: cd 97 05    ...
	mvix	001h,-115	;; 2254: dd 36 8d 01 .6..
L2258:	ldx	a,-118		;; 2258: dd 7e 8a    .~.
	push	psw		;; 225b: f5          .
	call	L0597		;; 225c: cd 97 05    ...
	ldx	a,-118		;; 225f: dd 7e 8a    .~.
	cpi	024h		;; 2262: fe 24       .$
	jrnz	L226a		;; 2264: 20 04        .
	mvix	001h,-116	;; 2266: dd 36 8c 01 .6..
L226a:	ldx	a,-117		;; 226a: dd 7e 8b    .~.
	cpi	080h		;; 226d: fe 80       ..
	jrc	L2279		;; 226f: 38 08       8.
	mvix	001h,-114	;; 2271: dd 36 8e 01 .6..
	mvix	001h,-116	;; 2275: dd 36 8c 01 .6..
L2279:	jr	L22b4		;; 2279: 18 39       .9

L227b:	ldx	a,-113		;; 227b: dd 7e 8f    .~.
	ora	a		;; 227e: b7          .
	jrz	L2287		;; 227f: 28 06       (.
	mvi	a,02ch		;; 2281: 3e 2c       >,
	push	psw		;; 2283: f5          .
	call	L0597		;; 2284: cd 97 05    ...
L2287:	ldx	a,-117		;; 2287: dd 7e 8b    .~.
	push	psw		;; 228a: f5          .
	call	L210d		;; 228b: cd 0d 21    ...
	ldx	a,-117		;; 228e: dd 7e 8b    .~.
	ora	a		;; 2291: b7          .
	jrnz	L22b4		;; 2292: 20 20         
	lda	L1c0e		;; 2294: 3a 0e 1c    :..
	cpi	04dh		;; 2297: fe 4d       .M
	call	L8c09		;; 2299: cd 09 8c    ...
	push	psw		;; 229c: f5          .
	rst	3		;; 229d: df          .
	db	90h
	rst	4		;; 229f: e7          .
	db	80h
	dcx	h		;; 22a1: 2b          +
	push	h		;; 22a2: e5          .
	call	L1355		;; 22a3: cd 55 13    .U.
	push	psw		;; 22a6: f5          .
	call	L20b8		;; 22a7: cd b8 20    .. 
	mov	b,a		;; 22aa: 47          G
	pop	psw		;; 22ab: f1          .
	ana	b		;; 22ac: a0          .
	rar			;; 22ad: 1f          .
	jrnc	L22b4		;; 22ae: 30 04       0.
	mvix	001h,-116	;; 22b0: dd 36 8c 01 .6..
L22b4:	ldx	a,-113		;; 22b4: dd 7e 8f    .~.
	inr	a		;; 22b7: 3c          <
	stx	a,-113		;; 22b8: dd 77 8f    .w.
	rst	3		;; 22bb: df          .
	db	90h
	push	h		;; 22bd: e5          .
	rst	3		;; 22be: df          .
	db	90h
	rst	4		;; 22c0: e7          .
	db	80h
	inx	h		;; 22c2: 23          #
	rst	4		;; 22c3: e7          .
	db	81h
	ldx	a,-117		;; 22c5: dd 7e 8b    .~.
	stx	a,-126		;; 22c8: dd 77 82    .w.
	rst	3		;; 22cb: df          .
	db	90h
	rst	4		;; 22cd: e7          .
	db	80h
	push	h		;; 22cf: e5          .
	call	L1355		;; 22d0: cd 55 13    .U.
	stx	a,-117		;; 22d3: dd 77 8b    .w.
	stx	a,-118		;; 22d6: dd 77 8a    .w.
	lda	L1c0f		;; 22d9: 3a 0f 1c    :..
	cpi	043h		;; 22dc: fe 43       .C
	jrnz	L22e8		;; 22de: 20 08        .
	ldx	a,-117		;; 22e0: dd 7e 8b    .~.
	ani	07fh		;; 22e3: e6 7f       ..
	stx	a,-118		;; 22e5: dd 77 8a    .w.
L22e8:	lda	L1d5c		;; 22e8: 3a 5c 1d    :\.
	rar			;; 22eb: 1f          .
	jrnc	L2334		;; 22ec: 30 46       0F
	lda	L1c0f		;; 22ee: 3a 0f 1c    :..
	push	psw		;; 22f1: f5          .
	call	L75c9		;; 22f2: cd c9 75    ..u
	db	8,0,0,0,0,0,0,0feh,3
	call	L7450		;; 22fe: cd 50 74    .Pt
	jrz	L2317		;; 2301: 28 14       (.
	lda	L1c0f		;; 2303: 3a 0f 1c    :..
	dcr	a		;; 2306: 3d          =
	sta	L1c0f		;; 2307: 32 0f 1c    2..
	cpi	030h		;; 230a: fe 30       .0
	jrnz	L2315		;; 230c: 20 07        .
	call	L2163		;; 230e: cd 63 21    .c.
	mvix	001h,-116	;; 2311: dd 36 8c 01 .6..
L2315:	jr	L2334		;; 2315: 18 1d       ..

L2317:	lda	L1c0f		;; 2317: 3a 0f 1c    :..
	cpi	030h		;; 231a: fe 30       .0
	jrnz	L232d		;; 231c: 20 0f        .
	ldx	a,-126		;; 231e: dd 7e 82    .~.
	ora	a		;; 2321: b7          .
	jrnz	L232b		;; 2322: 20 07        .
	call	L2163		;; 2324: cd 63 21    .c.
	mvix	001h,-116	;; 2327: dd 36 8c 01 .6..
L232b:	jr	L2334		;; 232b: 18 07       ..

L232d:	call	L2163		;; 232d: cd 63 21    .c.
	mvix	001h,-116	;; 2330: dd 36 8c 01 .6..
L2334:	ldx	a,-116		;; 2334: dd 7e 8c    .~.
	xri	001h		;; 2337: ee 01       ..
	rar			;; 2339: 1f          .
	jrnc	L2358		;; 233a: 30 1c       0.
	ldx	a,-118		;; 233c: dd 7e 8a    .~.
	push	psw		;; 233f: f5          .
	call	L20b8		;; 2340: cd b8 20    .. 
	cmpx	-115		;; 2343: dd be 8d    ...
	call	L8c0e		;; 2346: cd 0e 8c    ...
	push	psw		;; 2349: f5          .
	lda	L1c0e		;; 234a: 3a 0e 1c    :..
	cpi	04dh		;; 234d: fe 4d       .M
	call	L8c09		;; 234f: cd 09 8c    ...
	mov	b,a		;; 2352: 47          G
	pop	psw		;; 2353: f1          .
	ana	b		;; 2354: a0          .
	stx	a,-116		;; 2355: dd 77 8c    .w.
L2358:	ldx	a,-116		;; 2358: dd 7e 8c    .~.
	xri	001h		;; 235b: ee 01       ..
	rar			;; 235d: 1f          .
	jrnc	L23be		;; 235e: 30 5e       0^
	ldx	a,-117		;; 2360: dd 7e 8b    .~.
	cpi	020h		;; 2363: fe 20       . 
	call	L8c09		;; 2365: cd 09 8c    ...
	push	psw		;; 2368: f5          .
	ldx	a,-113		;; 2369: dd 7e 8f    .~.
	lxi	h,L01a6		;; 236c: 21 a6 01    ...
	cmp	m		;; 236f: be          .
	mvi	a,000h		;; 2370: 3e 00       >.
	cmc			;; 2372: 3f          ?
	ral			;; 2373: 17          .
	mov	b,a		;; 2374: 47          G
	pop	psw		;; 2375: f1          .
	ana	b		;; 2376: a0          .
	rar			;; 2377: 1f          .
	jrnc	L2380		;; 2378: 30 06       0.
	mvix	001h,-116	;; 237a: dd 36 8c 01 .6..
	jr	L23be		;; 237e: 18 3e       .>

L2380:	lda	L02f5		;; 2380: 3a f5 02    :..
	mov	l,a		;; 2383: 6f          o
	mvi	h,000h		;; 2384: 26 00       &.
	lxi	d,L01a4		;; 2386: 11 a4 01    ...
	dad	d		;; 2389: 19          .
	lda	L02ee		;; 238a: 3a ee 02    :..
	cmp	m		;; 238d: be          .
	jrc	L2396		;; 238e: 38 06       8.
	mvix	001h,-116	;; 2390: dd 36 8c 01 .6..
	jr	L23be		;; 2394: 18 28       .(

L2396:	rst	3		;; 2396: df          .
	db	90h
	rst	4		;; 2398: e7          .
	db	80h
	push	h		;; 239a: e5          .
	call	L10d3		;; 239b: cd d3 10    ...
	rar			;; 239e: 1f          .
	jrnc	L23a7		;; 239f: 30 06       0.
	mvix	001h,-116	;; 23a1: dd 36 8c 01 .6..
	jr	L23be		;; 23a5: 18 17       ..

L23a7:	lda	L1d40		;; 23a7: 3a 40 1d    :@.
	rar			;; 23aa: 1f          .
	jrnc	L23be		;; 23ab: 30 11       0.
	rst	3		;; 23ad: df          .
	db	90h
	mov	c,m		;; 23af: 4e          N
	inx	h		;; 23b0: 23          #
	mov	b,m		;; 23b1: 46          F
	lhld	L1d43		;; 23b2: 2a 43 1d    *C.
	rst	4		;; 23b5: e7          .
	db	85h
	mvi	a,000h		;; 23b7: 3e 00       >.
	cmc			;; 23b9: 3f          ?
	ral			;; 23ba: 17          .
	stx	a,-116		;; 23bb: dd 77 8c    .w.
L23be:	ldx	a,-116		;; 23be: dd 7e 8c    .~.
	rar			;; 23c1: 1f          .
	jnc	L221d		;; 23c2: d2 1d 22    .."
	rst	3		;; 23c5: df          .
	db	90h
	push	h		;; 23c7: e5          .
	rst	3		;; 23c8: df          .
	db	90h
	rst	4		;; 23ca: e7          .
	db	80h
	dcx	h		;; 23cc: 2b          +
	rst	4		;; 23cd: e7          .
	db	81h
	ldx	a,-115		;; 23cf: dd 7e 8d    .~.
	rar			;; 23d2: 1f          .
	jrnc	L23db		;; 23d3: 30 06       0.
	mvi	a,027h		;; 23d5: 3e 27       >'
	push	psw		;; 23d7: f5          .
	call	L0597		;; 23d8: cd 97 05    ...
L23db:	ldx	a,-114		;; 23db: dd 7e 8e    .~.
	rar			;; 23de: 1f          .
	jrnc	L2405		;; 23df: 30 24       0$
	lda	L02ee		;; 23e1: 3a ee 02    :..
	stx	a,-124		;; 23e4: dd 77 84    .w.
	lda	L02e3		;; 23e7: 3a e3 02    :..
	push	psw		;; 23ea: f5          .
	ldx	a,-123		;; 23eb: dd 7e 85    .~.
	dcr	a		;; 23ee: 3d          =
	push	psw		;; 23ef: f5          .
	call	L0889		;; 23f0: cd 89 08    ...
	lda	L01ac		;; 23f3: 3a ac 01    :..
	push	psw		;; 23f6: f5          .
	call	L0597		;; 23f7: cd 97 05    ...
	lda	L02e3		;; 23fa: 3a e3 02    :..
	push	psw		;; 23fd: f5          .
	ldx	a,-124		;; 23fe: dd 7e 84    .~.
	push	psw		;; 2401: f5          .
	call	L0889		;; 2402: cd 89 08    ...
L2405:	jmp	L2549		;; 2405: c3 49 25    .I%

L2408:	rst	3		;; 2408: df          .
	db	90h
	rst	4		;; 240a: e7          .
	db	80h
	push	h		;; 240c: e5          .
	call	L7175		;; 240d: cd 75 71    .uq
	lda	L02e3		;; 2410: 3a e3 02    :..
	mov	l,a		;; 2413: 6f          o
	mvi	h,000h		;; 2414: 26 00       &.
	lxi	d,L1d26		;; 2416: 11 26 1d    .&.
	dad	d		;; 2419: 19          .
	push	h		;; 241a: e5          .
	lda	L1c55		;; 241b: 3a 55 1c    :U.
	pop	h		;; 241e: e1          .
	mov	m,a		;; 241f: 77          w
	lda	L02e3		;; 2420: 3a e3 02    :..
	mov	l,a		;; 2423: 6f          o
	mvi	h,000h		;; 2424: 26 00       &.
	dad	h		;; 2426: 29          )
	lxi	d,L1cc2		;; 2427: 11 c2 1c    ...
	dad	d		;; 242a: 19          .
	push	h		;; 242b: e5          .
	lhld	L1c56		;; 242c: 2a 56 1c    *V.
	rst	4		;; 242f: e7          .
	db	81h
	lda	L1c58		;; 2431: 3a 58 1c    :X.
	ora	a		;; 2434: b7          .
	jrnz	L244b		;; 2435: 20 14        .
	mvi	a,00bh		;; 2437: 3e 0b       >.
	push	psw		;; 2439: f5          .
	call	L1762		;; 243a: cd 62 17    .b.
	rst	3		;; 243d: df          .
	db	90h
	rst	4		;; 243f: e7          .
	db	80h
	push	h		;; 2441: e5          .
	call	L1355		;; 2442: cd 55 13    .U.
	push	psw		;; 2445: f5          .
	call	L538e		;; 2446: cd 8e 53    ..S
	jr	L245e		;; 2449: 18 13       ..

L244b:	rst	3		;; 244b: df          .
	db	90h
	push	h		;; 244d: e5          .
	rst	3		;; 244e: df          .
	db	90h
	push	h		;; 2450: e5          .
	lda	L1c58		;; 2451: 3a 58 1c    :X.
	mov	c,a		;; 2454: 4f          O
	mvi	b,000h		;; 2455: 06 00       ..
	pop	h		;; 2457: e1          .
	rst	4		;; 2458: e7          .
	db	80h
	dad	b		;; 245a: 09          .
	dcx	h		;; 245b: 2b          +
	rst	4		;; 245c: e7          .
	db	81h
L245e:	jmp	L2549		;; 245e: c3 49 25    .I%

L2461:	rst	3		;; 2461: df          .
	db	90h
	rst	4		;; 2463: e7          .
	db	80h
	push	h		;; 2465: e5          .
	call	L14b1		;; 2466: cd b1 14    ...
	rst	3		;; 2469: df          .
	db	8
	mvix	020h,-122	;; 246b: dd 36 86 20 .6. 
	ldx	a,-125		;; 246f: dd 7e 83    .~.
	push	psw		;; 2472: f5          .
	call	L75c9		;; 2473: cd c9 75    ..u
	db	0bh,0,0,0,0,0,0,0,0,0,10h,4
	call	L7450		;; 2482: cd 50 74    .Pt
	jrz	L249b		;; 2485: 28 14       (.
	ldx	a,-125		;; 2487: dd 7e 83    .~.
	stx	a,-122		;; 248a: dd 77 86    .w.
	cpi	052h		;; 248d: fe 52       .R
	jrnz	L249b		;; 248f: 20 0a        .
	rst	3		;; 2491: df          .
	db	90h
	mov	c,m		;; 2493: 4e          N
	inx	h		;; 2494: 23          #
	mov	b,m		;; 2495: 46          F
	rst	3		;; 2496: df          .
	db	88h
	dad	b		;; 2498: 09          .
	rst	3		;; 2499: df          .
	db	8
L249b:	lxi	h,L01a8		;; 249b: 21 a8 01    ...
	call	L75ea		;; 249e: cd ea 75    ..u
	mvi	a,037h		;; 24a1: 3e 37       >7
	call	L8bb0		;; 24a3: cd b0 8b    ...
	call	L0803		;; 24a6: cd 03 08    ...
	mvi	a,057h		;; 24a9: 3e 57       >W
	push	psw		;; 24ab: f5          .
	call	L0597		;; 24ac: cd 97 05    ...
	mvi	a,002h		;; 24af: 3e 02       >.
	push	psw		;; 24b1: f5          .
	call	L0d9b		;; 24b2: cd 9b 0d    ...
	lda	L1c0f		;; 24b5: 3a 0f 1c    :..
	cpi	058h		;; 24b8: fe 58       .X
	jrnz	L24d8		;; 24ba: 20 1c        .
	rst	3		;; 24bc: df          .
	db	90h
	rst	4		;; 24be: e7          .
	db	80h
	push	h		;; 24c0: e5          .
	call	L1355		;; 24c1: cd 55 13    .U.
	mov	h,a		;; 24c4: 67          g
	mvi	l,000h		;; 24c5: 2e 00       ..
	push	h		;; 24c7: e5          .
	rst	3		;; 24c8: df          .
	db	90h
	rst	4		;; 24ca: e7          .
	db	80h
	inx	h		;; 24cc: 23          #
	push	h		;; 24cd: e5          .
	call	L1355		;; 24ce: cd 55 13    .U.
	mov	c,a		;; 24d1: 4f          O
	mvi	b,000h		;; 24d2: 06 00       ..
	pop	h		;; 24d4: e1          .
	dad	b		;; 24d5: 09          .
	rst	3		;; 24d6: df          .
	db	8
L24d8:	ldx	a,-122		;; 24d8: dd 7e 86    .~.
	cpi	020h		;; 24db: fe 20       . 
	jrnz	L24e7		;; 24dd: 20 08        .
	rst	3		;; 24df: df          .
	db	88h
	push	h		;; 24e1: e5          .
	call	L2146		;; 24e2: cd 46 21    .F.
	jr	L24f1		;; 24e5: 18 0a       ..

L24e7:	rst	3		;; 24e7: df          .
	db	88h
	push	h		;; 24e9: e5          .
	ldx	a,-122		;; 24ea: dd 7e 86    .~.
	push	psw		;; 24ed: f5          .
	call	L57cd		;; 24ee: cd cd 57    ..W
L24f1:	lda	L02e3		;; 24f1: 3a e3 02    :..
	mov	l,a		;; 24f4: 6f          o
	mvi	h,000h		;; 24f5: 26 00       &.
	lxi	d,L1d26		;; 24f7: 11 26 1d    .&.
	dad	d		;; 24fa: 19          .
	push	h		;; 24fb: e5          .
	ldx	a,-122		;; 24fc: dd 7e 86    .~.
	pop	h		;; 24ff: e1          .
	mov	m,a		;; 2500: 77          w
	lda	L02e3		;; 2501: 3a e3 02    :..
	mov	l,a		;; 2504: 6f          o
	mvi	h,000h		;; 2505: 26 00       &.
	dad	h		;; 2507: 29          )
	lxi	d,L1cc2		;; 2508: 11 c2 1c    ...
	dad	d		;; 250b: 19          .
	push	h		;; 250c: e5          .
	rst	3		;; 250d: df          .
	db	88h
	rst	4		;; 250f: e7          .
	db	81h
	rst	3		;; 2511: df          .
	db	90h
	push	h		;; 2513: e5          .
	rst	3		;; 2514: df          .
	db	90h
	rst	4		;; 2516: e7          .
	db	80h
	inx	h		;; 2518: 23          #
	rst	4		;; 2519: e7          .
	db	81h
	ldx	a,-122		;; 251b: dd 7e 86    .~.
	cpi	052h		;; 251e: fe 52       .R
	jrnz	L2528		;; 2520: 20 06        .
	mvi	a,00ch		;; 2522: 3e 0c       >.
	push	psw		;; 2524: f5          .
	call	L1762		;; 2525: cd 62 17    .b.
L2528:	call	L2163		;; 2528: cd 63 21    .c.
	jr	L2549		;; 252b: 18 1c       ..

L252d:	mvi	b,007h		;; 252d: 06 07       ..
	call	L8ddc		;; 252f: cd dc 8d    ...
	db '0' ! dw L21e2
	db 'B' ! dw L21e2
	db 'C' ! dw L21e2
	db 'I' ! dw L2408
	db 'Q' ! dw L21a8
	db 'T' ! dw L21a8
	db 'U' ! dw L21e2
	dw	L2461
L2549:	call	L5c3d		;; 2549: cd 3d 5c    .=\
	rst	3		;; 254c: df          .
	db	90h
	push	h		;; 254e: e5          .
	rst	3		;; 254f: df          .
	db	90h
	rst	4		;; 2551: e7          .
	db	80h
	inx	h		;; 2553: 23          #
	rst	4		;; 2554: e7          .
	db	81h
	jmp	L8d56		;; 2556: c3 56 8d    .V.

L2559:	call	L8d27		;; 2559: cd 27 8d    .'.
	db	0ffh,7
	lda	L1d45		;; 255e: 3a 45 1d    :E.
	cpi	02fh		;; 2561: fe 2f       ./
	jrnz	L256b		;; 2563: 20 06        .
	mvi	a,004h		;; 2565: 3e 04       >.
	push	psw		;; 2567: f5          .
	call	L0d9b		;; 2568: cd 9b 0d    ...
L256b:	mvi	a,03bh		;; 256b: 3e 3b       >;
	push	psw		;; 256d: f5          .
	call	L0597		;; 256e: cd 97 05    ...
	lda	L0180		;; 2571: 3a 80 01    :..
	stx	a,-126		;; 2574: dd 77 82    .w.
	lxi	h,L0180		;; 2577: 21 80 01    ...
	mvi	m,000h		;; 257a: 36 00       6.
	lxi	h,L1d43		;; 257c: 21 43 1d    .C.
	push	h		;; 257f: e5          .
	call	L5c84		;; 2580: cd 84 5c    ..\
	ldx	a,-126		;; 2583: dd 7e 82    .~.
	sta	L0180		;; 2586: 32 80 01    2..
	jmp	L8d56		;; 2589: c3 56 8d    .V.

L258c:	call	L8d27		;; 258c: cd 27 8d    .'.
	db	0,6
	mvi	a,001h		;; 2591: 3e 01       >.
	push	psw		;; 2593: f5          .
	call	L0d9b		;; 2594: cd 9b 0d    ...
	call	L259d		;; 2597: cd 9d 25    ..%
	db	'EQU'
L259d:	call	L75e5		;; 259d: cd e5 75    ..u
	db	3
	mvi	a,037h		;; 25a1: 3e 37       >7
	call	L8bb0		;; 25a3: cd b0 8b    ...
	call	L0803		;; 25a6: cd 03 08    ...
	mvi	a,002h		;; 25a9: 3e 02       >.
	push	psw		;; 25ab: f5          .
	call	L0d9b		;; 25ac: cd 9b 0d    ...
	jmp	L8d56		;; 25af: c3 56 8d    .V.

L25b2:	call	L8d27		;; 25b2: cd 27 8d    .'.
	db	0,6
	call	L258c		;; 25b7: cd 8c 25    ..%
	call	L25bf		;; 25ba: cd bf 25    ..%
	db	'$-'
L25bf:	call	L75e5		;; 25bf: cd e5 75    ..u
	db	2
	mvi	a,037h		;; 25c3: 3e 37       >7
	call	L8bb0		;; 25c5: cd b0 8b    ...
	call	L0803		;; 25c8: cd 03 08    ...
	jmp	L8d56		;; 25cb: c3 56 8d    .V.

L25ce:	call	L8d27		;; 25ce: cd 27 8d    .'.
	db	0f6h,12h
	lda	L02f5		;; 25d3: 3a f5 02    :..
	xri	001h		;; 25d6: ee 01       ..
	rar			;; 25d8: 1f          .
	jrnc	L25f8		;; 25d9: 30 1d       0.
	mvi	a,004h		;; 25db: 3e 04       >.
	push	psw		;; 25dd: f5          .
	call	L0771		;; 25de: cd 71 07    .q.
	rst	3		;; 25e1: df          .
	db	8ch
	rst	4		;; 25e3: e7          .
	db	80h
	push	h		;; 25e5: e5          .
	call	L5428		;; 25e6: cd 28 54    .(T
	call	L0799		;; 25e9: cd 99 07    ...
	lda	L02ee		;; 25ec: 3a ee 02    :..
	stx	a,-121		;; 25ef: dd 77 87    .w.
	mvi	a,000h		;; 25f2: 3e 00       >.
	push	psw		;; 25f4: f5          .
	call	L0d9b		;; 25f5: cd 9b 0d    ...
L25f8:	lda	L1c5a		;; 25f8: 3a 5a 1c    :Z.
	rar			;; 25fb: 1f          .
	jrnc	L2609		;; 25fc: 30 0b       0.
	lxi	h,L1c5a		;; 25fe: 21 5a 1c    .Z.
	mvi	m,000h		;; 2601: 36 00       6.
	call	L0977		;; 2603: cd 77 09    .w.
	jmp	L29dc		;; 2606: c3 dc 29    ..)

L2609:	lhld	L1d43		;; 2609: 2a 43 1d    *C.
	rst	3		;; 260c: df          .
	db	4
	lda	L1d51		;; 260e: 3a 51 1d    :Q.
	rar			;; 2611: 1f          .
	jrnc	L2639		;; 2612: 30 25       0%
	lda	L1d40		;; 2614: 3a 40 1d    :@.
	rar			;; 2617: 1f          .
	jrnc	L2639		;; 2618: 30 1f       0.
	lda	L1c0f		;; 261a: 3a 0f 1c    :..
	push	psw		;; 261d: f5          .
	call	L75c9		;; 261e: cd c9 75    ..u
	db	0bh,0,0,0,0,0,0,0,0,4,0,' '
	call	L7450		;; 262d: cd 50 74    .Pt
	jrz	L2639		;; 2630: 28 07       (.
	rst	3		;; 2632: df          .
	db	8ch
	push	h		;; 2634: e5          .
	rst	3		;; 2635: df          .
	db	84h
	rst	4		;; 2637: e7          .
	db	81h
L2639:	rst	3		;; 2639: df          .
	db	8ch
	rst	4		;; 263b: e7          .
	db	80h
	push	h		;; 263d: e5          .
	call	L10d3		;; 263e: cd d3 10    ...
	xri	001h		;; 2641: ee 01       ..
	stx	a,-122		;; 2643: dd 77 86    .w.
	rst	3		;; 2646: df          .
	db	8ch
	mov	c,m		;; 2648: 4e          N
	inx	h		;; 2649: 23          #
	mov	b,m		;; 264a: 46          F
	rst	3		;; 264b: df          .
	db	84h
	rst	4		;; 264d: e7          .
	db	85h
	mvi	a,000h		;; 264f: 3e 00       >.
	cmc			;; 2651: 3f          ?
	ral			;; 2652: 17          .
	lxi	h,L1d40		;; 2653: 21 40 1d    .@.
	ana	m		;; 2656: a6          .
	rar			;; 2657: 1f          .
	jnc	L284c		;; 2658: d2 4c 28    .L(
	lda	L02e3		;; 265b: 3a e3 02    :..
	mov	l,a		;; 265e: 6f          o
	mvi	h,000h		;; 265f: 26 00       &.
	dad	h		;; 2661: 29          )
	lxi	d,L1c5e		;; 2662: 11 5e 1c    .^.
	dad	d		;; 2665: 19          .
	push	h		;; 2666: e5          .
	lhld	L1d41		;; 2667: 2a 41 1d    *A.
	rst	4		;; 266a: e7          .
	db	81h
	lda	L1d45		;; 266c: 3a 45 1d    :E.
	ora	a		;; 266f: b7          .
	jnz	L2792		;; 2670: c2 92 27    ..'
	lda	L02e3		;; 2673: 3a e3 02    :..
	mov	l,a		;; 2676: 6f          o
	mvi	h,000h		;; 2677: 26 00       &.
	dad	h		;; 2679: 29          )
	lxi	d,L1c5e		;; 267a: 11 5e 1c    .^.
	dad	d		;; 267d: 19          .
	mvi	m,000h		;; 267e: 36 00       6.
	inx	h		;; 2680: 23          #
	mvi	m,000h		;; 2681: 36 00       6.
	lda	L02e3		;; 2683: 3a e3 02    :..
	mov	l,a		;; 2686: 6f          o
	mvi	h,000h		;; 2687: 26 00       &.
	dad	h		;; 2689: 29          )
	lxi	d,L1c90		;; 268a: 11 90 1c    ...
	dad	d		;; 268d: 19          .
	push	h		;; 268e: e5          .
	lhld	L1d41		;; 268f: 2a 41 1d    *A.
	rst	4		;; 2692: e7          .
	db	81h
	lxi	h,L1d43		;; 2694: 21 43 1d    .C.
	push	h		;; 2697: e5          .
	call	L62c4		;; 2698: cd c4 62    ..b
	lda	L02f5		;; 269b: 3a f5 02    :..
	xri	001h		;; 269e: ee 01       ..
	rar			;; 26a0: 1f          .
	jrnc	L26b8		;; 26a1: 30 15       0.
	call	L0965		;; 26a3: cd 65 09    .e.
	lxi	h,L1d43		;; 26a6: 21 43 1d    .C.
	push	h		;; 26a9: e5          .
	call	L6273		;; 26aa: cd 73 62    .sb
	lda	L02e3		;; 26ad: 3a e3 02    :..
	push	psw		;; 26b0: f5          .
	lda	L018f		;; 26b1: 3a 8f 01    :..
	push	psw		;; 26b4: f5          .
	call	L0889		;; 26b5: cd 89 08    ...
L26b8:	rst	3		;; 26b8: df          .
	db	8ch
	mov	c,m		;; 26ba: 4e          N
	inx	h		;; 26bb: 23          #
	mov	b,m		;; 26bc: 46          F
	rst	3		;; 26bd: df          .
	db	84h
	ora	a		;; 26bf: b7          .
	dsbc	b		;; 26c0: ed 42       .B
	jrz	L26df		;; 26c2: 28 1b       (.
	call	L25b2		;; 26c4: cd b2 25    ..%
	rst	3		;; 26c7: df          .
	db	8ch
	rst	4		;; 26c9: e7          .
	db	80h
	rst	4		;; 26cb: e7          .
	db	87h
	push	h		;; 26cd: e5          .
	push	b		;; 26ce: c5          .
	rst	3		;; 26cf: df          .
	db	84h
	rst	4		;; 26d1: e7          .
	db	87h
	call	L87f6		;; 26d3: cd f6 87    ...
	mov	h,b		;; 26d6: 60          `
	mov	l,c		;; 26d7: 69          i
	push	h		;; 26d8: e5          .
	call	L07d2		;; 26d9: cd d2 07    ...
	jmp	L278f		;; 26dc: c3 8f 27    ..'

L26df:	lda	L1d46		;; 26df: 3a 46 1d    :F.
	call	L2782		;; 26e2: cd 82 27    ..'
L26e5:	mvi	a,001h		;; 26e5: 3e 01       >.
	push	psw		;; 26e7: f5          .
	call	L0d9b		;; 26e8: cd 9b 0d    ...
	lxi	h,L01a8		;; 26eb: 21 a8 01    ...
	call	L75ea		;; 26ee: cd ea 75    ..u
	mvi	a,037h		;; 26f1: 3e 37       >7
	call	L8bb0		;; 26f3: cd b0 8b    ...
	call	L0803		;; 26f6: cd 03 08    ...
	mvi	a,053h		;; 26f9: 3e 53       >S
	push	psw		;; 26fb: f5          .
	call	L0597		;; 26fc: cd 97 05    ...
	mvi	a,002h		;; 26ff: 3e 02       >.
	push	psw		;; 2701: f5          .
	call	L0d9b		;; 2702: cd 9b 0d    ...
	lda	L1d49		;; 2705: 3a 49 1d    :I.
	xri	001h		;; 2708: ee 01       ..
	rar			;; 270a: 1f          .
	jrnc	L271b		;; 270b: 30 0e       0.
	rst	3		;; 270d: df          .
	db	8ch
	push	h		;; 270f: e5          .
	call	L8d60		;; 2710: cd 60 8d    .`.
	dw	L104c
	mov	h,b		;; 2715: 60          `
	mov	l,c		;; 2716: 69          i
	rst	4		;; 2717: e7          .
	db	81h
	jr	L2723		;; 2719: 18 08       ..

L271b:	rst	3		;; 271b: df          .
	db	8ch
	push	h		;; 271d: e5          .
	lhld	L1d4a		;; 271e: 2a 4a 1d    *J.
	rst	4		;; 2721: e7          .
	db	81h
L2723:	rst	3		;; 2723: df          .
	db	8ch
	rst	4		;; 2725: e7          .
	db	80h
	rst	4		;; 2727: e7          .
	db	87h
	push	h		;; 2729: e5          .
	push	b		;; 272a: c5          .
	rst	3		;; 272b: df          .
	db	84h
	rst	4		;; 272d: e7          .
	db	87h
	call	L87f6		;; 272f: cd f6 87    ...
	mov	h,b		;; 2732: 60          `
	mov	l,c		;; 2733: 69          i
	push	h		;; 2734: e5          .
	call	L2146		;; 2735: cd 46 21    .F.
	jr	L278f		;; 2738: 18 55       .U

L273a:	mvi	a,001h		;; 273a: 3e 01       >.
	push	psw		;; 273c: f5          .
	call	L0d9b		;; 273d: cd 9b 0d    ...
	mvi	a,00dh		;; 2740: 3e 0d       >.
	push	psw		;; 2742: f5          .
	call	L1762		;; 2743: cd 62 17    .b.
	mvi	a,002h		;; 2746: 3e 02       >.
	push	psw		;; 2748: f5          .
	call	L0d9b		;; 2749: cd 9b 0d    ...
	lhld	L1d47		;; 274c: 2a 47 1d    *G.
	push	h		;; 274f: e5          .
	call	L53c1		;; 2750: cd c1 53    ..S
	jr	L278f		;; 2753: 18 3a       .:

L2755:	lda	L1d49		;; 2755: 3a 49 1d    :I.
	xri	001h		;; 2758: ee 01       ..
	push	psw		;; 275a: f5          .
	rst	3		;; 275b: df          .
	db	8ch
	mov	c,m		;; 275d: 4e          N
	inx	h		;; 275e: 23          #
	mov	b,m		;; 275f: 46          F
	lhld	L1d4a		;; 2760: 2a 4a 1d    *J.
	ora	a		;; 2763: b7          .
	dsbc	b		;; 2764: ed 42       .B
	call	L8c0e		;; 2766: cd 0e 8c    ...
	mov	b,a		;; 2769: 47          G
	pop	psw		;; 276a: f1          .
	ora	b		;; 276b: b0          .
	push	psw		;; 276c: f5          .
	lda	L1d4c		;; 276d: 3a 4c 1d    :L.
	ora	a		;; 2770: b7          .
	call	L8c0e		;; 2771: cd 0e 8c    ...
	mov	b,a		;; 2774: 47          G
	pop	psw		;; 2775: f1          .
	ora	b		;; 2776: b0          .
	rar			;; 2777: 1f          .
	jrnc	L2780		;; 2778: 30 06       0.
	call	L67a6		;; 277a: cd a6 67    ..g
	jmp	L2609		;; 277d: c3 09 26    ..&

L2780:	jr	L278f		;; 2780: 18 0d       ..

L2782:	mvi	b,002h		;; 2782: 06 02       ..
	call	L8ddc		;; 2784: cd dc 8d    ...
	db 'O' ! dw L273a
	db 'S' ! dw L26e5
	dw	L2755
L278f:	jmp	L2843		;; 278f: c3 43 28    .C(

L2792:	lda	L1d45		;; 2792: 3a 45 1d    :E.
	push	psw		;; 2795: f5          .
	call	L75c9		;; 2796: cd c9 75    ..u
	db	8,0,0,0,0,0,80h,0,8
	call	L7450		;; 27a2: cd 50 74    .Pt
	jrz	L27ad		;; 27a5: 28 06       (.
	call	L2559		;; 27a7: cd 59 25    .Y%
	jmp	L2843		;; 27aa: c3 43 28    .C(

L27ad:	lxi	h,L1d43		;; 27ad: 21 43 1d    .C.
	push	h		;; 27b0: e5          .
	call	L5c84		;; 27b1: cd 84 5c    ..\
	ldx	a,-122		;; 27b4: dd 7e 86    .~.
	rar			;; 27b7: 1f          .
	jrnc	L280c		;; 27b8: 30 52       0R
	lda	L1c0f		;; 27ba: 3a 0f 1c    :..
	cpi	055h		;; 27bd: fe 55       .U
	jrnz	L27de		;; 27bf: 20 1d        .
	lda	L1d45		;; 27c1: 3a 45 1d    :E.
	push	psw		;; 27c4: f5          .
	call	L75c9		;; 27c5: cd c9 75    ..u
	db	0bh,0,0,0,0,0,0,0,0,8,10h,4
	call	L7450		;; 27d4: cd 50 74    .Pt
	jrz	L27de		;; 27d7: 28 05       (.
	lxi	h,L1c0f		;; 27d9: 21 0f 1c    ...
	mvi	m,049h		;; 27dc: 36 49       6I
L27de:	rst	3		;; 27de: df          .
	db	8ch
	mov	c,m		;; 27e0: 4e          N
	inx	h		;; 27e1: 23          #
	mov	b,m		;; 27e2: 46          F
	rst	3		;; 27e3: df          .
	db	84h
	ora	a		;; 27e5: b7          .
	dsbc	b		;; 27e6: ed 42       .B
	jrnz	L27f2		;; 27e8: 20 08        .
	mvi	a,03ah		;; 27ea: 3e 3a       >:
	push	psw		;; 27ec: f5          .
	call	L0597		;; 27ed: cd 97 05    ...
	jr	L280a		;; 27f0: 18 18       ..

L27f2:	call	L25b2		;; 27f2: cd b2 25    ..%
	rst	3		;; 27f5: df          .
	db	8ch
	rst	4		;; 27f7: e7          .
	db	80h
	rst	4		;; 27f9: e7          .
	db	87h
	push	h		;; 27fb: e5          .
	push	b		;; 27fc: c5          .
	rst	3		;; 27fd: df          .
	db	84h
	rst	4		;; 27ff: e7          .
	db	87h
	call	L87f6		;; 2801: cd f6 87    ...
	mov	h,b		;; 2804: 60          `
	mov	l,c		;; 2805: 69          i
	push	h		;; 2806: e5          .
	call	L07d2		;; 2807: cd d2 07    ...
L280a:	jr	L2815		;; 280a: 18 09       ..

L280c:	call	L258c		;; 280c: cd 8c 25    ..%
	rst	3		;; 280f: df          .
	db	84h
	push	h		;; 2811: e5          .
	call	L2146		;; 2812: cd 46 21    .F.
L2815:	lda	L1d48		;; 2815: 3a 48 1d    :H.
	ora	a		;; 2818: b7          .
	jrz	L2840		;; 2819: 28 25       (%
	mvi	a,003h		;; 281b: 3e 03       >.
	push	psw		;; 281d: f5          .
	call	L0d9b		;; 281e: cd 9b 0d    ...
	call	L2827		;; 2821: cd 27 28    .'(
	db	'; ('
L2827:	call	L75e5		;; 2827: cd e5 75    ..u
	db	3
	mvi	a,037h		;; 282b: 3e 37       >7
	call	L8bb0		;; 282d: cd b0 8b    ...
	call	L0803		;; 2830: cd 03 08    ...
	lda	L1d48		;; 2833: 3a 48 1d    :H.
	push	psw		;; 2836: f5          .
	call	L0597		;; 2837: cd 97 05    ...
	mvi	a,029h		;; 283a: 3e 29       >)
	push	psw		;; 283c: f5          .
	call	L0597		;; 283d: cd 97 05    ...
L2840:	call	L5c3d		;; 2840: cd 3d 5c    .=\
L2843:	call	L67a6		;; 2843: cd a6 67    ..g
	call	L0977		;; 2846: cd 77 09    .w.
	jmp	L2965		;; 2849: c3 65 29    .e)

L284c:	ldx	a,-122		;; 284c: dd 7e 86    .~.
	rar			;; 284f: 1f          .
	jnc	L2962		;; 2850: d2 62 29    .b)
	rst	3		;; 2853: df          .
	db	8ch
	rst	4		;; 2855: e7          .
	db	80h
	rst	3		;; 2857: df          .
	db	0ah
	lxi	h,L1c59		;; 2859: 21 59 1c    .Y.
	mvi	m,000h		;; 285c: 36 00       6.
	lhld	L1d41		;; 285e: 2a 41 1d    *A.
	rst	3		;; 2861: df          .
	db	2
	lda	L1d50		;; 2863: 3a 50 1d    :P.
	ora	a		;; 2866: b7          .
	jrz	L2879		;; 2867: 28 10       (.
	lxi	h,L1d5c		;; 2869: 21 5c 1d    .\.
	mvi	m,001h		;; 286c: 36 01       6.
	lda	L1d50		;; 286e: 3a 50 1d    :P.
	sta	L1c0f		;; 2871: 32 0f 1c    2..
	lxi	h,L1d50		;; 2874: 21 50 1d    .P.
	mvi	m,000h		;; 2877: 36 00       6.
L2879:	rst	3		;; 2879: df          .
	db	8ch
	push	h		;; 287b: e5          .
	call	L217b		;; 287c: cd 7b 21    .{.
	rst	3		;; 287f: df          .
	db	82h
	push	h		;; 2881: e5          .
	call	L6760		;; 2882: cd 60 67    .`g
	rst	3		;; 2885: df          .
	db	8ch
	rst	4		;; 2887: e7          .
	db	80h
	rst	3		;; 2889: df          .
	db	8
	rst	4		;; 288b: e7          .
	db	87h
	push	h		;; 288d: e5          .
	push	b		;; 288e: c5          .
	rst	3		;; 288f: df          .
	db	8ah
	rst	4		;; 2891: e7          .
	db	87h
	call	L87f6		;; 2893: cd f6 87    ...
	push	h		;; 2896: e5          .
	push	b		;; 2897: c5          .
	lxi	b,00004h	;; 2898: 01 04 00    ...
	lxi	h,00000h	;; 289b: 21 00 00    ...
	call	L8890		;; 289e: cd 90 88    ...
	jp	L28ac		;; 28a1: f2 ac 28    ..(
	lxi	b,00004h	;; 28a4: 01 04 00    ...
	rst	3		;; 28a7: df          .
	db	8ah
	dad	b		;; 28a9: 09          .
	rst	3		;; 28aa: df          .
	db	8
L28ac:	rst	3		;; 28ac: df          .
	db	8ch
	ldx	c,-124		;; 28ae: dd 4e 84    .N.
	ldx	b,-123		;; 28b1: dd 46 85    .F.
	rst	4		;; 28b4: e7          .
	db	80h
	ora	a		;; 28b6: b7          .
	dsbc	b		;; 28b7: ed 42       .B
	jrc	L28eb		;; 28b9: 38 30       80
	lda	L1d45		;; 28bb: 3a 45 1d    :E.
	cpi	02fh		;; 28be: fe 2f       ./
	call	L8c09		;; 28c0: cd 09 8c    ...
	push	psw		;; 28c3: f5          .
	lda	L02f5		;; 28c4: 3a f5 02    :..
	mov	l,a		;; 28c7: 6f          o
	mvi	h,000h		;; 28c8: 26 00       &.
	lxi	b,00005h	;; 28ca: 01 05 00    ...
	call	L88e9		;; 28cd: cd e9 88    ...
	lxi	d,L018f		;; 28d0: 11 8f 01    ...
	dad	d		;; 28d3: 19          .
	lda	L02ee		;; 28d4: 3a ee 02    :..
	lxi	d,00004h	;; 28d7: 11 04 00    ...
	dad	d		;; 28da: 19          .
	cmp	m		;; 28db: be          .
	mvi	a,000h		;; 28dc: 3e 00       >.
	ral			;; 28de: 17          .
	mov	b,a		;; 28df: 47          G
	pop	psw		;; 28e0: f1          .
	ana	b		;; 28e1: a0          .
	rar			;; 28e2: 1f          .
	jrnc	L28eb		;; 28e3: 30 06       0.
	call	L2559		;; 28e5: cd 59 25    .Y%
	call	L67a6		;; 28e8: cd a6 67    ..g
L28eb:	call	L0977		;; 28eb: cd 77 09    .w.
	lda	L02f5		;; 28ee: 3a f5 02    :..
	xri	001h		;; 28f1: ee 01       ..
	rar			;; 28f3: 1f          .
	jrnc	L2960		;; 28f4: 30 6a       0j
	lda	L02e3		;; 28f6: 3a e3 02    :..
	push	psw		;; 28f9: f5          .
	ldx	a,-121		;; 28fa: dd 7e 87    .~.
	push	psw		;; 28fd: f5          .
	call	L0889		;; 28fe: cd 89 08    ...
L2901:	ldx	c,-120		;; 2901: dd 4e 88    .N.
	ldx	b,-119		;; 2904: dd 46 89    .F.
	rst	3		;; 2907: df          .
	db	8ah
	ora	a		;; 2909: b7          .
	dsbc	b		;; 290a: ed 42       .B
	mvi	a,000h		;; 290c: 3e 00       >.
	ral			;; 290e: 17          .
	push	psw		;; 290f: f5          .
	rst	3		;; 2910: df          .
	db	8ah
	push	h		;; 2912: e5          .
	call	L10d3		;; 2913: cd d3 10    ...
	xri	001h		;; 2916: ee 01       ..
	mov	b,a		;; 2918: 47          G
	pop	psw		;; 2919: f1          .
	ana	b		;; 291a: a0          .
	rar			;; 291b: 1f          .
	jrnc	L2932		;; 291c: 30 14       0.
	call	L0799		;; 291e: cd 99 07    ...
	rst	3		;; 2921: df          .
	db	8ah
	push	h		;; 2923: e5          .
	call	L1355		;; 2924: cd 55 13    .U.
	push	psw		;; 2927: f5          .
	call	L5412		;; 2928: cd 12 54    ..T
	rst	3		;; 292b: df          .
	db	8ah
	inx	h		;; 292d: 23          #
	rst	3		;; 292e: df          .
	db	0ah
	jr	L2901		;; 2930: 18 cf       ..

L2932:	rst	3		;; 2932: df          .
	db	8ch
	mov	c,m		;; 2934: 4e          N
	inx	h		;; 2935: 23          #
	mov	b,m		;; 2936: 46          F
	rst	3		;; 2937: df          .
	db	8ah
	ora	a		;; 2939: b7          .
	dsbc	b		;; 293a: ed 42       .B
	jrz	L2947		;; 293c: 28 09       (.
	mvi	a,002h		;; 293e: 3e 02       >.
	push	psw		;; 2940: f5          .
	mvi	a,02eh		;; 2941: 3e 2e       >.
	push	psw		;; 2943: f5          .
	call	L0720		;; 2944: cd 20 07    . .
L2947:	lda	L1c59		;; 2947: 3a 59 1c    :Y.
	ora	a		;; 294a: b7          .
	jrz	L2960		;; 294b: 28 13       (.
	lda	L02e3		;; 294d: 3a e3 02    :..
	push	psw		;; 2950: f5          .
	lda	L018f		;; 2951: 3a 8f 01    :..
	dcr	a		;; 2954: 3d          =
	push	psw		;; 2955: f5          .
	call	L0889		;; 2956: cd 89 08    ...
	lda	L1c59		;; 2959: 3a 59 1c    :Y.
	push	psw		;; 295c: f5          .
	call	L0597		;; 295d: cd 97 05    ...
L2960:	jr	L2965		;; 2960: 18 03       ..

L2962:	call	L0977		;; 2962: cd 77 09    .w.
L2965:	ldx	a,-122		;; 2965: dd 7e 86    .~.
	xri	001h		;; 2968: ee 01       ..
	rar			;; 296a: 1f          .
	jrnc	L29dc		;; 296b: 30 6f       0o
	lhld	L1d43		;; 296d: 2a 43 1d    *C.
	rst	3		;; 2970: df          .
	db	4
	lda	L1d40		;; 2972: 3a 40 1d    :@.
	xri	001h		;; 2975: ee 01       ..
	rar			;; 2977: 1f          .
	jrnc	L299c		;; 2978: 30 22       0"
	lxi	h,0ffffh	;; 297a: 21 ff ff    ...
	rst	3		;; 297d: df          .
	db	4
	rst	3		;; 297f: df          .
	db	8ch
	push	h		;; 2981: e5          .
	call	L8d60		;; 2982: cd 60 8d    .`.
	dw	L104c
	xthl			;; 2987: e3          .
	push	b		;; 2988: c5          .
	rst	4		;; 2989: e7          .
	db	80h
	rst	4		;; 298b: e7          .
	db	87h
	call	L8890		;; 298d: cd 90 88    ...
	jm	L299c		;; 2990: fa 9c 29    ..)
	rst	3		;; 2993: df          .
	db	8ch
	mvi	m,0ffh		;; 2995: 36 ff       6.
	inx	h		;; 2997: 23          #
	mvi	m,0ffh		;; 2998: 36 ff       6.
	jr	L29dc		;; 299a: 18 40       .@

L299c:	rst	3		;; 299c: df          .
	db	8ch
	ldx	c,-124		;; 299e: dd 4e 84    .N.
	ldx	b,-123		;; 29a1: dd 46 85    .F.
	rst	4		;; 29a4: e7          .
	db	80h
	ora	a		;; 29a6: b7          .
	dsbc	b		;; 29a7: ed 42       .B
	jrc	L29ad		;; 29a9: 38 02       8.
	jr	L29dc		;; 29ab: 18 2f       ./

L29ad:	rst	3		;; 29ad: df          .
	db	8ch
	rst	4		;; 29af: e7          .
	db	80h
	push	h		;; 29b1: e5          .
	call	L10d3		;; 29b2: cd d3 10    ...
	xri	001h		;; 29b5: ee 01       ..
	rar			;; 29b7: 1f          .
	jrnc	L29bc		;; 29b8: 30 02       0.
	jr	L29dc		;; 29ba: 18 20       . 

L29bc:	rst	3		;; 29bc: df          .
	db	8ch
	push	h		;; 29be: e5          .
	call	L115e		;; 29bf: cd 5e 11    .^.
	rst	4		;; 29c2: e7          .
	db	81h
	rst	3		;; 29c4: df          .
	db	8ch
	ldx	c,-124		;; 29c6: dd 4e 84    .N.
	ldx	b,-123		;; 29c9: dd 46 85    .F.
	rst	4		;; 29cc: e7          .
	db	80h
	ora	a		;; 29ce: b7          .
	dsbc	b		;; 29cf: ed 42       .B
	jrc	L29da		;; 29d1: 38 07       8.
	rst	3		;; 29d3: df          .
	db	8ch
	push	h		;; 29d5: e5          .
	rst	3		;; 29d6: df          .
	db	84h
	rst	4		;; 29d8: e7          .
	db	81h
L29da:	jr	L299c		;; 29da: 18 c0       ..

L29dc:	jmp	L8d56		;; 29dc: c3 56 8d    .V.

L29df:	call	L8d27		;; 29df: cd 27 8d    .'.
	db	0f8h,10h
	ldx	a,-117		;; 29e4: dd 7e 8b    .~.
	push	psw		;; 29e7: f5          .
	call	L0953		;; 29e8: cd 53 09    .S.
	lda	L02ea		;; 29eb: 3a ea 02    :..
	stx	a,-122		;; 29ee: dd 77 86    .w.
	lda	L02e9		;; 29f1: 3a e9 02    :..
	stx	a,-123		;; 29f4: dd 77 85    .w.
	lhld	L1789		;; 29f7: 2a 89 17    *..
	rst	3		;; 29fa: df          .
	db	7
	ldx	a,-117		;; 29fc: dd 7e 8b    .~.
	lxi	h,L02ea		;; 29ff: 21 ea 02    ...
	cmp	m		;; 2a02: be          .
	jrz	L2a13		;; 2a03: 28 0e       (.
	ldx	l,-117		;; 2a05: dd 6e 8b    .n.
	mvi	h,000h		;; 2a08: 26 00       &.
	dad	h		;; 2a0a: 29          )
	lxi	d,L1cf4		;; 2a0b: 11 f4 1c    ...
	dad	d		;; 2a0e: 19          .
	rst	4		;; 2a0f: e7          .
	db	80h
	rst	3		;; 2a11: df          .
	db	7
L2a13:	ldx	a,-117		;; 2a13: dd 7e 8b    .~.
	lxi	h,L02e8		;; 2a16: 21 e8 02    ...
	cmp	m		;; 2a19: be          .
	jrc	L2a2a		;; 2a1a: 38 0e       8.
	lda	L02e8		;; 2a1c: 3a e8 02    :..
	stx	a,-122		;; 2a1f: dd 77 86    .w.
	lda	L02e7		;; 2a22: 3a e7 02    :..
	stx	a,-123		;; 2a25: dd 77 85    .w.
	jr	L2a30		;; 2a28: 18 06       ..

L2a2a:	ldx	a,-117		;; 2a2a: dd 7e 8b    .~.
	sta	L1d56		;; 2a2d: 32 56 1d    2V.
L2a30:	rst	3		;; 2a30: df          .
	db	87h
	push	h		;; 2a32: e5          .
	call	L6343		;; 2a33: cd 43 63    .Cc
	lda	L1d55		;; 2a36: 3a 55 1d    :U.
	rar			;; 2a39: 1f          .
	jrnc	L2a4a		;; 2a3a: 30 0e       0.
	lda	L1d54		;; 2a3c: 3a 54 1d    :T.
	push	psw		;; 2a3f: f5          .
	call	L5412		;; 2a40: cd 12 54    ..T
	lhld	L1d52		;; 2a43: 2a 52 1d    *R.
	push	h		;; 2a46: e5          .
	call	L5428		;; 2a47: cd 28 54    .(T
L2a4a:	lda	L1d54		;; 2a4a: 3a 54 1d    :T.
	ora	a		;; 2a4d: b7          .
	call	L8c0e		;; 2a4e: cd 0e 8c    ...
	push	psw		;; 2a51: f5          .
	ldx	a,-117		;; 2a52: dd 7e 8b    .~.
	lxi	h,L02e6		;; 2a55: 21 e6 02    ...
	cmp	m		;; 2a58: be          .
	call	L8c09		;; 2a59: cd 09 8c    ...
	mov	b,a		;; 2a5c: 47          G
	pop	psw		;; 2a5d: f1          .
	ana	b		;; 2a5e: a0          .
	rar			;; 2a5f: 1f          .
	jrnc	L2a90		;; 2a60: 30 2e       0.
	rst	3		;; 2a62: df          .
	db	87h
	rst	4		;; 2a64: e7          .
	db	87h
	push	h		;; 2a66: e5          .
	push	b		;; 2a67: c5          .
	lhld	L1d52		;; 2a68: 2a 52 1d    *R.
	rst	4		;; 2a6b: e7          .
	db	87h
	call	L87f6		;; 2a6d: cd f6 87    ...
	push	h		;; 2a70: e5          .
	push	b		;; 2a71: c5          .
	lda	L1d54		;; 2a72: 3a 54 1d    :T.
	rst	4		;; 2a75: e7          .
	db	86h
	call	L855b		;; 2a77: cd 5b 85    .[.
	mov	a,c		;; 2a7a: 79          y
	stx	a,-125		;; 2a7b: dd 77 83    .w.
	rst	3		;; 2a7e: df          .
	db	87h
	rst	4		;; 2a80: e7          .
	db	87h
	push	h		;; 2a82: e5          .
	push	b		;; 2a83: c5          .
	ldx	a,-125		;; 2a84: dd 7e 83    .~.
	rst	4		;; 2a87: e7          .
	db	86h
	call	L87f6		;; 2a89: cd f6 87    ...
	mov	h,b		;; 2a8c: 60          `
	mov	l,c		;; 2a8d: 69          i
	rst	3		;; 2a8e: df          .
	db	7
L2a90:	ldx	a,-117		;; 2a90: dd 7e 8b    .~.
	cmpx	-122		;; 2a93: dd be 86    ...
	call	L8c09		;; 2a96: cd 09 8c    ...
	push	psw		;; 2a99: f5          .
	ldx	l,-117		;; 2a9a: dd 6e 8b    .n.
	mvi	h,000h		;; 2a9d: 26 00       &.
	dad	h		;; 2a9f: 29          )
	lxi	d,L1cf4		;; 2aa0: 11 f4 1c    ...
	dad	d		;; 2aa3: 19          .
	push	h		;; 2aa4: e5          .
	ldx	a,-117		;; 2aa5: dd 7e 8b    .~.
	dcr	a		;; 2aa8: 3d          =
	mov	l,a		;; 2aa9: 6f          o
	mvi	h,000h		;; 2aaa: 26 00       &.
	dad	h		;; 2aac: 29          )
	lxi	d,L1cf4		;; 2aad: 11 f4 1c    ...
	dad	d		;; 2ab0: 19          .
	mov	c,m		;; 2ab1: 4e          N
	inx	h		;; 2ab2: 23          #
	mov	b,m		;; 2ab3: 46          F
	pop	h		;; 2ab4: e1          .
	rst	4		;; 2ab5: e7          .
	db	80h
	ora	a		;; 2ab7: b7          .
	dsbc	b		;; 2ab8: ed 42       .B
	call	L8c0e		;; 2aba: cd 0e 8c    ...
	mov	b,a		;; 2abd: 47          G
	pop	psw		;; 2abe: f1          .
	ora	b		;; 2abf: b0          .
	rar			;; 2ac0: 1f          .
	jrnc	L2acf		;; 2ac1: 30 0c       0.
	rst	3		;; 2ac3: df          .
	db	87h
	push	h		;; 2ac5: e5          .
	call	L5e78		;; 2ac6: cd 78 5e    .x^
	push	h		;; 2ac9: e5          .
	call	L6760		;; 2aca: cd 60 67    .`g
	jr	L2b33		;; 2acd: 18 64       .d

L2acf:	lxi	h,L1d40		;; 2acf: 21 40 1d    .@.
	mvi	m,000h		;; 2ad2: 36 00       6.
	ldx	a,-117		;; 2ad4: dd 7e 8b    .~.
	stx	a,-124		;; 2ad7: dd 77 84    .w.
L2ada:	ldx	a,-123		;; 2ada: dd 7e 85    .~.
	cmpx	-124		;; 2add: dd be 84    ...
	mvi	a,000h		;; 2ae0: 3e 00       >.
	cmc			;; 2ae2: 3f          ?
	ral			;; 2ae3: 17          .
	push	psw		;; 2ae4: f5          .
	lda	L1d40		;; 2ae5: 3a 40 1d    :@.
	xri	001h		;; 2ae8: ee 01       ..
	mov	b,a		;; 2aea: 47          G
	pop	psw		;; 2aeb: f1          .
	ana	b		;; 2aec: a0          .
	rar			;; 2aed: 1f          .
	jrnc	L2b21		;; 2aee: 30 31       01
	ldx	l,-124		;; 2af0: dd 6e 84    .n.
	mvi	h,000h		;; 2af3: 26 00       &.
	dad	h		;; 2af5: 29          )
	lxi	d,L1c90		;; 2af6: 11 90 1c    ...
	dad	d		;; 2af9: 19          .
	rst	4		;; 2afa: e7          .
	db	80h
	push	h		;; 2afc: e5          .
	call	L6760		;; 2afd: cd 60 67    .`g
	lda	L1d40		;; 2b00: 3a 40 1d    :@.
	xri	001h		;; 2b03: ee 01       ..
	rar			;; 2b05: 1f          .
	jrnc	L2b18		;; 2b06: 30 10       0.
	ldx	l,-124		;; 2b08: dd 6e 84    .n.
	mvi	h,000h		;; 2b0b: 26 00       &.
	dad	h		;; 2b0d: 29          )
	lxi	d,L1c5e		;; 2b0e: 11 5e 1c    .^.
	dad	d		;; 2b11: 19          .
	rst	4		;; 2b12: e7          .
	db	80h
	push	h		;; 2b14: e5          .
	call	L6760		;; 2b15: cd 60 67    .`g
L2b18:	ldx	a,-124		;; 2b18: dd 7e 84    .~.
	inr	a		;; 2b1b: 3c          <
	stx	a,-124		;; 2b1c: dd 77 84    .w.
	jr	L2ada		;; 2b1f: 18 b9       ..

L2b21:	lda	L1d40		;; 2b21: 3a 40 1d    :@.
	xri	001h		;; 2b24: ee 01       ..
	rar			;; 2b26: 1f          .
	jrnc	L2b33		;; 2b27: 30 0a       0.
	rst	3		;; 2b29: df          .
	db	87h
	push	h		;; 2b2b: e5          .
	call	L5ebd		;; 2b2c: cd bd 5e    ..^
	push	h		;; 2b2f: e5          .
	call	L6760		;; 2b30: cd 60 67    .`g
L2b33:	ldx	a,-123		;; 2b33: dd 7e 85    .~.
	mov	b,a		;; 2b36: 47          G
	ldx	a,-117		;; 2b37: dd 7e 8b    .~.
	call	L894e		;; 2b3a: cd 4e 89    .N.
	stx	b,-126		;; 2b3d: dd 70 82    .p.
	jrc	L2bae		;; 2b40: 38 6c       8l
L2b42:	stx	a,-119		;; 2b42: dd 77 89    .w.
	mov	l,a		;; 2b45: 6f          o
	mvi	h,000h		;; 2b46: 26 00       &.
	dad	h		;; 2b48: 29          )
	lxi	d,L1cf4		;; 2b49: 11 f4 1c    ...
	dad	d		;; 2b4c: 19          .
	push	h		;; 2b4d: e5          .
	ldx	l,-121		;; 2b4e: dd 6e 87    .n.
	ldx	h,-120		;; 2b51: dd 66 88    .f.
	rst	4		;; 2b54: e7          .
	db	81h
	ldx	l,-119		;; 2b56: dd 6e 89    .n.
	mvi	h,000h		;; 2b59: 26 00       &.
	dad	h		;; 2b5b: 29          )
	lxi	d,L1cc2		;; 2b5c: 11 c2 1c    ...
	dad	d		;; 2b5f: 19          .
	push	h		;; 2b60: e5          .
	ldx	l,-121		;; 2b61: dd 6e 87    .n.
	ldx	h,-120		;; 2b64: dd 66 88    .f.
	rst	4		;; 2b67: e7          .
	db	81h
	ldx	l,-119		;; 2b69: dd 6e 89    .n.
	mvi	h,000h		;; 2b6c: 26 00       &.
	dad	h		;; 2b6e: 29          )
	lxi	d,L1c90		;; 2b6f: 11 90 1c    ...
	dad	d		;; 2b72: 19          .
	mvi	m,000h		;; 2b73: 36 00       6.
	inx	h		;; 2b75: 23          #
	mvi	m,000h		;; 2b76: 36 00       6.
	ldx	l,-119		;; 2b78: dd 6e 89    .n.
	mvi	h,000h		;; 2b7b: 26 00       &.
	dad	h		;; 2b7d: 29          )
	lxi	d,L1c5e		;; 2b7e: 11 5e 1c    .^.
	dad	d		;; 2b81: 19          .
	mvi	m,000h		;; 2b82: 36 00       6.
	inx	h		;; 2b84: 23          #
	mvi	m,000h		;; 2b85: 36 00       6.
	ldx	l,-119		;; 2b87: dd 6e 89    .n.
	mvi	h,000h		;; 2b8a: 26 00       &.
	lxi	d,L1d26		;; 2b8c: 11 26 1d    .&.
	dad	d		;; 2b8f: 19          .
	mvi	m,020h		;; 2b90: 36 20       6 
	lxi	h,0ff87h	;; 2b92: 21 87 ff    ...
	rst	2		;; 2b95: d7          .
	push	h		;; 2b96: e5          .
	call	L25ce		;; 2b97: cd ce 25    ..%
	lda	L02e3		;; 2b9a: 3a e3 02    :..
	cmpx	-123		;; 2b9d: dd be 85    ...
	jrnc	L2ba5		;; 2ba0: 30 03       0.
	call	L0c91		;; 2ba2: cd 91 0c    ...
L2ba5:	ldx	a,-119		;; 2ba5: dd 7e 89    .~.
	inr	a		;; 2ba8: 3c          <
	dcrx	-126		;; 2ba9: dd 35 82    .5.
	jrnz	L2b42		;; 2bac: 20 94        .
L2bae:	lda	L02e5		;; 2bae: 3a e5 02    :..
	mov	l,a		;; 2bb1: 6f          o
	mvi	h,000h		;; 2bb2: 26 00       &.
	dad	h		;; 2bb4: 29          )
	lxi	d,L1cf4		;; 2bb5: 11 f4 1c    ...
	dad	d		;; 2bb8: 19          .
	rst	4		;; 2bb9: e7          .
	db	80h
	shld	L1787		;; 2bbb: 22 87 17    "..
	call	L1b50		;; 2bbe: cd 50 1b    .P.
	lxi	h,L1d50		;; 2bc1: 21 50 1d    .P.
	mvi	m,000h		;; 2bc4: 36 00       6.
	call	L1e32		;; 2bc6: cd 32 1e    .2.
	jmp	L8d56		;; 2bc9: c3 56 8d    .V.

L2bcc:	call	L8d27		;; 2bcc: cd 27 8d    .'.
	db	0ffh,9
	lda	L02ea		;; 2bd1: 3a ea 02    :..
	stx	a,-126		;; 2bd4: dd 77 82    .w.
	ldx	a,-124		;; 2bd7: dd 7e 84    .~.
	lxi	h,L02e8		;; 2bda: 21 e8 02    ...
	cmp	m		;; 2bdd: be          .
	jrc	L2be6		;; 2bde: 38 06       8.
	lda	L02e8		;; 2be0: 3a e8 02    :..
	stx	a,-126		;; 2be3: dd 77 82    .w.
L2be6:	ldx	a,-126		;; 2be6: dd 7e 82    .~.
	cmpx	-124		;; 2be9: dd be 84    ...
	mvi	a,000h		;; 2bec: 3e 00       >.
	ral			;; 2bee: 17          .
	push	psw		;; 2bef: f5          .
	ldx	a,-124		;; 2bf0: dd 7e 84    .~.
	dcr	a		;; 2bf3: 3d          =
	mov	l,a		;; 2bf4: 6f          o
	mvi	h,000h		;; 2bf5: 26 00       &.
	dad	h		;; 2bf7: 29          )
	lxi	d,L1cf4		;; 2bf8: 11 f4 1c    ...
	dad	d		;; 2bfb: 19          .
	push	h		;; 2bfc: e5          .
	ldx	l,-124		;; 2bfd: dd 6e 84    .n.
	mvi	h,000h		;; 2c00: 26 00       &.
	dad	h		;; 2c02: 29          )
	lxi	d,L1cf4		;; 2c03: 11 f4 1c    ...
	dad	d		;; 2c06: 19          .
	mov	c,m		;; 2c07: 4e          N
	inx	h		;; 2c08: 23          #
	mov	b,m		;; 2c09: 46          F
	pop	h		;; 2c0a: e1          .
	rst	4		;; 2c0b: e7          .
	db	80h
	ora	a		;; 2c0d: b7          .
	dsbc	b		;; 2c0e: ed 42       .B
	call	L8c09		;; 2c10: cd 09 8c    ...
	mov	b,a		;; 2c13: 47          G
	pop	psw		;; 2c14: f1          .
	ana	b		;; 2c15: a0          .
	rar			;; 2c16: 1f          .
	jrnc	L2c22		;; 2c17: 30 09       0.
	ldx	a,-124		;; 2c19: dd 7e 84    .~.
	dcr	a		;; 2c1c: 3d          =
	stx	a,-124		;; 2c1d: dd 77 84    .w.
	jr	L2be6		;; 2c20: 18 c4       ..

L2c22:	lda	L1c5b		;; 2c22: 3a 5b 1c    :[.
	cmpx	-126		;; 2c25: dd be 82    ...
	jrc	L2c34		;; 2c28: 38 0a       8.
	ldx	a,-126		;; 2c2a: dd 7e 82    .~.
	stx	a,-124		;; 2c2d: dd 77 84    .w.
	dcr	a		;; 2c30: 3d          =
	sta	L1c5b		;; 2c31: 32 5b 1c    2[.
L2c34:	ldx	a,-124		;; 2c34: dd 7e 84    .~.
	push	psw		;; 2c37: f5          .
	call	L29df		;; 2c38: cd df 29    ..)
	jmp	L8d56		;; 2c3b: c3 56 8d    .V.

L2c3e:	call	L8d27		;; 2c3e: cd 27 8d    .'.
	db	0,6
	lda	L02ea		;; 2c43: 3a ea 02    :..
	push	psw		;; 2c46: f5          .
	call	L29df		;; 2c47: cd df 29    ..)
	lxi	h,L1d3f		;; 2c4a: 21 3f 1d    .?.
	mvi	m,000h		;; 2c4d: 36 00       6.
	jmp	L8d56		;; 2c4f: c3 56 8d    .V.

L2c52:	call	L8d27		;; 2c52: cd 27 8d    .'.
	db	0f4h,12h
	lda	L02e9		;; 2c57: 3a e9 02    :..
	lxi	h,L02e4		;; 2c5a: 21 e4 02    ...
	cmp	m		;; 2c5d: be          .
	jnc	L2ec6		;; 2c5e: d2 c6 2e    ...
	lxi	b,0fffeh	;; 2c61: 01 fe ff    ...
	lda	L02e8		;; 2c64: 3a e8 02    :..
	mov	l,a		;; 2c67: 6f          o
	mvi	h,000h		;; 2c68: 26 00       &.
	dad	b		;; 2c6a: 09          .
	push	h		;; 2c6b: e5          .
	lda	L02e9		;; 2c6c: 3a e9 02    :..
	mov	c,a		;; 2c6f: 4f          O
	mvi	b,000h		;; 2c70: 06 00       ..
	pop	h		;; 2c72: e1          .
	ora	a		;; 2c73: b7          .
	dsbc	b		;; 2c74: ed 42       .B
	cpe	L8c01		;; 2c76: ec 01 8c    ...
	call	L8c18		;; 2c79: cd 18 8c    ...
	push	psw		;; 2c7c: f5          .
	lda	L02e8		;; 2c7d: 3a e8 02    :..
	dcr	a		;; 2c80: 3d          =
	mov	b,a		;; 2c81: 47          G
	lda	L1d57		;; 2c82: 3a 57 1d    :W.
	cmp	b		;; 2c85: b8          .
	call	L8c0e		;; 2c86: cd 0e 8c    ...
	mov	b,a		;; 2c89: 47          G
	pop	psw		;; 2c8a: f1          .
	ana	b		;; 2c8b: a0          .
	rar			;; 2c8c: 1f          .
	jrnc	L2cf4		;; 2c8d: 30 65       0e
	lda	L02e8		;; 2c8f: 3a e8 02    :..
	dcr	a		;; 2c92: 3d          =
	sta	L1d57		;; 2c93: 32 57 1d    2W.
	push	psw		;; 2c96: f5          .
	call	L0953		;; 2c97: cd 53 09    .S.
	mvi	a,004h		;; 2c9a: 3e 04       >.
	push	psw		;; 2c9c: f5          .
	call	L0771		;; 2c9d: cd 71 07    .q.
	mvi	a,000h		;; 2ca0: 3e 00       >.
	mvix	002h,-125	;; 2ca2: dd 36 83 02 .6..
L2ca6:	stx	a,-119		;; 2ca6: dd 77 89    .w.
	call	L0799		;; 2ca9: cd 99 07    ...
	mvi	a,000h		;; 2cac: 3e 00       >.
	mvix	010h,-126	;; 2cae: dd 36 82 10 .6..
L2cb2:	stx	a,-120		;; 2cb2: dd 77 88    .w.
	ani	007h		;; 2cb5: e6 07       ..
	ora	a		;; 2cb7: b7          .
	call	L8c09		;; 2cb8: cd 09 8c    ...
	push	psw		;; 2cbb: f5          .
	ldx	a,-119		;; 2cbc: dd 7e 89    .~.
	ora	a		;; 2cbf: b7          .
	call	L8c09		;; 2cc0: cd 09 8c    ...
	mov	b,a		;; 2cc3: 47          G
	pop	psw		;; 2cc4: f1          .
	ana	b		;; 2cc5: a0          .
	rar			;; 2cc6: 1f          .
	jrnc	L2ccc		;; 2cc7: 30 03       0.
	call	L0799		;; 2cc9: cd 99 07    ...
L2ccc:	ldx	a,-120		;; 2ccc: dd 7e 88    .~.
	push	psw		;; 2ccf: f5          .
	call	L5400		;; 2cd0: cd 00 54    ..T
	ldx	a,-119		;; 2cd3: dd 7e 89    .~.
	ora	a		;; 2cd6: b7          .
	jrnz	L2cdf		;; 2cd7: 20 06        .
	call	L0799		;; 2cd9: cd 99 07    ...
	call	L0799		;; 2cdc: cd 99 07    ...
L2cdf:	ldx	a,-120		;; 2cdf: dd 7e 88    .~.
	inr	a		;; 2ce2: 3c          <
	dcrx	-126		;; 2ce3: dd 35 82    .5.
	jrnz	L2cb2		;; 2ce6: 20 ca        .
	ldx	a,-119		;; 2ce8: dd 7e 89    .~.
	inr	a		;; 2ceb: 3c          <
	dcrx	-125		;; 2cec: dd 35 83    .5.
	jrnz	L2ca6		;; 2cef: 20 b5        .
	call	L0977		;; 2cf1: cd 77 09    .w.
L2cf4:	lhld	L1789		;; 2cf4: 2a 89 17    *..
	stx	l,-116		;; 2cf7: dd 75 8c    .u.
	stx	h,-115		;; 2cfa: dd 74 8d    .t.
	lbcd	L104c		;; 2cfd: ed 4b 4c 10 .KL.
	lhld	L104e		;; 2d01: 2a 4e 10    *N.
	push	h		;; 2d04: e5          .
	push	b		;; 2d05: c5          .
	lda	L02e8		;; 2d06: 3a e8 02    :..
	mov	c,a		;; 2d09: 4f          O
	mvi	b,000h		;; 2d0a: 06 00       ..
	lda	L02e7		;; 2d0c: 3a e7 02    :..
	mov	l,a		;; 2d0f: 6f          o
	mvi	h,000h		;; 2d10: 26 00       &.
	ora	a		;; 2d12: b7          .
	dsbc	b		;; 2d13: ed 42       .B
	inx	h		;; 2d15: 23          #
	push	h		;; 2d16: e5          .
	lxi	h,00010h	;; 2d17: 21 10 00    ...
	call	L8791		;; 2d1a: cd 91 87    ...
	call	L87f6		;; 2d1d: cd f6 87    ...
	call	L8852		;; 2d20: cd 52 88    .R.
	mov	h,b		;; 2d23: 60          `
	mov	l,c		;; 2d24: 69          i
	stx	l,-124		;; 2d25: dd 75 84    .u.
	stx	h,-123		;; 2d28: dd 74 85    .t.
	ldx	c,-116		;; 2d2b: dd 4e 8c    .N.
	ldx	b,-115		;; 2d2e: dd 46 8d    .F.
	ldx	l,-124		;; 2d31: dd 6e 84    .n.
	ldx	h,-123		;; 2d34: dd 66 85    .f.
	ora	a		;; 2d37: b7          .
	dsbc	b		;; 2d38: ed 42       .B
	jrnc	L2d48		;; 2d3a: 30 0c       0.
	ldx	l,-124		;; 2d3c: dd 6e 84    .n.
	ldx	h,-123		;; 2d3f: dd 66 85    .f.
	stx	l,-116		;; 2d42: dd 75 8c    .u.
	stx	h,-115		;; 2d45: dd 74 8d    .t.
L2d48:	ldx	l,-116		;; 2d48: dd 6e 8c    .n.
	ldx	h,-115		;; 2d4b: dd 66 8d    .f.
	mov	a,l		;; 2d4e: 7d          }
	ani	00fh		;; 2d4f: e6 0f       ..
	mov	c,a		;; 2d51: 4f          O
	ral			;; 2d52: 17          .
	sbb	a		;; 2d53: 9f          .
	mov	b,a		;; 2d54: 47          G
	ldx	l,-116		;; 2d55: dd 6e 8c    .n.
	ldx	h,-115		;; 2d58: dd 66 8d    .f.
	ora	a		;; 2d5b: b7          .
	dsbc	b		;; 2d5c: ed 42       .B
	stx	l,-116		;; 2d5e: dd 75 8c    .u.
	stx	h,-115		;; 2d61: dd 74 8d    .t.
	lda	L02e8		;; 2d64: 3a e8 02    :..
	dcr	a		;; 2d67: 3d          =
	push	psw		;; 2d68: f5          .
	call	L0953		;; 2d69: cd 53 09    .S.
L2d6c:	lda	L02e3		;; 2d6c: 3a e3 02    :..
	lxi	h,L02e7		;; 2d6f: 21 e7 02    ...
	cmp	m		;; 2d72: be          .
	jnc	L2ec6		;; 2d73: d2 c6 2e    ...
	call	L0c91		;; 2d76: cd 91 0c    ...
	ldx	l,-116		;; 2d79: dd 6e 8c    .n.
	ldx	h,-115		;; 2d7c: dd 66 8d    .f.
	push	h		;; 2d7f: e5          .
	call	L5428		;; 2d80: cd 28 54    .(T
	call	L0799		;; 2d83: cd 99 07    ...
	ldx	l,-116		;; 2d86: dd 6e 8c    .n.
	ldx	h,-115		;; 2d89: dd 66 8d    .f.
	stx	l,-118		;; 2d8c: dd 75 8a    .u.
	stx	h,-117		;; 2d8f: dd 74 8b    .t.
	lda	L02e3		;; 2d92: 3a e3 02    :..
	mov	l,a		;; 2d95: 6f          o
	mvi	h,000h		;; 2d96: 26 00       &.
	dad	h		;; 2d98: 29          )
	lxi	d,L1cf4		;; 2d99: 11 f4 1c    ...
	dad	d		;; 2d9c: 19          .
	push	h		;; 2d9d: e5          .
	ldx	l,-116		;; 2d9e: dd 6e 8c    .n.
	ldx	h,-115		;; 2da1: dd 66 8d    .f.
	rst	4		;; 2da4: e7          .
	db	81h
	lda	L02e3		;; 2da6: 3a e3 02    :..
	mov	l,a		;; 2da9: 6f          o
	mvi	h,000h		;; 2daa: 26 00       &.
	dad	h		;; 2dac: 29          )
	lxi	d,L1cc2		;; 2dad: 11 c2 1c    ...
	dad	d		;; 2db0: 19          .
	push	h		;; 2db1: e5          .
	ldx	l,-116		;; 2db2: dd 6e 8c    .n.
	ldx	h,-115		;; 2db5: dd 66 8d    .f.
	rst	4		;; 2db8: e7          .
	db	81h
	lda	L02e3		;; 2dba: 3a e3 02    :..
	mov	l,a		;; 2dbd: 6f          o
	mvi	h,000h		;; 2dbe: 26 00       &.
	dad	h		;; 2dc0: 29          )
	lxi	d,L1c90		;; 2dc1: 11 90 1c    ...
	dad	d		;; 2dc4: 19          .
	mvi	m,000h		;; 2dc5: 36 00       6.
	inx	h		;; 2dc7: 23          #
	mvi	m,000h		;; 2dc8: 36 00       6.
	lda	L02e3		;; 2dca: 3a e3 02    :..
	mov	l,a		;; 2dcd: 6f          o
	mvi	h,000h		;; 2dce: 26 00       &.
	dad	h		;; 2dd0: 29          )
	lxi	d,L1c5e		;; 2dd1: 11 5e 1c    .^.
	dad	d		;; 2dd4: 19          .
	mvi	m,000h		;; 2dd5: 36 00       6.
	inx	h		;; 2dd7: 23          #
	mvi	m,000h		;; 2dd8: 36 00       6.
	lda	L02e3		;; 2dda: 3a e3 02    :..
	mov	l,a		;; 2ddd: 6f          o
	mvi	h,000h		;; 2dde: 26 00       &.
	lxi	d,L1d26		;; 2de0: 11 26 1d    .&.
	dad	d		;; 2de3: 19          .
	mvi	m,020h		;; 2de4: 36 20       6 
	mvi	a,000h		;; 2de6: 3e 00       >.
	mvix	010h,-125	;; 2de8: dd 36 83 10 .6..
L2dec:	stx	a,-120		;; 2dec: dd 77 88    .w.
	cpi	008h		;; 2def: fe 08       ..
	jrnz	L2df6		;; 2df1: 20 03        .
	call	L0799		;; 2df3: cd 99 07    ...
L2df6:	call	L0799		;; 2df6: cd 99 07    ...
	ldx	l,-116		;; 2df9: dd 6e 8c    .n.
	ldx	h,-115		;; 2dfc: dd 66 8d    .f.
	push	h		;; 2dff: e5          .
	call	L10d3		;; 2e00: cd d3 10    ...
	rar			;; 2e03: 1f          .
	jrnc	L2e0e		;; 2e04: 30 08       0.
	call	L0799		;; 2e06: cd 99 07    ...
	call	L0799		;; 2e09: cd 99 07    ...
	jr	L2e1c		;; 2e0c: 18 0e       ..

L2e0e:	ldx	l,-116		;; 2e0e: dd 6e 8c    .n.
	ldx	h,-115		;; 2e11: dd 66 8d    .f.
	push	h		;; 2e14: e5          .
	call	L1355		;; 2e15: cd 55 13    .U.
	push	psw		;; 2e18: f5          .
	call	L5412		;; 2e19: cd 12 54    ..T
L2e1c:	ldx	l,-116		;; 2e1c: dd 6e 8c    .n.
	ldx	h,-115		;; 2e1f: dd 66 8d    .f.
	inx	h		;; 2e22: 23          #
	stx	l,-116		;; 2e23: dd 75 8c    .u.
	stx	h,-115		;; 2e26: dd 74 8d    .t.
	ldx	a,-120		;; 2e29: dd 7e 88    .~.
	inr	a		;; 2e2c: 3c          <
	dcrx	-125		;; 2e2d: dd 35 83    .5.
	jrnz	L2dec		;; 2e30: 20 ba        .
	call	L0799		;; 2e32: cd 99 07    ...
	call	L0799		;; 2e35: cd 99 07    ...
	ldx	l,-118		;; 2e38: dd 6e 8a    .n.
	ldx	h,-117		;; 2e3b: dd 66 8b    .f.
	stx	l,-116		;; 2e3e: dd 75 8c    .u.
	stx	h,-115		;; 2e41: dd 74 8d    .t.
	mvi	a,000h		;; 2e44: 3e 00       >.
	mvix	010h,-125	;; 2e46: dd 36 83 10 .6..
L2e4a:	stx	a,-120		;; 2e4a: dd 77 88    .w.
	ldx	l,-116		;; 2e4d: dd 6e 8c    .n.
	ldx	h,-115		;; 2e50: dd 66 8d    .f.
	push	h		;; 2e53: e5          .
	call	L10d3		;; 2e54: cd d3 10    ...
	rar			;; 2e57: 1f          .
	jrnc	L2e60		;; 2e58: 30 06       0.
	mvix	020h,-121	;; 2e5a: dd 36 87 20 .6. 
	jr	L2e6d		;; 2e5e: 18 0d       ..

L2e60:	ldx	l,-116		;; 2e60: dd 6e 8c    .n.
	ldx	h,-115		;; 2e63: dd 66 8d    .f.
	push	h		;; 2e66: e5          .
	call	L1355		;; 2e67: cd 55 13    .U.
	stx	a,-121		;; 2e6a: dd 77 87    .w.
L2e6d:	ldx	a,-121		;; 2e6d: dd 7e 87    .~.
	push	psw		;; 2e70: f5          .
	lda	L0183		;; 2e71: 3a 83 01    :..
	push	psw		;; 2e74: f5          .
	call	L72f2		;; 2e75: cd f2 72    ..r
	stx	a,-122		;; 2e78: dd 77 86    .w.
	cpi	020h		;; 2e7b: fe 20       . 
	mvi	a,000h		;; 2e7d: 3e 00       >.
	cmc			;; 2e7f: 3f          ?
	ral			;; 2e80: 17          .
	push	psw		;; 2e81: f5          .
	ldx	a,-122		;; 2e82: dd 7e 86    .~.
	lxi	h,L0185		;; 2e85: 21 85 01    ...
	cmp	m		;; 2e88: be          .
	mvi	a,000h		;; 2e89: 3e 00       >.
	ral			;; 2e8b: 17          .
	mov	b,a		;; 2e8c: 47          G
	pop	psw		;; 2e8d: f1          .
	ana	b		;; 2e8e: a0          .
	rar			;; 2e8f: 1f          .
	jrnc	L2ea3		;; 2e90: 30 11       0.
	ldx	a,-121		;; 2e92: dd 7e 87    .~.
	push	psw		;; 2e95: f5          .
	lda	L0184		;; 2e96: 3a 84 01    :..
	push	psw		;; 2e99: f5          .
	call	L72f2		;; 2e9a: cd f2 72    ..r
	push	psw		;; 2e9d: f5          .
	call	L0597		;; 2e9e: cd 97 05    ...
	jr	L2eaa		;; 2ea1: 18 07       ..

L2ea3:	lda	L0186		;; 2ea3: 3a 86 01    :..
	push	psw		;; 2ea6: f5          .
	call	L0597		;; 2ea7: cd 97 05    ...
L2eaa:	ldx	l,-116		;; 2eaa: dd 6e 8c    .n.
	ldx	h,-115		;; 2ead: dd 66 8d    .f.
	inx	h		;; 2eb0: 23          #
	stx	l,-116		;; 2eb1: dd 75 8c    .u.
	stx	h,-115		;; 2eb4: dd 74 8d    .t.
	ldx	a,-120		;; 2eb7: dd 7e 88    .~.
	inr	a		;; 2eba: 3c          <
	dcrx	-125		;; 2ebb: dd 35 83    .5.
	jrnz	L2e4a		;; 2ebe: 20 8a        .
	call	L0977		;; 2ec0: cd 77 09    .w.
	jmp	L2d6c		;; 2ec3: c3 6c 2d    .l-

L2ec6:	lda	L02e5		;; 2ec6: 3a e5 02    :..
	mov	l,a		;; 2ec9: 6f          o
	mvi	h,000h		;; 2eca: 26 00       &.
	dad	h		;; 2ecc: 29          )
	lxi	d,L1cf4		;; 2ecd: 11 f4 1c    ...
	dad	d		;; 2ed0: 19          .
	rst	4		;; 2ed1: e7          .
	db	80h
	shld	L1787		;; 2ed3: 22 87 17    "..
	lhld	L1d58		;; 2ed6: 2a 58 1d    *X.
	shld	L1d5a		;; 2ed9: 22 5a 1d    "Z.
	jmp	L8d56		;; 2edc: c3 56 8d    .V.

L2edf:	call	L8d27		;; 2edf: cd 27 8d    .'.
	db	0f9h,11h
	lhld	L1d58		;; 2ee4: 2a 58 1d    *X.
	stx	l,-121		;; 2ee7: dd 75 87    .u.
	stx	h,-120		;; 2eea: dd 74 88    .t.
	mvix	000h,-126	;; 2eed: dd 36 82 00 .6..
L2ef1:	lbcd	L1d5a		;; 2ef1: ed 4b 5a 1d .KZ.
	ldx	l,-121		;; 2ef5: dd 6e 87    .n.
	ldx	h,-120		;; 2ef8: dd 66 88    .f.
	ora	a		;; 2efb: b7          .
	dsbc	b		;; 2efc: ed 42       .B
	jnc	L301c		;; 2efe: d2 1c 30    ..0
	lda	L02e8		;; 2f01: 3a e8 02    :..
	stx	a,-122		;; 2f04: dd 77 86    .w.
L2f07:	lda	L02e7		;; 2f07: 3a e7 02    :..
	cmpx	-122		;; 2f0a: dd be 86    ...
	jrc	L2f32		;; 2f0d: 38 23       8#
	ldx	l,-122		;; 2f0f: dd 6e 86    .n.
	mvi	h,000h		;; 2f12: 26 00       &.
	dad	h		;; 2f14: 29          )
	lxi	d,L1cf4		;; 2f15: 11 f4 1c    ...
	dad	d		;; 2f18: 19          .
	mov	c,m		;; 2f19: 4e          N
	inx	h		;; 2f1a: 23          #
	mov	b,m		;; 2f1b: 46          F
	ldx	l,-121		;; 2f1c: dd 6e 87    .n.
	ldx	h,-120		;; 2f1f: dd 66 88    .f.
	ora	a		;; 2f22: b7          .
	dsbc	b		;; 2f23: ed 42       .B
	jrnc	L2f29		;; 2f25: 30 02       0.
	jr	L2f32		;; 2f27: 18 09       ..

L2f29:	ldx	a,-122		;; 2f29: dd 7e 86    .~.
	inr	a		;; 2f2c: 3c          <
	stx	a,-122		;; 2f2d: dd 77 86    .w.
	jr	L2f07		;; 2f30: 18 d5       ..

L2f32:	ldx	a,-122		;; 2f32: dd 7e 86    .~.
	dcr	a		;; 2f35: 3d          =
	stx	a,-122		;; 2f36: dd 77 86    .w.
	ldx	l,-122		;; 2f39: dd 6e 86    .n.
	mvi	h,000h		;; 2f3c: 26 00       &.
	dad	h		;; 2f3e: 29          )
	lxi	d,L1cf4		;; 2f3f: 11 f4 1c    ...
	dad	d		;; 2f42: 19          .
	push	h		;; 2f43: e5          .
	ldx	l,-121		;; 2f44: dd 6e 87    .n.
	ldx	h,-120		;; 2f47: dd 66 88    .f.
	rst	4		;; 2f4a: e7          .
	db	87h
	pop	d		;; 2f4c: d1          .
	push	h		;; 2f4d: e5          .
	push	b		;; 2f4e: c5          .
	xchg			;; 2f4f: eb          .
	rst	4		;; 2f50: e7          .
	db	80h
	rst	4		;; 2f52: e7          .
	db	87h
	call	L87f6		;; 2f54: cd f6 87    ...
	mov	h,b		;; 2f57: 60          `
	mov	l,c		;; 2f58: 69          i
	stx	l,-124		;; 2f59: dd 75 84    .u.
	stx	h,-123		;; 2f5c: dd 74 85    .t.
	lxi	b,00010h	;; 2f5f: 01 10 00    ...
	ora	a		;; 2f62: b7          .
	dsbc	b		;; 2f63: ed 42       .B
	jrc	L2f6a		;; 2f65: 38 03       8.
	jmp	L301c		;; 2f67: c3 1c 30    ..0

L2f6a:	ldx	a,-118		;; 2f6a: dd 7e 8a    .~.
	rar			;; 2f6d: 1f          .
	jrnc	L2fa3		;; 2f6e: 30 33       03
	ldx	l,-124		;; 2f70: dd 6e 84    .n.
	ldx	h,-123		;; 2f73: dd 66 85    .f.
	push	h		;; 2f76: e5          .
	lxi	h,00003h	;; 2f77: 21 03 00    ...
	call	L87b7		;; 2f7a: cd b7 87    ...
	push	h		;; 2f7d: e5          .
	push	b		;; 2f7e: c5          .
	lxi	b,00006h	;; 2f7f: 01 06 00    ...
	lxi	h,00000h	;; 2f82: 21 00 00    ...
	call	L87e7		;; 2f85: cd e7 87    ...
	mov	a,c		;; 2f88: 79          y
	stx	a,-125		;; 2f89: dd 77 83    .w.
	lxi	b,00008h	;; 2f8c: 01 08 00    ...
	ldx	l,-124		;; 2f8f: dd 6e 84    .n.
	ldx	h,-123		;; 2f92: dd 66 85    .f.
	ora	a		;; 2f95: b7          .
	dsbc	b		;; 2f96: ed 42       .B
	jrc	L2fa1		;; 2f98: 38 07       8.
	ldx	a,-125		;; 2f9a: dd 7e 83    .~.
	inr	a		;; 2f9d: 3c          <
	stx	a,-125		;; 2f9e: dd 77 83    .w.
L2fa1:	jr	L2fb1		;; 2fa1: 18 0e       ..

L2fa3:	lxi	b,00038h	;; 2fa3: 01 38 00    .8.
	ldx	l,-124		;; 2fa6: dd 6e 84    .n.
	ldx	h,-123		;; 2fa9: dd 66 85    .f.
	dad	b		;; 2fac: 09          .
	mov	a,l		;; 2fad: 7d          }
	stx	a,-125		;; 2fae: dd 77 83    .w.
L2fb1:	lda	L02e3		;; 2fb1: 3a e3 02    :..
	cmpx	-122		;; 2fb4: dd be 86    ...
	call	L8c09		;; 2fb7: cd 09 8c    ...
	anax	-126		;; 2fba: dd a6 82    ...
	rar			;; 2fbd: 1f          .
	jrnc	L2fd5		;; 2fbe: 30 15       0.
L2fc0:	lda	L02ee		;; 2fc0: 3a ee 02    :..
	cmpx	-125		;; 2fc3: dd be 83    ...
	jrnc	L2fd3		;; 2fc6: 30 0b       0.
	ldx	a,-116		;; 2fc8: dd 7e 8c    .~.
	adi	020h		;; 2fcb: c6 20       . 
	push	psw		;; 2fcd: f5          .
	call	L0597		;; 2fce: cd 97 05    ...
	jr	L2fc0		;; 2fd1: 18 ed       ..

L2fd3:	jr	L2fe4		;; 2fd3: 18 0f       ..

L2fd5:	ldx	a,-122		;; 2fd5: dd 7e 86    .~.
	push	psw		;; 2fd8: f5          .
	ldx	a,-125		;; 2fd9: dd 7e 83    .~.
	push	psw		;; 2fdc: f5          .
	call	L0889		;; 2fdd: cd 89 08    ...
	mvix	001h,-126	;; 2fe0: dd 36 82 01 .6..
L2fe4:	call	L050f		;; 2fe4: cd 0f 05    ...
	push	psw		;; 2fe7: f5          .
	mvi	a,07fh		;; 2fe8: 3e 7f       >.
	push	psw		;; 2fea: f5          .
	call	L72f2		;; 2feb: cd f2 72    ..r
	addx	-116		;; 2fee: dd 86 8c    ...
	push	psw		;; 2ff1: f5          .
	call	L0597		;; 2ff2: cd 97 05    ...
	ldx	a,-118		;; 2ff5: dd 7e 8a    .~.
	rar			;; 2ff8: 1f          .
	jrnc	L300c		;; 2ff9: 30 11       0.
	call	L050f		;; 2ffb: cd 0f 05    ...
	push	psw		;; 2ffe: f5          .
	mvi	a,07fh		;; 2fff: 3e 7f       >.
	push	psw		;; 3001: f5          .
	call	L72f2		;; 3002: cd f2 72    ..r
	addx	-116		;; 3005: dd 86 8c    ...
	push	psw		;; 3008: f5          .
	call	L0597		;; 3009: cd 97 05    ...
L300c:	ldx	l,-121		;; 300c: dd 6e 87    .n.
	ldx	h,-120		;; 300f: dd 66 88    .f.
	inx	h		;; 3012: 23          #
	stx	l,-121		;; 3013: dd 75 87    .u.
	stx	h,-120		;; 3016: dd 74 88    .t.
	jmp	L2ef1		;; 3019: c3 f1 2e    ...

L301c:	jmp	L8d56		;; 301c: c3 56 8d    .V.

L301f:	call	L8d27		;; 301f: cd 27 8d    .'.
	db	0,8
	ldx	a,-125		;; 3024: dd 7e 83    .~.
	push	psw		;; 3027: f5          .
	mvi	a,001h		;; 3028: 3e 01       >.
	push	psw		;; 302a: f5          .
	call	L2edf		;; 302b: cd df 2e    ...
	lda	L0188		;; 302e: 3a 88 01    :..
	rar			;; 3031: 1f          .
	jrnc	L303e		;; 3032: 30 0a       0.
	ldx	a,-125		;; 3034: dd 7e 83    .~.
	push	psw		;; 3037: f5          .
	mvi	a,000h		;; 3038: 3e 00       >.
	push	psw		;; 303a: f5          .
	call	L2edf		;; 303b: cd df 2e    ...
L303e:	jmp	L8d56		;; 303e: c3 56 8d    .V.

L3041:	call	L8d27		;; 3041: cd 27 8d    .'.
	db	0feh,8
	lda	L02e8		;; 3046: 3a e8 02    :..
	dcr	a		;; 3049: 3d          =
	mov	b,a		;; 304a: 47          G
	lda	L02e7		;; 304b: 3a e7 02    :..
	cmp	b		;; 304e: b8          .
	mvi	a,000h		;; 304f: 3e 00       >.
	cmc			;; 3051: 3f          ?
	ral			;; 3052: 17          .
	push	psw		;; 3053: f5          .
	lda	L1d57		;; 3054: 3a 57 1d    :W.
	ora	a		;; 3057: b7          .
	call	L8c0e		;; 3058: cd 0e 8c    ...
	mov	b,a		;; 305b: 47          G
	pop	psw		;; 305c: f1          .
	ana	b		;; 305d: a0          .
	lxi	h,L0187		;; 305e: 21 87 01    ...
	ana	m		;; 3061: a6          .
	rar			;; 3062: 1f          .
	jrnc	L30c8		;; 3063: 30 63       0c
	lda	L02e3		;; 3065: 3a e3 02    :..
	stx	a,-125		;; 3068: dd 77 83    .w.
	lda	L02ee		;; 306b: 3a ee 02    :..
	stx	a,-126		;; 306e: dd 77 82    .w.
	mvi	a,000h		;; 3071: 3e 00       >.
	push	psw		;; 3073: f5          .
	call	L301f		;; 3074: cd 1f 30    ..0
	ldx	l,-125		;; 3077: dd 6e 83    .n.
	mvi	h,000h		;; 307a: 26 00       &.
	dad	h		;; 307c: 29          )
	lxi	d,L1cf4		;; 307d: 11 f4 1c    ...
	dad	d		;; 3080: 19          .
	rst	4		;; 3081: e7          .
	db	80h
	shld	L1d58		;; 3083: 22 58 1d    "X.
	inx	h		;; 3086: 23          #
	shld	L1d5a		;; 3087: 22 5a 1d    "Z.
	ldx	a,-125		;; 308a: dd 7e 83    .~.
	lxi	h,L02e9		;; 308d: 21 e9 02    ...
	cmp	m		;; 3090: be          .
	jrnc	L30a4		;; 3091: 30 11       0.
	ldx	a,-125		;; 3093: dd 7e 83    .~.
	inr	a		;; 3096: 3c          <
	mov	l,a		;; 3097: 6f          o
	mvi	h,000h		;; 3098: 26 00       &.
	dad	h		;; 309a: 29          )
	lxi	d,L1cf4		;; 309b: 11 f4 1c    ...
	dad	d		;; 309e: 19          .
	rst	4		;; 309f: e7          .
	db	80h
	shld	L1d5a		;; 30a1: 22 5a 1d    "Z.
L30a4:	lbcd	L1d58		;; 30a4: ed 4b 58 1d .KX.
	lhld	L1d5a		;; 30a8: 2a 5a 1d    *Z.
	ora	a		;; 30ab: b7          .
	dsbc	b		;; 30ac: ed 42       .B
	jrnz	L30b7		;; 30ae: 20 07        .
	lhld	L1d58		;; 30b0: 2a 58 1d    *X.
	inx	h		;; 30b3: 23          #
	shld	L1d5a		;; 30b4: 22 5a 1d    "Z.
L30b7:	mvi	a,080h		;; 30b7: 3e 80       >.
	push	psw		;; 30b9: f5          .
	call	L301f		;; 30ba: cd 1f 30    ..0
	ldx	a,-125		;; 30bd: dd 7e 83    .~.
	push	psw		;; 30c0: f5          .
	ldx	a,-126		;; 30c1: dd 7e 82    .~.
	push	psw		;; 30c4: f5          .
	call	L0889		;; 30c5: cd 89 08    ...
L30c8:	jmp	L8d56		;; 30c8: c3 56 8d    .V.

L30cb:	call	L8d27		;; 30cb: cd 27 8d    .'.
	db	0fbh,0bh
	lda	L02e8		;; 30d0: 3a e8 02    :..
	mov	l,a		;; 30d3: 6f          o
	mvi	h,000h		;; 30d4: 26 00       &.
	dad	h		;; 30d6: 29          )
	lxi	d,L1cf4		;; 30d7: 11 f4 1c    ...
	dad	d		;; 30da: 19          .
	rst	4		;; 30db: e7          .
	db	80h
	stx	l,-126		;; 30dd: dd 75 82    .u.
	stx	h,-125		;; 30e0: dd 74 83    .t.
	ldx	c,-126		;; 30e3: dd 4e 82    .N.
	ldx	b,-125		;; 30e6: dd 46 83    .F.
	lhld	L1789		;; 30e9: 2a 89 17    *..
	ora	a		;; 30ec: b7          .
	dsbc	b		;; 30ed: ed 42       .B
	mvi	a,000h		;; 30ef: 3e 00       >.
	ral			;; 30f1: 17          .
	push	psw		;; 30f2: f5          .
	lda	L02e1		;; 30f3: 3a e1 02    :..
	cpi	002h		;; 30f6: fe 02       ..
	call	L8c09		;; 30f8: cd 09 8c    ...
	mov	b,a		;; 30fb: 47          G
	pop	psw		;; 30fc: f1          .
	ora	b		;; 30fd: b0          .
	stx	a,-122		;; 30fe: dd 77 86    .w.
	lda	L02e7		;; 3101: 3a e7 02    :..
	mov	l,a		;; 3104: 6f          o
	mvi	h,000h		;; 3105: 26 00       &.
	dad	h		;; 3107: 29          )
	lxi	d,L1cf4		;; 3108: 11 f4 1c    ...
	dad	d		;; 310b: 19          .
	lxi	b,00010h	;; 310c: 01 10 00    ...
	rst	4		;; 310f: e7          .
	db	80h
	dad	b		;; 3111: 09          .
	mov	b,h		;; 3112: 44          D
	mov	c,l		;; 3113: 4d          M
	lhld	L1787		;; 3114: 2a 87 17    *..
	ora	a		;; 3117: b7          .
	dsbc	b		;; 3118: ed 42       .B
	mvi	a,000h		;; 311a: 3e 00       >.
	cmc			;; 311c: 3f          ?
	ral			;; 311d: 17          .
	stx	a,-123		;; 311e: dd 77 85    .w.
	lxi	b,00010h	;; 3121: 01 10 00    ...
	ldx	l,-126		;; 3124: dd 6e 82    .n.
	ldx	h,-125		;; 3127: dd 66 83    .f.
	dad	b		;; 312a: 09          .
	mov	b,h		;; 312b: 44          D
	mov	c,l		;; 312c: 4d          M
	lhld	L1789		;; 312d: 2a 89 17    *..
	ora	a		;; 3130: b7          .
	dsbc	b		;; 3131: ed 42       .B
	mvi	a,000h		;; 3133: 3e 00       >.
	cmc			;; 3135: 3f          ?
	ral			;; 3136: 17          .
	stx	a,-124		;; 3137: dd 77 84    .w.
	ldx	a,-123		;; 313a: dd 7e 85    .~.
	anax	-124		;; 313d: dd a6 84    ...
	orax	-122		;; 3140: dd b6 86    ...
	rar			;; 3143: 1f          .
	jrnc	L3149		;; 3144: 30 03       0.
	call	L2c52		;; 3146: cd 52 2c    .R,
L3149:	jmp	L8d56		;; 3149: c3 56 8d    .V.

L314c:	call	L8d27		;; 314c: cd 27 8d    .'.
	db	0,6
	lda	L02e8		;; 3151: 3a e8 02    :..
	mov	l,a		;; 3154: 6f          o
	mvi	h,000h		;; 3155: 26 00       &.
	dad	h		;; 3157: 29          )
	lxi	d,L1cf4		;; 3158: 11 f4 1c    ...
	dad	d		;; 315b: 19          .
	mvi	m,0ffh		;; 315c: 36 ff       6.
	inx	h		;; 315e: 23          #
	mvi	m,0ffh		;; 315f: 36 ff       6.
	lxi	h,L1d57		;; 3161: 21 57 1d    .W.
	mvi	m,000h		;; 3164: 36 00       6.
	jmp	L8d56		;; 3166: c3 56 8d    .V.

L3169:	db	0,0
L316b:	db	0,0
L316d:	db	0,0
L316f:	db	0
L3170:	db	0
L3171:	db	0
L3172:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0
L319a:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0
L31ae:	db	0
L31af:	db	0,0
L31b1:	db	0
L31b2:	db	0,0,0,0,0,0,0,0,0,0
L31bc:	db	0
L31bd:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0
L31f5:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0
L321e:	db	0
L321f:	db	0
L3220:	db	0
L3221:	db	0
L3222:	db	0
L3223:	db	0
L3224:	db	0
L3225:	db	0,0,0,0,0
L322a:	db	0
L322b:	db	0,0
L322d:	db	0
L322e:	call	L8d27		;; 322e: cd 27 8d    .'.
	db	0f5h,11h
	lxi	h,00000h	;; 3233: 21 00 00    ...
	rst	3		;; 3236: df          .
	db	9
	lxi	h,00000h	;; 3238: 21 00 00    ...
	push	h		;; 323b: e5          .
	call	L10d3		;; 323c: cd d3 10    ...
	rar			;; 323f: 1f          .
	jrnc	L3247		;; 3240: 30 05       0.
	call	L115e		;; 3242: cd 5e 11    .^.
	rst	3		;; 3245: df          .
	db	9
L3247:	lxi	h,0ff83h	;; 3247: 21 83 ff    ...
	rst	2		;; 324a: d7          .
	push	h		;; 324b: e5          .
	lxi	h,L1d43		;; 324c: 21 43 1d    .C.
	pop	d		;; 324f: d1          .
	lxi	b,00006h	;; 3250: 01 06 00    ...
	ldir			;; 3253: ed b0       ..
	lda	L1d40		;; 3255: 3a 40 1d    :@.
	stx	a,-126		;; 3258: dd 77 82    .w.
	lxi	h,00000h	;; 325b: 21 00 00    ...
	push	h		;; 325e: e5          .
	call	L5e78		;; 325f: cd 78 5e    .x^
	push	h		;; 3262: e5          .
	call	L6760		;; 3263: cd 60 67    .`g
	rst	3		;; 3266: df          .
	db	89h
	rst	3		;; 3268: df          .
	db	0bh
	lbcd	L1d43		;; 326a: ed 4b 43 1d .KC.
	rst	3		;; 326e: df          .
	db	89h
	ora	a		;; 3270: b7          .
	dsbc	b		;; 3271: ed 42       .B
	mvi	a,000h		;; 3273: 3e 00       >.
	cmc			;; 3275: 3f          ?
	ral			;; 3276: 17          .
	lxi	h,L1d40		;; 3277: 21 40 1d    .@.
	ana	m		;; 327a: a6          .
	rar			;; 327b: 1f          .
	jrnc	L3283		;; 327c: 30 05       0.
	lhld	L1d43		;; 327e: 2a 43 1d    *C.
	rst	3		;; 3281: df          .
	db	0bh
L3283:	lxi	h,0ff83h	;; 3283: 21 83 ff    ...
	rst	2		;; 3286: d7          .
	lxi	d,L1d43		;; 3287: 11 43 1d    .C.
	lxi	b,00006h	;; 328a: 01 06 00    ...
	ldir			;; 328d: ed b0       ..
	ldx	a,-126		;; 328f: dd 7e 82    .~.
	sta	L1d40		;; 3292: 32 40 1d    2@.
	rst	3		;; 3295: df          .
	db	8bh
	jmp	L8d56		;; 3297: c3 56 8d    .V.

L329a:	call	L8d27		;; 329a: cd 27 8d    .'.
	db	0fbh,0dh
	ldx	a,-120		;; 329f: dd 7e 88    .~.
	stx	a,-126		;; 32a2: dd 77 82    .w.
	mov	l,a		;; 32a5: 6f          o
	mvi	h,000h		;; 32a6: 26 00       &.
	dad	h		;; 32a8: 29          )
	lxi	d,L1c90		;; 32a9: 11 90 1c    ...
	dad	d		;; 32ac: 19          .
	rst	4		;; 32ad: e7          .
	db	80h
	rst	3		;; 32af: df          .
	db	3
L32b1:	lda	L02e6		;; 32b1: 3a e6 02    :..
	cmpx	-126		;; 32b4: dd be 82    ...
	mvi	a,000h		;; 32b7: 3e 00       >.
	ral			;; 32b9: 17          .
	push	psw		;; 32ba: f5          .
	rst	3		;; 32bb: df          .
	db	83h
	mov	a,h		;; 32bd: 7c          |
	ora	l		;; 32be: b5          .
	call	L8c09		;; 32bf: cd 09 8c    ...
	mov	b,a		;; 32c2: 47          G
	pop	psw		;; 32c3: f1          .
	ana	b		;; 32c4: a0          .
	rar			;; 32c5: 1f          .
	jrnc	L32ef		;; 32c6: 30 27       0'
	ldx	a,-126		;; 32c8: dd 7e 82    .~.
	dcr	a		;; 32cb: 3d          =
	stx	a,-126		;; 32cc: dd 77 82    .w.
	mov	l,a		;; 32cf: 6f          o
	mvi	h,000h		;; 32d0: 26 00       &.
	dad	h		;; 32d2: 29          )
	lxi	d,L1c5e		;; 32d3: 11 5e 1c    .^.
	dad	d		;; 32d6: 19          .
	rst	4		;; 32d7: e7          .
	db	80h
	rst	3		;; 32d9: df          .
	db	3
	mov	a,h		;; 32db: 7c          |
	ora	l		;; 32dc: b5          .
	jrnz	L32ed		;; 32dd: 20 0e        .
	ldx	l,-126		;; 32df: dd 6e 82    .n.
	mvi	h,000h		;; 32e2: 26 00       &.
	dad	h		;; 32e4: 29          )
	lxi	d,L1c90		;; 32e5: 11 90 1c    ...
	dad	d		;; 32e8: 19          .
	rst	4		;; 32e9: e7          .
	db	80h
	rst	3		;; 32eb: df          .
	db	3
L32ed:	jr	L32b1		;; 32ed: 18 c2       ..

L32ef:	rst	3		;; 32ef: df          .
	db	83h
	mov	a,h		;; 32f1: 7c          |
	ora	l		;; 32f2: b5          .
	jrnz	L3307		;; 32f3: 20 12        .
	ldx	l,-120		;; 32f5: dd 6e 88    .n.
	mvi	h,000h		;; 32f8: 26 00       &.
	dad	h		;; 32fa: 29          )
	lxi	d,L1cf4		;; 32fb: 11 f4 1c    ...
	dad	d		;; 32fe: 19          .
	rst	4		;; 32ff: e7          .
	db	80h
	push	h		;; 3301: e5          .
	call	L5f05		;; 3302: cd 05 5f    .._
	rst	3		;; 3305: df          .
	db	3
L3307:	rst	3		;; 3307: df          .
	db	83h
	rst	3		;; 3309: df          .
	db	5
	jmp	L8d56		;; 330b: c3 56 8d    .V.

L330e:	call	L8d27		;; 330e: cd 27 8d    .'.
	db	0fdh,9
L3313:	lxi	h,00000h	;; 3313: 21 00 00    ...
	push	h		;; 3316: e5          .
	call	L5e78		;; 3317: cd 78 5e    .x^
	push	h		;; 331a: e5          .
	call	L6760		;; 331b: cd 60 67    .`g
	mvix	000h,-124	;; 331e: dd 36 84 00 .6..
L3322:	lda	L02f0		;; 3322: 3a f0 02    :..
	xri	001h		;; 3325: ee 01       ..
	lxi	h,L1d40		;; 3327: 21 40 1d    .@.
	ana	m		;; 332a: a6          .
	rar			;; 332b: 1f          .
	jnc	L33b4		;; 332c: d2 b4 33    ..3
	lda	L1d45		;; 332f: 3a 45 1d    :E.
	ora	a		;; 3332: b7          .
	jnz	L33ae		;; 3333: c2 ae 33    ..3
	lhld	L1d43		;; 3336: 2a 43 1d    *C.
	shld	L1787		;; 3339: 22 87 17    "..
	call	L1ace		;; 333c: cd ce 1a    ...
	lda	L1d46		;; 333f: 3a 46 1d    :F.
	cmpx	-124		;; 3342: dd be 84    ...
	jrnz	L33a1		;; 3345: 20 5a        Z
	lda	L1d46		;; 3347: 3a 46 1d    :F.
	push	psw		;; 334a: f5          .
	call	L75c9		;; 334b: cd c9 75    ..u
	db	0ah,0,0,0,0,0,0,0,0,4,2
	call	L7450		;; 3359: cd 50 74    .Pt
	jrz	L339f		;; 335c: 28 41       (A
	lda	L1d47		;; 335e: 3a 47 1d    :G.
	cpi	020h		;; 3361: fe 20       . 
	jrnz	L339f		;; 3363: 20 3a        :
	lda	L1d48		;; 3365: 3a 48 1d    :H.
	cpi	020h		;; 3368: fe 20       . 
	jrnz	L339f		;; 336a: 20 33        3
	lhld	L1d43		;; 336c: 2a 43 1d    *C.
	push	h		;; 336f: e5          .
	call	L75c9		;; 3370: cd c9 75    ..u
	db	0ch,0,0,0,0,0,0,0,80h,0feh,0ffh,0ffh,7
	call	L7397		;; 3380: cd 97 73    ..s
	db	10h
	lxi	h,0ff82h	;; 3384: 21 82 ff    ...
	rst	2		;; 3387: d7          .
	push	h		;; 3388: e5          .
	call	L60f2		;; 3389: cd f2 60    ..`
	lda	L1c53		;; 338c: 3a 53 1c    :S.
	rar			;; 338f: 1f          .
	jrnc	L339f		;; 3390: 30 0d       0.
	lhld	L1d41		;; 3392: 2a 41 1d    *A.
	push	h		;; 3395: e5          .
	call	L657c		;; 3396: cd 7c 65    .|e
	call	L1ae6		;; 3399: cd e6 1a    ...
	jmp	L3313		;; 339c: c3 13 33    ..3

L339f:	jr	L33ae		;; 339f: 18 0d       ..

L33a1:	lda	L1d46		;; 33a1: 3a 46 1d    :F.
	cpi	04fh		;; 33a4: fe 4f       .O
	jrz	L33ae		;; 33a6: 28 06       (.
	lda	L1d46		;; 33a8: 3a 46 1d    :F.
	stx	a,-124		;; 33ab: dd 77 84    .w.
L33ae:	call	L67a6		;; 33ae: cd a6 67    ..g
	jmp	L3322		;; 33b1: c3 22 33    ."3

L33b4:	jmp	L8d56		;; 33b4: c3 56 8d    .V.

L33b7:	call	L8d27		;; 33b7: cd 27 8d    .'.
	db	0fdh,0dh
	rst	4		;; 33bc: e7          .
	db	8ah
	ldy	l,-123		;; 33be: fd 6e 85    .n.
	ldy	h,-122		;; 33c1: fd 66 86    .f.
	push	h		;; 33c4: e5          .
	ldx	a,-120		;; 33c5: dd 7e 88    .~.
	push	psw		;; 33c8: f5          .
	rst	4		;; 33c9: e7          .
	db	8ah
	ldy	l,-126		;; 33cb: fd 6e 82    .n.
	ldy	h,-125		;; 33ce: fd 66 83    .f.
	push	h		;; 33d1: e5          .
	call	L6475		;; 33d2: cd 75 64    .ud
	rst	3		;; 33d5: df          .
	db	3
L33d7:	rst	4		;; 33d7: e7          .
	db	8ah
	ldy	l,-123		;; 33d9: fd 6e 85    .n.
	ldy	h,-122		;; 33dc: fd 66 86    .f.
	push	h		;; 33df: e5          .
	call	L1355		;; 33e0: cd 55 13    .U.
	stx	a,-126		;; 33e3: dd 77 82    .w.
	rst	4		;; 33e6: e7          .
	db	8ah
	ldy	l,-123		;; 33e8: fd 6e 85    .n.
	ldy	h,-122		;; 33eb: fd 66 86    .f.
	inx	h		;; 33ee: 23          #
	rst	4		;; 33ef: e7          .
	db	8ah
	sty	l,-123		;; 33f1: fd 75 85    .u.
	sty	h,-122		;; 33f4: fd 74 86    .t.
	ldx	a,-126		;; 33f7: dd 7e 82    .~.
	cmpx	-122		;; 33fa: dd be 86    ...
	jrnz	L3401		;; 33fd: 20 02        .
	jr	L341a		;; 33ff: 18 19       ..

L3401:	ldx	a,-120		;; 3401: dd 7e 88    .~.
	cpi	043h		;; 3404: fe 43       .C
	call	L8c0e		;; 3406: cd 0e 8c    ...
	push	psw		;; 3409: f5          .
	ldx	a,-126		;; 340a: dd 7e 82    .~.
	cpi	080h		;; 340d: fe 80       ..
	mvi	a,000h		;; 340f: 3e 00       >.
	ral			;; 3411: 17          .
	mov	b,a		;; 3412: 47          G
	pop	psw		;; 3413: f1          .
	ora	b		;; 3414: b0          .
	rar			;; 3415: 1f          .
	jrnc	L341a		;; 3416: 30 02       0.
	jr	L33d7		;; 3418: 18 bd       ..

L341a:	rst	4		;; 341a: e7          .
	db	8ah
	ldy	l,-123		;; 341c: fd 6e 85    .n.
	ldy	h,-122		;; 341f: fd 66 86    .f.
	push	h		;; 3422: e5          .
	mvi	a,049h		;; 3423: 3e 49       >I
	push	psw		;; 3425: f5          .
	rst	4		;; 3426: e7          .
	db	8ah
	ldy	l,-123		;; 3428: fd 6e 85    .n.
	ldy	h,-122		;; 342b: fd 66 86    .f.
	push	h		;; 342e: e5          .
	call	L5f05		;; 342f: cd 05 5f    .._
	push	h		;; 3432: e5          .
	call	L6475		;; 3433: cd 75 64    .ud
	rst	3		;; 3436: df          .
	db	3
	jmp	L8d56		;; 3438: c3 56 8d    .V.

L343b:	call	L8d27		;; 343b: cd 27 8d    .'.
	db	0fbh,0bh
	lda	L02e3		;; 3440: 3a e3 02    :..
	stx	a,-124		;; 3443: dd 77 84    .w.
	call	L1e41		;; 3446: cd 41 1e    .A.
	lhld	L322b		;; 3449: 2a 2b 32    *+2
	rst	3		;; 344c: df          .
	db	5
	lda	L02e3		;; 344e: 3a e3 02    :..
	push	psw		;; 3451: f5          .
	call	L329a		;; 3452: cd 9a 32    ..2
	rst	3		;; 3455: df          .
	db	2
	lda	L1785		;; 3457: 3a 85 17    :..
	call	L34c8		;; 345a: cd c8 34    ..4
L345d:	mvi	a,042h		;; 345d: 3e 42       >B
	push	psw		;; 345f: f5          .
	mvi	a,024h		;; 3460: 3e 24       >$
	push	psw		;; 3462: f5          .
	rst	4		;; 3463: e7          .
	db	82h
	call	L33b7		;; 3465: cd b7 33    ..3
	jmp	L350e		;; 3468: c3 0e 35    ..5

L346b:	mvi	a,042h		;; 346b: 3e 42       >B
	push	psw		;; 346d: f5          .
	mvi	a,000h		;; 346e: 3e 00       >.
	push	psw		;; 3470: f5          .
	rst	4		;; 3471: e7          .
	db	82h
	call	L33b7		;; 3473: cd b7 33    ..3
	jmp	L350e		;; 3476: c3 0e 35    ..5

L3479:	mvi	a,043h		;; 3479: 3e 43       >C
	push	psw		;; 347b: f5          .
	mvi	a,080h		;; 347c: 3e 80       >.
	push	psw		;; 347e: f5          .
	rst	4		;; 347f: e7          .
	db	82h
	call	L33b7		;; 3481: cd b7 33    ..3
	jmp	L350e		;; 3484: c3 0e 35    ..5

L3487:	rst	3		;; 3487: df          .
	db	85h
	push	h		;; 3489: e5          .
	mvi	a,00eh		;; 348a: 3e 0e       >.
	push	psw		;; 348c: f5          .
	rst	3		;; 348d: df          .
	db	85h
	push	h		;; 348f: e5          .
	call	L1f12		;; 3490: cd 12 1f    ...
	push	h		;; 3493: e5          .
	call	L6747		;; 3494: cd 47 67    .Gg
	lda	L02ea		;; 3497: 3a ea 02    :..
	stx	a,-124		;; 349a: dd 77 84    .w.
	jr	L350e		;; 349d: 18 6f       .o

L349f:	lda	L02e3		;; 349f: 3a e3 02    :..
	mov	l,a		;; 34a2: 6f          o
	mvi	h,000h		;; 34a3: 26 00       &.
	dad	h		;; 34a5: 29          )
	lxi	d,L1c90		;; 34a6: 11 90 1c    ...
	dad	d		;; 34a9: 19          .
	push	h		;; 34aa: e5          .
	rst	3		;; 34ab: df          .
	db	85h
	push	h		;; 34ad: e5          .
	lda	L1785		;; 34ae: 3a 85 17    :..
	push	psw		;; 34b1: f5          .
	rst	3		;; 34b2: df          .
	db	82h
	push	h		;; 34b4: e5          .
	call	L6475		;; 34b5: cd 75 64    .ud
	rst	4		;; 34b8: e7          .
	db	81h
	jr	L350e		;; 34ba: 18 52       .R

L34bc:	call	L330e		;; 34bc: cd 0e 33    ..3
	jr	L350e		;; 34bf: 18 4d       .M

L34c1:	jr	L350e		;; 34c1: 18 4b       .K

L34c3:	call	L0a8f		;; 34c3: cd 8f 0a    ...
	jr	L350e		;; 34c6: 18 46       .F

L34c8:	mvi	b,015h		;; 34c8: 06 15       ..
	call	L8ddc		;; 34ca: cd dc 8d    ...
	db ' ' ! dw L34c1
	db '$' ! dw L345d
	db '0' ! dw L346b
	db '2' ! dw L349f
	db '7' ! dw L3479
	db 'B' ! dw L349f
	db 'C' ! dw L349f
	db 'D' ! dw L349f
	db 'H' ! dw L349f
	db 'I' ! dw L349f
	db 'L' ! dw L349f
	db 'M' ! dw L349f
	db 'N' ! dw L349f
	db 'O' ! dw L3487
	db 'Q' ! dw L349f
	db 'R' ! dw L349f
	db 'S' ! dw L349f
	db 'T' ! dw L349f
	db 'W' ! dw L349f
	db 'X' ! dw L349f
	db 'Y' ! dw L34bc
	dw	L34c3
L350e:	lhld	L1789		;; 350e: 2a 89 17    *..
	push	h		;; 3511: e5          .
	call	L65f5		;; 3512: cd f5 65    ..e
	ldx	a,-124		;; 3515: dd 7e 84    .~.
	push	psw		;; 3518: f5          .
	call	L2bcc		;; 3519: cd cc 2b    ..+
	jmp	L8d56		;; 351c: c3 56 8d    .V.

L351f:	call	L8d27		;; 351f: cd 27 8d    .'.
	db	0,6
	lhld	L1789		;; 3524: 2a 89 17    *..
	push	h		;; 3527: e5          .
	call	L65f5		;; 3528: cd f5 65    ..e
	call	L2c3e		;; 352b: cd 3e 2c    .>,
	call	L30cb		;; 352e: cd cb 30    ..0
	call	L1dda		;; 3531: cd da 1d    ...
	jmp	L8d56		;; 3534: c3 56 8d    .V.

L3537:	call	L8d27		;; 3537: cd 27 8d    .'.
	db	0fch,'.'
	mvi	a,00fh		;; 353c: 3e 0f       >.
	push	psw		;; 353e: f5          .
	call	L322e		;; 353f: cd 2e 32    ..2
	push	h		;; 3542: e5          .
	call	L1f12		;; 3543: cd 12 1f    ...
	rst	3		;; 3546: df          .
	db	4
	lda	L02f0		;; 3548: 3a f0 02    :..
	xri	001h		;; 354b: ee 01       ..
	rar			;; 354d: 1f          .
	jrnc	L355c		;; 354e: 30 0c       0.
	mvi	a,010h		;; 3550: 3e 10       >.
	push	psw		;; 3552: f5          .
	lxi	h,0ffffh	;; 3553: 21 ff ff    ...
	push	h		;; 3556: e5          .
	call	L1f12		;; 3557: cd 12 1f    ...
	rst	3		;; 355a: df          .
	db	2
L355c:	rst	3		;; 355c: df          .
	db	84h
	shld	L1789		;; 355e: 22 89 17    "..
	rst	3		;; 3561: df          .
	db	84h
	push	h		;; 3563: e5          .
	call	L6343		;; 3564: cd 43 63    .Cc
	rst	3		;; 3567: df          .
	db	82h
	shld	L1787		;; 3569: 22 87 17    "..
	lxi	h,L178b		;; 356c: 21 8b 17    ...
	mvi	m,001h		;; 356f: 36 01       6.
	call	L1b50		;; 3571: cd 50 1b    .P.
	lxi	h,L02f6		;; 3574: 21 f6 02    ...
	mvi	m,001h		;; 3577: 36 01       6.
	lxi	h,L02f3		;; 3579: 21 f3 02    ...
	push	h		;; 357c: e5          .
	lxi	h,00000h	;; 357d: 21 00 00    ...
	push	h		;; 3580: e5          .
	lxi	h,0ff86h	;; 3581: 21 86 ff    ...
	rst	2		;; 3584: d7          .
	call	L75ea		;; 3585: cd ea 75    ..u
	call	L7995		;; 3588: cd 95 79    ..y
	lxi	h,L02f3		;; 358b: 21 f3 02    ...
	push	h		;; 358e: e5          .
	lxi	h,00000h	;; 358f: 21 00 00    ...
	push	h		;; 3592: e5          .
	call	L78ba		;; 3593: cd ba 78    ..x
	lxi	h,L02f2		;; 3596: 21 f2 02    ...
	mvi	m,001h		;; 3599: 36 01       6.
	lda	L1785		;; 359b: 3a 85 17    :..
	cpi	057h		;; 359e: fe 57       .W
	call	L8c09		;; 35a0: cd 09 8c    ...
	sta	L02f5		;; 35a3: 32 f5 02    2..
	xri	001h		;; 35a6: ee 01       ..
	rar			;; 35a8: 1f          .
	jrnc	L35b2		;; 35a9: 30 07       0.
	lxi	h,L02b2		;; 35ab: 21 b2 02    ...
	push	h		;; 35ae: e5          .
	call	L5b56		;; 35af: cd 56 5b    .V[
L35b2:	rst	3		;; 35b2: df          .
	db	84h
	push	h		;; 35b4: e5          .
	call	L5e78		;; 35b5: cd 78 5e    .x^
	push	h		;; 35b8: e5          .
	call	L6760		;; 35b9: cd 60 67    .`g
	call	L0c91		;; 35bc: cd 91 0c    ...
	mvi	a,001h		;; 35bf: 3e 01       >.
	push	psw		;; 35c1: f5          .
	call	L0d9b		;; 35c2: cd 9b 0d    ...
	mvi	a,000h		;; 35c5: 3e 00       >.
	push	psw		;; 35c7: f5          .
	call	L1762		;; 35c8: cd 62 17    .b.
	mvi	a,002h		;; 35cb: 3e 02       >.
	push	psw		;; 35cd: f5          .
	call	L0d9b		;; 35ce: cd 9b 0d    ...
	mvi	a,03bh		;; 35d1: 3e 3b       >;
	push	psw		;; 35d3: f5          .
	call	L0597		;; 35d4: cd 97 05    ...
	lxi	h,L1050		;; 35d7: 21 50 10    .P.
	call	L75ea		;; 35da: cd ea 75    ..u
	mvi	a,037h		;; 35dd: 3e 37       >7
	call	L8bb0		;; 35df: cd b0 8b    ...
	call	L0803		;; 35e2: cd 03 08    ...
	call	L0799		;; 35e5: cd 99 07    ...
	rst	3		;; 35e8: df          .
	db	84h
	push	h		;; 35ea: e5          .
	call	L5428		;; 35eb: cd 28 54    .(T
	mvi	a,002h		;; 35ee: 3e 02       >.
	push	psw		;; 35f0: f5          .
	mvi	a,02eh		;; 35f1: 3e 2e       >.
	push	psw		;; 35f3: f5          .
	call	L0720		;; 35f4: cd 20 07    . .
	rst	3		;; 35f7: df          .
	db	82h
	push	h		;; 35f9: e5          .
	call	L5428		;; 35fa: cd 28 54    .(T
	call	L0c91		;; 35fd: cd 91 0c    ...
L3600:	ldx	c,-126		;; 3600: dd 4e 82    .N.
	ldx	b,-125		;; 3603: dd 46 83    .F.
	rst	3		;; 3606: df          .
	db	84h
	ora	a		;; 3608: b7          .
	dsbc	b		;; 3609: ed 42       .B
	mvi	a,000h		;; 360b: 3e 00       >.
	ral			;; 360d: 17          .
	push	psw		;; 360e: f5          .
	ldx	c,-126		;; 360f: dd 4e 82    .N.
	ldx	b,-125		;; 3612: dd 46 83    .F.
	rst	3		;; 3615: df          .
	db	84h
	ora	a		;; 3617: b7          .
	dsbc	b		;; 3618: ed 42       .B
	call	L8c09		;; 361a: cd 09 8c    ...
	lxi	h,L1d40		;; 361d: 21 40 1d    .@.
	ana	m		;; 3620: a6          .
	mov	b,a		;; 3621: 47          G
	pop	psw		;; 3622: f1          .
	ora	b		;; 3623: b0          .
	push	psw		;; 3624: f5          .
	lda	L02f0		;; 3625: 3a f0 02    :..
	xri	001h		;; 3628: ee 01       ..
	mov	b,a		;; 362a: 47          G
	pop	psw		;; 362b: f1          .
	ana	b		;; 362c: a0          .
	rar			;; 362d: 1f          .
	jrnc	L364c		;; 362e: 30 1c       0.
	lxi	h,0ff84h	;; 3630: 21 84 ff    ...
	rst	2		;; 3633: d7          .
	push	h		;; 3634: e5          .
	call	L25ce		;; 3635: cd ce 25    ..%
	call	L0c91		;; 3638: cd 91 0c    ...
	lda	L02e4		;; 363b: 3a e4 02    :..
	lxi	h,L02e3		;; 363e: 21 e3 02    ...
	cmp	m		;; 3641: be          .
	jrnc	L364a		;; 3642: 30 06       0.
	lda	L02e4		;; 3644: 3a e4 02    :..
	sta	L02e3		;; 3647: 32 e3 02    2..
L364a:	jr	L3600		;; 364a: 18 b4       ..

L364c:	mvi	a,001h		;; 364c: 3e 01       >.
	push	psw		;; 364e: f5          .
	call	L0d9b		;; 364f: cd 9b 0d    ...
	mvi	a,001h		;; 3652: 3e 01       >.
	push	psw		;; 3654: f5          .
	call	L1762		;; 3655: cd 62 17    .b.
	call	L0c91		;; 3658: cd 91 0c    ...
	lxi	h,L02f2		;; 365b: 21 f2 02    ...
	mvi	m,000h		;; 365e: 36 00       6.
	lhld	L02f3		;; 3660: 2a f3 02    *..
	push	h		;; 3663: e5          .
	call	L78e7		;; 3664: cd e7 78    ..x
	lxi	h,L02f6		;; 3667: 21 f6 02    ...
	mvi	m,000h		;; 366a: 36 00       6.
	lxi	h,L02f5		;; 366c: 21 f5 02    ...
	mvi	m,000h		;; 366f: 36 00       6.
	lxi	h,L178b		;; 3671: 21 8b 17    ...
	mvi	m,000h		;; 3674: 36 00       6.
	call	L1b50		;; 3676: cd 50 1b    .P.
	jmp	L8d56		;; 3679: c3 56 8d    .V.

L367c:	call	L8d27		;; 367c: cd 27 8d    .'.
	db	0dch,'*'
	call	L1e41		;; 3681: cd 41 1e    .A.
	lda	L1785		;; 3684: 3a 85 17    :..
	call	L3746		;; 3687: cd 46 37    .F7
L368a:	lxi	h,L3171		;; 368a: 21 71 31    .q1
	mvi	m,001h		;; 368d: 36 01       6.
	lda	L1c54		;; 368f: 3a 54 1c    :T.
	xri	001h		;; 3692: ee 01       ..
	rar			;; 3694: 1f          .
	jrnc	L36a9		;; 3695: 30 12       0.
	mvi	a,001h		;; 3697: 3e 01       >.
	push	psw		;; 3699: f5          .
	call	L1ed3		;; 369a: cd d3 1e    ...
	mvi	a,002h		;; 369d: 3e 02       >.
	push	psw		;; 369f: f5          .
	call	L1762		;; 36a0: cd 62 17    .b.
	call	L2027		;; 36a3: cd 27 20    .' 
	sta	L3171		;; 36a6: 32 71 31    2q1
L36a9:	jmp	L3765		;; 36a9: c3 65 37    .e7

L36ac:	lxi	h,L178b		;; 36ac: 21 8b 17    ...
	mvi	m,001h		;; 36af: 36 01       6.
	call	L1b50		;; 36b1: cd 50 1b    .P.
	call	L685e		;; 36b4: cd 5e 68    .^h
	lxi	h,L178b		;; 36b7: 21 8b 17    ...
	mvi	m,000h		;; 36ba: 36 00       6.
	lhld	L1789		;; 36bc: 2a 89 17    *..
	push	h		;; 36bf: e5          .
	call	L65f5		;; 36c0: cd f5 65    ..e
	jmp	L3765		;; 36c3: c3 65 37    .e7

L36c6:	lxi	h,L178b		;; 36c6: 21 8b 17    ...
	mvi	m,001h		;; 36c9: 36 01       6.
	call	L1b50		;; 36cb: cd 50 1b    .P.
	call	L6b78		;; 36ce: cd 78 6b    .xk
	lxi	h,L178b		;; 36d1: 21 8b 17    ...
	mvi	m,000h		;; 36d4: 36 00       6.
	lda	L1785		;; 36d6: 3a 85 17    :..
	cpi	058h		;; 36d9: fe 58       .X
	call	L8c09		;; 36db: cd 09 8c    ...
	sta	L3171		;; 36de: 32 71 31    2q1
	lxi	h,L1c54		;; 36e1: 21 54 1c    .T.
	mvi	m,001h		;; 36e4: 36 01       6.
	jmp	L3765		;; 36e6: c3 65 37    .e7

L36e9:	lxi	h,L0199		;; 36e9: 21 99 01    ...
	call	L75ea		;; 36ec: cd ea 75    ..u
	lxi	h,0ff82h	;; 36ef: 21 82 ff    ...
	rst	2		;; 36f2: d7          .
	mvi	a,023h		;; 36f3: 3e 23       >#
	call	L8b81		;; 36f5: cd 81 8b    ...
	lda	L1785		;; 36f8: 3a 85 17    :..
	cpi	057h		;; 36fb: fe 57       .W
	jrnz	L370e		;; 36fd: 20 0f        .
	lxi	h,L019e		;; 36ff: 21 9e 01    ...
	call	L75ea		;; 3702: cd ea 75    ..u
	lxi	h,0ff82h	;; 3705: 21 82 ff    ...
	rst	2		;; 3708: d7          .
	mvi	a,023h		;; 3709: 3e 23       >#
	call	L8b81		;; 370b: cd 81 8b    ...
L370e:	ldx	a,-122		;; 370e: dd 7e 86    .~.
	cpi	03ah		;; 3711: fe 3a       .:
	jrz	L372e		;; 3713: 28 19       (.
	lxi	h,L1074		;; 3715: 21 74 10    .t.
	call	L75ea		;; 3718: cd ea 75    ..u
	lxi	h,0ff82h	;; 371b: 21 82 ff    ...
	rst	2		;; 371e: d7          .
	call	L75ea		;; 371f: cd ea 75    ..u
	call	L8b20		;; 3722: cd 20 8b    . .
	lxi	h,0ff82h	;; 3725: 21 82 ff    ...
	rst	2		;; 3728: d7          .
	mvi	a,023h		;; 3729: 3e 23       >#
	call	L8b81		;; 372b: cd 81 8b    ...
L372e:	lxi	h,0ff82h	;; 372e: 21 82 ff    ...
	rst	2		;; 3731: d7          .
	call	L75ea		;; 3732: cd ea 75    ..u
	mvi	a,023h		;; 3735: 3e 23       >#
	call	L8bb0		;; 3737: cd b0 8b    ...
	call	L3537		;; 373a: cd 37 35    .75
	jr	L3765		;; 373d: 18 26       .&

L373f:	jr	L3765		;; 373f: 18 24       .$

L3741:	call	L0a8f		;; 3741: cd 8f 0a    ...
	jr	L3765		;; 3744: 18 1f       ..

L3746:	mvi	b,008h		;; 3746: 06 08       ..
	call	L8ddc		;; 3748: cd dc 8d    ...
	db ' ' ! dw L373f
	db 'G' ! dw L36ac
	db 'P' ! dw L36e9
	db 'Q' ! dw L368a
	db 'R' ! dw L36ac
	db 'S' ! dw L36c6
	db 'W' ! dw L36e9
	db 'X' ! dw L36c6
	dw	L3741
L3765:	lda	L3171		;; 3765: 3a 71 31    :q1
	xri	001h		;; 3768: ee 01       ..
	rar			;; 376a: 1f          .
	jrnc	L3770		;; 376b: 30 03       0.
	call	L351f		;; 376d: cd 1f 35    ..5
L3770:	jmp	L8d56		;; 3770: c3 56 8d    .V.

L3773:	call	L8d27		;; 3773: cd 27 8d    .'.
	db	0,8
	lda	L02e8		;; 3778: 3a e8 02    :..
	mov	l,a		;; 377b: 6f          o
	mvi	h,000h		;; 377c: 26 00       &.
	dad	h		;; 377e: 29          )
	lxi	d,L1cf4		;; 377f: 11 f4 1c    ...
	dad	d		;; 3782: 19          .
	push	h		;; 3783: e5          .
	ldx	l,-125		;; 3784: dd 6e 83    .n.
	mvi	h,000h		;; 3787: 26 00       &.
	dad	h		;; 3789: 29          )
	lxi	d,L1cc2		;; 378a: 11 c2 1c    ...
	dad	d		;; 378d: 19          .
	pop	d		;; 378e: d1          .
	ldi			;; 378f: ed a0       ..
	ldi			;; 3791: ed a0       ..
	lda	L02e8		;; 3793: 3a e8 02    :..
	mov	l,a		;; 3796: 6f          o
	mvi	h,000h		;; 3797: 26 00       &.
	dad	h		;; 3799: 29          )
	lxi	d,L1c90		;; 379a: 11 90 1c    ...
	dad	d		;; 379d: 19          .
	mvi	m,000h		;; 379e: 36 00       6.
	inx	h		;; 37a0: 23          #
	mvi	m,000h		;; 37a1: 36 00       6.
	lda	L02e8		;; 37a3: 3a e8 02    :..
	mov	l,a		;; 37a6: 6f          o
	mvi	h,000h		;; 37a7: 26 00       &.
	dad	h		;; 37a9: 29          )
	lxi	d,L1c5e		;; 37aa: 11 5e 1c    .^.
	dad	d		;; 37ad: 19          .
	mvi	m,000h		;; 37ae: 36 00       6.
	inx	h		;; 37b0: 23          #
	mvi	m,000h		;; 37b1: 36 00       6.
	lda	L02e8		;; 37b3: 3a e8 02    :..
	push	psw		;; 37b6: f5          .
	call	L2bcc		;; 37b7: cd cc 2b    ..+
	call	L314c		;; 37ba: cd 4c 31    .L1
	jmp	L8d56		;; 37bd: c3 56 8d    .V.

L37c0:	call	L8d27		;; 37c0: cd 27 8d    .'.
	db	0f2h,16h
	call	L8d60		;; 37c5: cd 60 8d    .`.
	dw	L104c
	mov	h,b		;; 37ca: 60          `
	mov	l,c		;; 37cb: 69          i
	rst	3		;; 37cc: df          .
	db	0eh
	lxi	h,L178b		;; 37ce: 21 8b 17    ...
	mvi	m,001h		;; 37d1: 36 01       6.
	rst	3		;; 37d3: df          .
	db	90h
	shld	L1789		;; 37d5: 22 89 17    "..
	lxi	h,00000h	;; 37d8: 21 00 00    ...
	shld	L1787		;; 37db: 22 87 17    "..
	call	L1b50		;; 37de: cd 50 1b    .P.
	lxi	h,00001h	;; 37e1: 21 01 00    ...
	shld	L1787		;; 37e4: 22 87 17    "..
	call	L1ace		;; 37e7: cd ce 1a    ...
	lxi	h,L1d51		;; 37ea: 21 51 1d    .Q.
	mvi	m,001h		;; 37ed: 36 01       6.
	call	L1dda		;; 37ef: cd da 1d    ...
	lxi	h,L3169		;; 37f2: 21 69 31    .i1
	mvi	m,001h		;; 37f5: 36 01       6.
	lxi	h,L316f		;; 37f7: 21 6f 31    .o1
	mvi	m,000h		;; 37fa: 36 00       6.
L37fc:	ldx	c,-114		;; 37fc: dd 4e 8e    .N.
	ldx	b,-113		;; 37ff: dd 46 8f    .F.
	rst	3		;; 3802: df          .
	db	90h
	ora	a		;; 3804: b7          .
	dsbc	b		;; 3805: ed 42       .B
	mvi	a,000h		;; 3807: 3e 00       >.
	ral			;; 3809: 17          .
	push	psw		;; 380a: f5          .
	lda	L02f0		;; 380b: 3a f0 02    :..
	xri	001h		;; 380e: ee 01       ..
	mov	b,a		;; 3810: 47          G
	pop	psw		;; 3811: f1          .
	ana	b		;; 3812: a0          .
	push	psw		;; 3813: f5          .
	lda	L316f		;; 3814: 3a 6f 31    :o1
	xri	001h		;; 3817: ee 01       ..
	mov	b,a		;; 3819: 47          G
	pop	psw		;; 381a: f1          .
	ana	b		;; 381b: a0          .
	rar			;; 381c: 1f          .
	jnc	L38d9		;; 381d: d2 d9 38    ..8
	rst	3		;; 3820: df          .
	db	90h
	shld	L1789		;; 3822: 22 89 17    "..
	lda	L3169		;; 3825: 3a 69 31    :i1
	rar			;; 3828: 1f          .
	jrnc	L3840		;; 3829: 30 15       0.
	rst	3		;; 382b: df          .
	db	90h
	push	h		;; 382d: e5          .
	call	L5e78		;; 382e: cd 78 5e    .x^
	push	h		;; 3831: e5          .
	call	L6760		;; 3832: cd 60 67    .`g
	rst	3		;; 3835: df          .
	db	90h
	push	h		;; 3837: e5          .
	call	L6343		;; 3838: cd 43 63    .Cc
	lxi	h,L3169		;; 383b: 21 69 31    .i1
	mvi	m,000h		;; 383e: 36 00       6.
L3840:	rst	3		;; 3840: df          .
	db	90h
	shld	L316b		;; 3842: 22 6b 31    "k1
	lxi	h,0ff90h	;; 3845: 21 90 ff    ...
	rst	2		;; 3848: d7          .
	push	h		;; 3849: e5          .
	call	L25ce		;; 384a: cd ce 25    ..%
	lda	L3170		;; 384d: 3a 70 31    :p1
	xri	001h		;; 3850: ee 01       ..
	rar			;; 3852: 1f          .
	jrnc	L385a		;; 3853: 30 05       0.
	rst	3		;; 3855: df          .
	db	90h
	shld	L316b		;; 3857: 22 6b 31    "k1
L385a:	call	L0c91		;; 385a: cd 91 0c    ...
	lda	L1c5a		;; 385d: 3a 5a 1c    :Z.
	rar			;; 3860: 1f          .
	jrnc	L38d6		;; 3861: 30 73       0s
	rst	3		;; 3863: df          .
	db	90h
	push	h		;; 3865: e5          .
	call	L6343		;; 3866: cd 43 63    .Cc
	lda	L1c0c		;; 3869: 3a 0c 1c    :..
	cpi	020h		;; 386c: fe 20       . 
	jrnz	L38d1		;; 386e: 20 61        a
	mvix	001h,-125	;; 3870: dd 36 83 01 .6..
	rst	3		;; 3874: df          .
	db	90h
	push	h		;; 3876: e5          .
	call	L5e78		;; 3877: cd 78 5e    .x^
	rst	3		;; 387a: df          .
	db	0ah
	mov	a,h		;; 387c: 7c          |
	ora	l		;; 387d: b5          .
	jrz	L38b4		;; 387e: 28 34       (4
	rst	3		;; 3880: df          .
	db	8ah
	push	h		;; 3882: e5          .
	lxi	h,0ff84h	;; 3883: 21 84 ff    ...
	rst	2		;; 3886: d7          .
	push	h		;; 3887: e5          .
	call	L5e1e		;; 3888: cd 1e 5e    ..^
	ldx	c,-112		;; 388b: dd 4e 90    .N.
	ldx	b,-111		;; 388e: dd 46 91    .F.
	rst	3		;; 3891: df          .
	db	84h
	ora	a		;; 3893: b7          .
	dsbc	b		;; 3894: ed 42       .B
	jrnz	L38b4		;; 3896: 20 1c        .
	ldx	a,-122		;; 3898: dd 7e 86    .~.
	push	psw		;; 389b: f5          .
	call	L75c9		;; 389c: cd c9 75    ..u
	db	0bh,0,0,0,0,0,0,0,0,8,10h,4
	call	L7450		;; 38ab: cd 50 74    .Pt
	jrz	L38b4		;; 38ae: 28 04       (.
	mvix	000h,-125	;; 38b0: dd 36 83 00 .6..
L38b4:	ldx	a,-125		;; 38b4: dd 7e 83    .~.
	rar			;; 38b7: 1f          .
	jrnc	L38d1		;; 38b8: 30 17       0.
	rst	3		;; 38ba: df          .
	db	90h
	push	h		;; 38bc: e5          .
	mvi	a,055h		;; 38bd: 3e 55       >U
	push	psw		;; 38bf: f5          .
	rst	3		;; 38c0: df          .
	db	90h
	push	h		;; 38c2: e5          .
	call	L5f05		;; 38c3: cd 05 5f    .._
	push	h		;; 38c6: e5          .
	call	L6475		;; 38c7: cd 75 64    .ud
	rst	3		;; 38ca: df          .
	db	0ch
	lxi	h,L3169		;; 38cc: 21 69 31    .i1
	mvi	m,001h		;; 38cf: 36 01       6.
L38d1:	lxi	h,L1c5a		;; 38d1: 21 5a 1c    .Z.
	mvi	m,000h		;; 38d4: 36 00       6.
L38d6:	jmp	L37fc		;; 38d6: c3 fc 37    ..7

L38d9:	ldx	c,-114		;; 38d9: dd 4e 8e    .N.
	ldx	b,-113		;; 38dc: dd 46 8f    .F.
	rst	3		;; 38df: df          .
	db	90h
	ora	a		;; 38e1: b7          .
	dsbc	b		;; 38e2: ed 42       .B
	jrc	L38f4		;; 38e4: 38 0e       8.
	lhld	L316d		;; 38e6: 2a 6d 31    *m1
	shld	L316b		;; 38e9: 22 6b 31    "k1
	rst	3		;; 38ec: df          .
	db	8eh
	shld	L316d		;; 38ee: 22 6d 31    "m1
	shld	L1789		;; 38f1: 22 89 17    "..
L38f4:	lxi	h,L1d51		;; 38f4: 21 51 1d    .Q.
	mvi	m,000h		;; 38f7: 36 00       6.
	lxi	h,L178b		;; 38f9: 21 8b 17    ...
	mvi	m,000h		;; 38fc: 36 00       6.
	call	L1b50		;; 38fe: cd 50 1b    .P.
	lhld	L1789		;; 3901: 2a 89 17    *..
	push	h		;; 3904: e5          .
	call	L65f5		;; 3905: cd f5 65    ..e
	call	L2c3e		;; 3908: cd 3e 2c    .>,
	lda	L02e8		;; 390b: 3a e8 02    :..
	dcr	a		;; 390e: 3d          =
	push	psw		;; 390f: f5          .
	call	L0953		;; 3910: cd 53 09    .S.
	mvi	a,028h		;; 3913: 3e 28       >(
	push	psw		;; 3915: f5          .
	mvi	a,02dh		;; 3916: 3e 2d       >-
	push	psw		;; 3918: f5          .
	call	L0720		;; 3919: cd 20 07    . .
	call	L0977		;; 391c: cd 77 09    .w.
	lda	L02ea		;; 391f: 3a ea 02    :..
	stx	a,-126		;; 3922: dd 77 82    .w.
L3925:	ldx	a,-126		;; 3925: dd 7e 82    .~.
	lxi	h,L02e9		;; 3928: 21 e9 02    ...
	cmp	m		;; 392b: be          .
	mvi	a,000h		;; 392c: 3e 00       >.
	ral			;; 392e: 17          .
	push	psw		;; 392f: f5          .
	ldx	l,-126		;; 3930: dd 6e 82    .n.
	mvi	h,000h		;; 3933: 26 00       &.
	dad	h		;; 3935: 29          )
	lxi	d,L1cc2		;; 3936: 11 c2 1c    ...
	dad	d		;; 3939: 19          .
	lbcd	L1789		;; 393a: ed 4b 89 17 .K..
	rst	4		;; 393e: e7          .
	db	80h
	ora	a		;; 3940: b7          .
	dsbc	b		;; 3941: ed 42       .B
	call	L8c09		;; 3943: cd 09 8c    ...
	mov	b,a		;; 3946: 47          G
	pop	psw		;; 3947: f1          .
	ana	b		;; 3948: a0          .
	rar			;; 3949: 1f          .
	jrnc	L3955		;; 394a: 30 09       0.
	ldx	a,-126		;; 394c: dd 7e 82    .~.
	inr	a		;; 394f: 3c          <
	stx	a,-126		;; 3950: dd 77 82    .w.
	jr	L3925		;; 3953: 18 d0       ..

L3955:	ldx	a,-126		;; 3955: dd 7e 82    .~.
	push	psw		;; 3958: f5          .
	call	L3773		;; 3959: cd 73 37    .s7
	ldx	a,-126		;; 395c: dd 7e 82    .~.
	push	psw		;; 395f: f5          .
	call	L0953		;; 3960: cd 53 09    .S.
	jmp	L8d56		;; 3963: c3 56 8d    .V.

L3966:	call	L8d27		;; 3966: cd 27 8d    .'.
	db	0ffh,7
	lda	L31ae		;; 396b: 3a ae 31    :.1
	mov	l,a		;; 396e: 6f          o
	mvi	h,000h		;; 396f: 26 00       &.
	dad	h		;; 3971: 29          )
	lxi	d,L3172		;; 3972: 11 72 31    .r1
	dad	d		;; 3975: 19          .
	rst	4		;; 3976: e7          .
	db	80h
	shld	L1789		;; 3978: 22 89 17    "..
	lda	L31ae		;; 397b: 3a ae 31    :.1
	mov	l,a		;; 397e: 6f          o
	mvi	h,000h		;; 397f: 26 00       &.
	lxi	d,L319a		;; 3981: 11 9a 31    ..1
	dad	d		;; 3984: 19          .
	mov	a,m		;; 3985: 7e          ~
	stx	a,-126		;; 3986: dd 77 82    .w.
	lda	L31ae		;; 3989: 3a ae 31    :.1
	dcr	a		;; 398c: 3d          =
	push	psw		;; 398d: f5          .
	mvi	a,014h		;; 398e: 3e 14       >.
	call	L8965		;; 3990: cd 65 89    .e.
	sta	L31ae		;; 3993: 32 ae 31    2.1
	call	L351f		;; 3996: cd 1f 35    ..5
	ldx	a,-126		;; 3999: dd 7e 82    .~.
	push	psw		;; 399c: f5          .
	call	L0953		;; 399d: cd 53 09    .S.
	jmp	L8d56		;; 39a0: c3 56 8d    .V.

L39a3:	call	L8d27		;; 39a3: cd 27 8d    .'.
	db	0,6
	call	L8d60		;; 39a8: cd 60 8d    .`.
	dw	L104c
	push	h		;; 39ad: e5          .
	push	b		;; 39ae: c5          .
	lda	L02e6		;; 39af: 3a e6 02    :..
	mov	c,a		;; 39b2: 4f          O
	mvi	b,000h		;; 39b3: 06 00       ..
	lda	L02e5		;; 39b5: 3a e5 02    :..
	mov	l,a		;; 39b8: 6f          o
	mvi	h,000h		;; 39b9: 26 00       &.
	ora	a		;; 39bb: b7          .
	dsbc	b		;; 39bc: ed 42       .B
	call	L880e		;; 39be: cd 0e 88    ...
	call	L87f6		;; 39c1: cd f6 87    ...
	mov	h,b		;; 39c4: 60          `
	mov	l,c		;; 39c5: 69          i
	shld	L1789		;; 39c6: 22 89 17    "..
	jmp	L8d56		;; 39c9: c3 56 8d    .V.

L39cc:	call	L8d27		;; 39cc: cd 27 8d    .'.
	db	0f7h,0fh
	lda	L3222		;; 39d1: 3a 22 32    :"2
	rar			;; 39d4: 1f          .
	jrnc	L39df		;; 39d5: 30 08       0.
	lhld	L322b		;; 39d7: 2a 2b 32    *+2
	shld	L31af		;; 39da: 22 af 31    ".1
	jr	L3a19		;; 39dd: 18 3a       .:

L39df:	lbcd	L322b		;; 39df: ed 4b 2b 32 .K+2
	lhld	L31af		;; 39e3: 2a af 31    *.1
	ora	a		;; 39e6: b7          .
	dsbc	b		;; 39e7: ed 42       .B
	jrnz	L3a13		;; 39e9: 20 28        (
	lda	L02e2		;; 39eb: 3a e2 02    :..
	lxi	h,L02e5		;; 39ee: 21 e5 02    ...
	cmp	m		;; 39f1: be          .
	jrnc	L3a07		;; 39f2: 30 13       0.
	lda	L02e2		;; 39f4: 3a e2 02    :..
	inr	a		;; 39f7: 3c          <
	mov	l,a		;; 39f8: 6f          o
	mvi	h,000h		;; 39f9: 26 00       &.
	dad	h		;; 39fb: 29          )
	lxi	d,L1cf4		;; 39fc: 11 f4 1c    ...
	dad	d		;; 39ff: 19          .
	rst	4		;; 3a00: e7          .
	db	80h
	shld	L31af		;; 3a02: 22 af 31    ".1
	jr	L3a11		;; 3a05: 18 0a       ..

L3a07:	lxi	b,00002h	;; 3a07: 01 02 00    ...
	lhld	L31af		;; 3a0a: 2a af 31    *.1
	dad	b		;; 3a0d: 09          .
	shld	L31af		;; 3a0e: 22 af 31    ".1
L3a11:	jr	L3a19		;; 3a11: 18 06       ..

L3a13:	lhld	L322b		;; 3a13: 2a 2b 32    *+2
	shld	L31af		;; 3a16: 22 af 31    ".1
L3a19:	lda	L3223		;; 3a19: 3a 23 32    :#2
	rar			;; 3a1c: 1f          .
	jrnc	L3a4a		;; 3a1d: 30 2b       0+
	lxi	h,L3223		;; 3a1f: 21 23 32    .#2
	mvi	m,000h		;; 3a22: 36 00       6.
	lxi	h,00000h	;; 3a24: 21 00 00    ...
	shld	L31af		;; 3a27: 22 af 31    ".1
	lxi	h,00000h	;; 3a2a: 21 00 00    ...
	push	h		;; 3a2d: e5          .
	call	L10d3		;; 3a2e: cd d3 10    ...
	rar			;; 3a31: 1f          .
	jrnc	L3a3a		;; 3a32: 30 06       0.
	call	L115e		;; 3a34: cd 5e 11    .^.
	shld	L31af		;; 3a37: 22 af 31    ".1
L3a3a:	lda	L3222		;; 3a3a: 3a 22 32    :"2
	rar			;; 3a3d: 1f          .
	jrnc	L3a4a		;; 3a3e: 30 0a       0.
	call	L8d60		;; 3a40: cd 60 8d    .`.
	dw	L104c
	mov	h,b		;; 3a45: 60          `
	mov	l,c		;; 3a46: 69          i
	shld	L31af		;; 3a47: 22 af 31    ".1
L3a4a:	lxi	h,L178b		;; 3a4a: 21 8b 17    ...
	mvi	m,001h		;; 3a4d: 36 01       6.
L3a4f:	lda	L3222		;; 3a4f: 3a 22 32    :"2
	rar			;; 3a52: 1f          .
	jrnc	L3a5e		;; 3a53: 30 09       0.
	lhld	L31af		;; 3a55: 2a af 31    *.1
	dcx	h		;; 3a58: 2b          +
	shld	L31af		;; 3a59: 22 af 31    ".1
	jr	L3a65		;; 3a5c: 18 07       ..

L3a5e:	lhld	L31af		;; 3a5e: 2a af 31    *.1
	inx	h		;; 3a61: 23          #
	shld	L31af		;; 3a62: 22 af 31    ".1
L3a65:	mvix	000h,-119	;; 3a65: dd 36 89 00 .6..
	mvix	000h,-118	;; 3a69: dd 36 8a 00 .6..
	call	L322e		;; 3a6d: cd 2e 32    ..2
	rst	3		;; 3a70: df          .
	db	3
L3a72:	lhld	L31af		;; 3a72: 2a af 31    *.1
	push	h		;; 3a75: e5          .
	call	L1355		;; 3a76: cd 55 13    .U.
	lxi	h,L31b1		;; 3a79: 21 b1 31    ..1
	cmp	m		;; 3a7c: be          .
	call	L8c0e		;; 3a7d: cd 0e 8c    ...
	push	psw		;; 3a80: f5          .
	ldx	a,-118		;; 3a81: dd 7e 8a    .~.
	xri	001h		;; 3a84: ee 01       ..
	mov	b,a		;; 3a86: 47          G
	pop	psw		;; 3a87: f1          .
	ana	b		;; 3a88: a0          .
	rar			;; 3a89: 1f          .
	jrnc	L3ad1		;; 3a8a: 30 45       0E
	lda	L3222		;; 3a8c: 3a 22 32    :"2
	rar			;; 3a8f: 1f          .
	jrnc	L3a9b		;; 3a90: 30 09       0.
	lhld	L31af		;; 3a92: 2a af 31    *.1
	dcx	h		;; 3a95: 2b          +
	shld	L31af		;; 3a96: 22 af 31    ".1
	jr	L3aa2		;; 3a99: 18 07       ..

L3a9b:	lhld	L31af		;; 3a9b: 2a af 31    *.1
	inx	h		;; 3a9e: 23          #
	shld	L31af		;; 3a9f: 22 af 31    ".1
L3aa2:	call	L8d60		;; 3aa2: cd 60 8d    .`.
	dw	L104c
	push	h		;; 3aa7: e5          .
	push	b		;; 3aa8: c5          .
	lhld	L31af		;; 3aa9: 2a af 31    *.1
	rst	4		;; 3aac: e7          .
	db	87h
	call	L8890		;; 3aae: cd 90 88    ...
	call	L8c18		;; 3ab1: cd 18 8c    ...
	push	psw		;; 3ab4: f5          .
	lbcd	L31af		;; 3ab5: ed 4b af 31 .K.1
	rst	3		;; 3ab9: df          .
	db	83h
	ora	a		;; 3abb: b7          .
	dsbc	b		;; 3abc: ed 42       .B
	mvi	a,000h		;; 3abe: 3e 00       >.
	cmc			;; 3ac0: 3f          ?
	ral			;; 3ac1: 17          .
	mov	b,a		;; 3ac2: 47          G
	pop	psw		;; 3ac3: f1          .
	ora	b		;; 3ac4: b0          .
	push	psw		;; 3ac5: f5          .
	call	L0496		;; 3ac6: cd 96 04    ...
	mov	b,a		;; 3ac9: 47          G
	pop	psw		;; 3aca: f1          .
	ora	b		;; 3acb: b0          .
	stx	a,-118		;; 3acc: dd 77 8a    .w.
	jr	L3a72		;; 3acf: 18 a1       ..

L3ad1:	lhld	L31af		;; 3ad1: 2a af 31    *.1
	shld	L1787		;; 3ad4: 22 87 17    "..
	call	L1ace		;; 3ad7: cd ce 1a    ...
	ldx	a,-118		;; 3ada: dd 7e 8a    .~.
	xri	001h		;; 3add: ee 01       ..
	rar			;; 3adf: 1f          .
	jrnc	L3b41		;; 3ae0: 30 5f       0_
	mvix	001h,-121	;; 3ae2: dd 36 87 01 .6..
	mvix	001h,-120	;; 3ae6: dd 36 88 01 .6..
	lda	L3220		;; 3aea: 3a 20 32    : 2
	rar			;; 3aed: 1f          .
	jrnc	L3b02		;; 3aee: 30 12       0.
	lhld	L31af		;; 3af0: 2a af 31    *.1
	push	h		;; 3af3: e5          .
	call	L6343		;; 3af4: cd 43 63    .Cc
	lda	L1c0f		;; 3af7: 3a 0f 1c    :..
	cpi	049h		;; 3afa: fe 49       .I
	call	L8c09		;; 3afc: cd 09 8c    ...
	stx	a,-120		;; 3aff: dd 77 88    .w.
L3b02:	ldx	a,-121		;; 3b02: dd 7e 87    .~.
	lxi	h,L31bc		;; 3b05: 21 bc 31    ..1
	cmp	m		;; 3b08: be          .
	mvi	a,000h		;; 3b09: 3e 00       >.
	ral			;; 3b0b: 17          .
	anax	-120		;; 3b0c: dd a6 88    ...
	rar			;; 3b0f: 1f          .
	jrnc	L3b3b		;; 3b10: 30 29       0)
	ldx	a,-121		;; 3b12: dd 7e 87    .~.
	mov	c,a		;; 3b15: 4f          O
	mvi	b,000h		;; 3b16: 06 00       ..
	lhld	L31af		;; 3b18: 2a af 31    *.1
	dad	b		;; 3b1b: 09          .
	push	h		;; 3b1c: e5          .
	call	L1355		;; 3b1d: cd 55 13    .U.
	push	psw		;; 3b20: f5          .
	ldx	l,-121		;; 3b21: dd 6e 87    .n.
	mvi	h,000h		;; 3b24: 26 00       &.
	lxi	d,L31b1		;; 3b26: 11 b1 31    ..1
	dad	d		;; 3b29: 19          .
	pop	psw		;; 3b2a: f1          .
	cmp	m		;; 3b2b: be          .
	call	L8c09		;; 3b2c: cd 09 8c    ...
	stx	a,-120		;; 3b2f: dd 77 88    .w.
	ldx	a,-121		;; 3b32: dd 7e 87    .~.
	inr	a		;; 3b35: 3c          <
	stx	a,-121		;; 3b36: dd 77 87    .w.
	jr	L3b02		;; 3b39: 18 c7       ..

L3b3b:	ldx	a,-120		;; 3b3b: dd 7e 88    .~.
	stx	a,-119		;; 3b3e: dd 77 89    .w.
L3b41:	ldx	a,-119		;; 3b41: dd 7e 89    .~.
	orax	-118		;; 3b44: dd b6 8a    ...
	rar			;; 3b47: 1f          .
	jnc	L3a4f		;; 3b48: d2 4f 3a    .O:
	lhld	L31af		;; 3b4b: 2a af 31    *.1
	push	h		;; 3b4e: e5          .
	call	L6343		;; 3b4f: cd 43 63    .Cc
	lda	L1c0c		;; 3b52: 3a 0c 1c    :..
	cpi	020h		;; 3b55: fe 20       . 
	call	L8c09		;; 3b57: cd 09 8c    ...
	push	psw		;; 3b5a: f5          .
	lda	L1c0f		;; 3b5b: 3a 0f 1c    :..
	cpi	049h		;; 3b5e: fe 49       .I
	call	L8c09		;; 3b60: cd 09 8c    ...
	mov	b,a		;; 3b63: 47          G
	pop	psw		;; 3b64: f1          .
	ana	b		;; 3b65: a0          .
	lxi	h,L31bd		;; 3b66: 21 bd 31    ..1
	ana	m		;; 3b69: a6          .
	push	psw		;; 3b6a: f5          .
	lda	L31bc		;; 3b6b: 3a bc 31    :.1
	cpi	002h		;; 3b6e: fe 02       ..
	call	L8c09		;; 3b70: cd 09 8c    ...
	mov	b,a		;; 3b73: 47          G
	pop	psw		;; 3b74: f1          .
	ana	b		;; 3b75: a0          .
	rar			;; 3b76: 1f          .
	jrnc	L3ba6		;; 3b77: 30 2d       0-
	lhld	L31af		;; 3b79: 2a af 31    *.1
	dcx	h		;; 3b7c: 2b          +
	shld	L31af		;; 3b7d: 22 af 31    ".1
	dcx	h		;; 3b80: 2b          +
	push	h		;; 3b81: e5          .
	call	L1355		;; 3b82: cd 55 13    .U.
	call	L3b93		;; 3b85: cd 93 3b    ..;
L3b88:	lhld	L31af		;; 3b88: 2a af 31    *.1
	dcx	h		;; 3b8b: 2b          +
	shld	L31af		;; 3b8c: 22 af 31    ".1
	jr	L3ba6		;; 3b8f: 18 15       ..

L3b91:	jr	L3ba6		;; 3b91: 18 13       ..

L3b93:	mvi	b,004h		;; 3b93: 06 04       ..
	call	L8ddc		;; 3b95: cd dc 8d    ...
	db 0cbh ! dw L3b88
	db 0ddh ! dw L3b88
	db 0edh ! dw L3b88
	db 0fdh ! dw L3b88
	dw	L3b91
L3ba6:	lhld	L31af		;; 3ba6: 2a af 31    *.1
	shld	L1789		;; 3ba9: 22 89 17    "..
	lxi	h,L178b		;; 3bac: 21 8b 17    ...
	mvi	m,000h		;; 3baf: 36 00       6.
	call	L351f		;; 3bb1: cd 1f 35    ..5
	ldx	a,-119		;; 3bb4: dd 7e 89    .~.
	rar			;; 3bb7: 1f          .
	jrnc	L3c0a		;; 3bb8: 30 50       0P
	mvix	001h,-123	;; 3bba: dd 36 85 01 .6..
	lda	L3221		;; 3bbe: 3a 21 32    :.2
	xri	001h		;; 3bc1: ee 01       ..
	lxi	h,L3224		;; 3bc3: 21 24 32    .$2
	ana	m		;; 3bc6: a6          .
	rar			;; 3bc7: 1f          .
	jrnc	L3bd0		;; 3bc8: 30 06       0.
	call	L2027		;; 3bca: cd 27 20    .' 
	stx	a,-123		;; 3bcd: dd 77 85    .w.
L3bd0:	lda	L321f		;; 3bd0: 3a 1f 32    :.2
	rar			;; 3bd3: 1f          .
	jrnc	L3bdc		;; 3bd4: 30 06       0.
	mvi	a,04ch		;; 3bd6: 3e 4c       >L
	push	psw		;; 3bd8: f5          .
	call	L0466		;; 3bd9: cd 66 04    .f.
L3bdc:	lda	L3224		;; 3bdc: 3a 24 32    :$2
	anax	-123		;; 3bdf: dd a6 85    ...
	rar			;; 3be2: 1f          .
	jrnc	L3c0a		;; 3be3: 30 25       0%
	lda	L321e		;; 3be5: 3a 1e 32    :.2
	mvi	b,001h		;; 3be8: 06 01       ..
	call	L8953		;; 3bea: cd 53 89    .S.
	stx	b,-126		;; 3bed: dd 70 82    .p.
	jrc	L3c0a		;; 3bf0: 38 18       8.
L3bf2:	stx	a,-122		;; 3bf2: dd 77 86    .w.
	mov	l,a		;; 3bf5: 6f          o
	mvi	h,000h		;; 3bf6: 26 00       &.
	lxi	d,L31f5		;; 3bf8: 11 f5 31    ..1
	dad	d		;; 3bfb: 19          .
	mov	a,m		;; 3bfc: 7e          ~
	push	psw		;; 3bfd: f5          .
	call	L0466		;; 3bfe: cd 66 04    .f.
	ldx	a,-122		;; 3c01: dd 7e 86    .~.
	dcr	a		;; 3c04: 3d          =
	dcrx	-126		;; 3c05: dd 35 82    .5.
	jrnz	L3bf2		;; 3c08: 20 e8        .
L3c0a:	jmp	L8d56		;; 3c0a: c3 56 8d    .V.

L3c0d:	call	L8d27		;; 3c0d: cd 27 8d    .'.
	db	0feh,8
	lda	L02e1		;; 3c12: 3a e1 02    :..
	cpi	001h		;; 3c15: fe 01       ..
	jrnz	L3c20		;; 3c17: 20 07        .
	lxi	h,00001h	;; 3c19: 21 01 00    ...
	rst	3		;; 3c1c: df          .
	db	2
	jr	L3c25		;; 3c1e: 18 05       ..

L3c20:	lxi	h,00010h	;; 3c20: 21 10 00    ...
	rst	3		;; 3c23: df          .
	db	2
L3c25:	rst	3		;; 3c25: df          .
	db	82h
	jmp	L8d56		;; 3c27: c3 56 8d    .V.

L3c2a:	call	L8d27		;; 3c2a: cd 27 8d    .'.
	db	0b4h,'X'
	mvix	000h,-117	;; 3c2f: dd 36 8b 00 .6..
L3c33:	call	L1e8e		;; 3c33: cd 8e 1e    ...
	lda	L1c5c		;; 3c36: 3a 5c 1c    :\.
	cpi	020h		;; 3c39: fe 20       . 
	jrnc	L3c66		;; 3c3b: 30 29       0)
	lda	L1c5c		;; 3c3d: 3a 5c 1c    :\.
	cpi	008h		;; 3c40: fe 08       ..
	jrnz	L3c62		;; 3c42: 20 1e        .
	ldx	a,-117		;; 3c44: dd 7e 8b    .~.
	push	psw		;; 3c47: f5          .
	mvi	a,000h		;; 3c48: 3e 00       >.
	pop	b		;; 3c4a: c1          .
	cmp	b		;; 3c4b: b8          .
	jrnc	L3c60		;; 3c4c: 30 12       0.
	lxi	h,0ff8bh	;; 3c4e: 21 8b ff    ...
	rst	2		;; 3c51: d7          .
	push	h		;; 3c52: e5          .
	ldx	a,-117		;; 3c53: dd 7e 8b    .~.
	push	psw		;; 3c56: f5          .
	mvi	a,001h		;; 3c57: 3e 01       >.
	push	psw		;; 3c59: f5          .
	call	L8a48		;; 3c5a: cd 48 8a    .H.
	call	L1eac		;; 3c5d: cd ac 1e    ...
L3c60:	jr	L3c64		;; 3c60: 18 02       ..

L3c62:	jr	L3c8d		;; 3c62: 18 29       .)

L3c64:	jr	L3c87		;; 3c64: 18 21       ..

L3c66:	call	L1e9d		;; 3c66: cd 9d 1e    ...
	ldx	a,-117		;; 3c69: dd 7e 8b    .~.
	cpi	042h		;; 3c6c: fe 42       .B
	jrnc	L3c87		;; 3c6e: 30 17       0.
	lda	L1c5c		;; 3c70: 3a 5c 1c    :\.
	mov	b,a		;; 3c73: 47          G
	mvi	c,001h		;; 3c74: 0e 01       ..
	push	b		;; 3c76: c5          .
	lxi	h,0ff8bh	;; 3c77: 21 8b ff    ...
	rst	2		;; 3c7a: d7          .
	push	h		;; 3c7b: e5          .
	mvi	a,042h		;; 3c7c: 3e 42       >B
	push	psw		;; 3c7e: f5          .
	ldx	a,-117		;; 3c7f: dd 7e 8b    .~.
	inr	a		;; 3c82: 3c          <
	push	psw		;; 3c83: f5          .
	call	L8a7e		;; 3c84: cd 7e 8a    .~.
L3c87:	lda	L02f0		;; 3c87: 3a f0 02    :..
	rar			;; 3c8a: 1f          .
	jrnc	L3c33		;; 3c8b: 30 a6       0.
L3c8d:	call	L0977		;; 3c8d: cd 77 09    .w.
	call	L0965		;; 3c90: cd 65 09    .e.
	lda	L02f0		;; 3c93: 3a f0 02    :..
	xri	001h		;; 3c96: ee 01       ..
	rar			;; 3c98: 1f          .
	jrnc	L3cc0		;; 3c99: 30 25       0%
	rst	3		;; 3c9b: df          .
	db	0d0h
	rst	3		;; 3c9d: df          .
	db	2
	ldx	a,-45		;; 3c9f: dd 7e d3    .~.
	stx	a,-124		;; 3ca2: dd 77 84    .w.
	mvix	000h,-121	;; 3ca5: dd 36 87 00 .6..
	lxi	h,0ff82h	;; 3ca9: 21 82 ff    ...
	rst	2		;; 3cac: d7          .
	push	h		;; 3cad: e5          .
	lxi	h,0ff8bh	;; 3cae: 21 8b ff    ...
	rst	2		;; 3cb1: d7          .
	call	L75ea		;; 3cb2: cd ea 75    ..u
	mvi	a,042h		;; 3cb5: 3e 42       >B
	call	L8bb0		;; 3cb7: cd b0 8b    ...
	rst	3		;; 3cba: df          .
	db	0ceh
	push	h		;; 3cbc: e5          .
	call	L6241		;; 3cbd: cd 41 62    .Ab
L3cc0:	jmp	L8d56		;; 3cc0: c3 56 8d    .V.

L3cc3:	call	L8d27		;; 3cc3: cd 27 8d    .'.
	db	0f9h,'K'
	mvi	a,001h		;; 3cc8: 3e 01       >.
	push	psw		;; 3cca: f5          .
	call	L1ed3		;; 3ccb: cd d3 1e    ...
	ldx	a,-58		;; 3cce: dd 7e c6    .~.
	push	psw		;; 3cd1: f5          .
	call	L0597		;; 3cd2: cd 97 05    ...
	rst	3		;; 3cd5: df          .
	db	0c3h
	push	h		;; 3cd7: e5          .
	call	L5428		;; 3cd8: cd 28 54    .(T
	call	L0799		;; 3cdb: cd 99 07    ...
	lxi	h,0ff8bh	;; 3cde: 21 8b ff    ...
	rst	2		;; 3ce1: d7          .
	call	L75ea		;; 3ce2: cd ea 75    ..u
	mvi	a,037h		;; 3ce5: 3e 37       >7
	call	L8bb0		;; 3ce7: cd b0 8b    ...
	call	L0803		;; 3cea: cd 03 08    ...
	ldx	a,-58		;; 3ced: dd 7e c6    .~.
	push	psw		;; 3cf0: f5          .
	rst	3		;; 3cf1: df          .
	db	0c3h
	push	h		;; 3cf3: e5          .
	rst	3		;; 3cf4: df          .
	db	89h
	push	h		;; 3cf6: e5          .
	call	L3c2a		;; 3cf7: cd 2a 3c    .*<
	jmp	L8d56		;; 3cfa: c3 56 8d    .V.

L3cfd:	call	L8d27		;; 3cfd: cd 27 8d    .'.
	db	0feh,8
	lda	L02e3		;; 3d02: 3a e3 02    :..
	inr	a		;; 3d05: 3c          <
	push	psw		;; 3d06: f5          .
	mvi	a,005h		;; 3d07: 3e 05       >.
	push	psw		;; 3d09: f5          .
	call	L0889		;; 3d0a: cd 89 08    ...
	mvi	a,004h		;; 3d0d: 3e 04       >.
	push	psw		;; 3d0f: f5          .
	call	L1762		;; 3d10: cd 62 17    .b.
	mvix	001h,-126	;; 3d13: dd 36 82 01 .6..
	lxi	h,L321f		;; 3d17: 21 1f 32    ..2
	mvi	m,000h		;; 3d1a: 36 00       6.
	lxi	h,L3220		;; 3d1c: 21 20 32    . 2
	mvi	m,000h		;; 3d1f: 36 00       6.
	lxi	h,L3221		;; 3d21: 21 21 32    ..2
	mvi	m,000h		;; 3d24: 36 00       6.
	lxi	h,L3222		;; 3d26: 21 22 32    ."2
	mvi	m,000h		;; 3d29: 36 00       6.
	lxi	h,L3223		;; 3d2b: 21 23 32    .#2
	mvi	m,000h		;; 3d2e: 36 00       6.
L3d30:	lda	L02f0		;; 3d30: 3a f0 02    :..
	xri	001h		;; 3d33: ee 01       ..
	anax	-126		;; 3d35: dd a6 82    ...
	rar			;; 3d38: 1f          .
	jrnc	L3da6		;; 3d39: 30 6b       0k
	call	L1e8e		;; 3d3b: cd 8e 1e    ...
	mvix	001h,-125	;; 3d3e: dd 36 83 01 .6..
	lda	L1c5c		;; 3d42: 3a 5c 1c    :\.
	push	psw		;; 3d45: f5          .
	call	L1de9		;; 3d46: cd e9 1d    ...
	call	L3d85		;; 3d49: cd 85 3d    ..=
L3d4c:	lxi	h,L321f		;; 3d4c: 21 1f 32    ..2
	mvi	m,001h		;; 3d4f: 36 01       6.
	jr	L3d9b		;; 3d51: 18 48       .H

L3d53:	lxi	h,L3220		;; 3d53: 21 20 32    . 2
	mvi	m,001h		;; 3d56: 36 01       6.
	jr	L3d9b		;; 3d58: 18 41       .A

L3d5a:	lxi	h,L3221		;; 3d5a: 21 21 32    ..2
	mvi	m,001h		;; 3d5d: 36 01       6.
	jr	L3d9b		;; 3d5f: 18 3a       .:

L3d61:	lxi	h,L3222		;; 3d61: 21 22 32    ."2
	mvi	m,001h		;; 3d64: 36 01       6.
	jr	L3d9b		;; 3d66: 18 33       .3

L3d68:	lxi	h,L3223		;; 3d68: 21 23 32    .#2
	mvi	m,001h		;; 3d6b: 36 01       6.
	jr	L3d9b		;; 3d6d: 18 2c       .,

L3d6f:	mvix	000h,-125	;; 3d6f: dd 36 83 00 .6..
	lda	L1c5c		;; 3d73: 3a 5c 1c    :\.
	cpi	00dh		;; 3d76: fe 0d       ..
	jrnz	L3d80		;; 3d78: 20 06        .
	mvix	000h,-126	;; 3d7a: dd 36 82 00 .6..
	jr	L3d83		;; 3d7e: 18 03       ..

L3d80:	call	L0a8f		;; 3d80: cd 8f 0a    ...
L3d83:	jr	L3d9b		;; 3d83: 18 16       ..

L3d85:	mvi	b,005h		;; 3d85: 06 05       ..
	call	L8ddc		;; 3d87: cd dc 8d    ...
	db 'B' ! dw L3d61
	db 'G' ! dw L3d4c
	db 'I' ! dw L3d53
	db 'N' ! dw L3d5a
	db 'S' ! dw L3d68
	dw	L3d6f
L3d9b:	ldx	a,-125		;; 3d9b: dd 7e 83    .~.
	rar			;; 3d9e: 1f          .
	jrnc	L3da4		;; 3d9f: 30 03       0.
	call	L1e9d		;; 3da1: cd 9d 1e    ...
L3da4:	jr	L3d30		;; 3da4: 18 8a       ..

L3da6:	call	L0977		;; 3da6: cd 77 09    .w.
	call	L0965		;; 3da9: cd 65 09    .e.
	jmp	L8d56		;; 3dac: c3 56 8d    .V.

L3daf:	call	L8d27		;; 3daf: cd 27 8d    .'.
	db	0,6
	lda	L31bc		;; 3db4: 3a bc 31    :.1
	mov	l,a		;; 3db7: 6f          o
	mvi	h,000h		;; 3db8: 26 00       &.
	lxi	d,L31b1		;; 3dba: 11 b1 31    ..1
	dad	d		;; 3dbd: 19          .
	push	h		;; 3dbe: e5          .
	rst	4		;; 3dbf: e7          .
	db	8ah
	ldy	l,-123		;; 3dc1: fd 6e 85    .n.
	ldy	h,-122		;; 3dc4: fd 66 86    .f.
	mvi	h,000h		;; 3dc7: 26 00       &.
	mov	a,l		;; 3dc9: 7d          }
	pop	h		;; 3dca: e1          .
	mov	m,a		;; 3dcb: 77          w
	lda	L31bc		;; 3dcc: 3a bc 31    :.1
	cpi	00ah		;; 3dcf: fe 0a       ..
	jrnc	L3dda		;; 3dd1: 30 07       0.
	lda	L31bc		;; 3dd3: 3a bc 31    :.1
	inr	a		;; 3dd6: 3c          <
	sta	L31bc		;; 3dd7: 32 bc 31    2.1
L3dda:	lxi	h,L31bd		;; 3dda: 21 bd 31    ..1
	mvi	m,000h		;; 3ddd: 36 00       6.
	mvi	a,002h		;; 3ddf: 3e 02       >.
	rst	4		;; 3de1: e7          .
	db	8ah
	cmpy	-121		;; 3de3: fd be 87    ...
	jrnc	L3e11		;; 3de6: 30 29       0)
	lda	L31bc		;; 3de8: 3a bc 31    :.1
	mov	l,a		;; 3deb: 6f          o
	mvi	h,000h		;; 3dec: 26 00       &.
	lxi	d,L31b1		;; 3dee: 11 b1 31    ..1
	dad	d		;; 3df1: 19          .
	push	h		;; 3df2: e5          .
	rst	4		;; 3df3: e7          .
	db	8ah
	ldy	l,-123		;; 3df5: fd 6e 85    .n.
	ldy	h,-122		;; 3df8: fd 66 86    .f.
	mov	a,h		;; 3dfb: 7c          |
	pop	h		;; 3dfc: e1          .
	mov	m,a		;; 3dfd: 77          w
	lda	L31bc		;; 3dfe: 3a bc 31    :.1
	cpi	00ah		;; 3e01: fe 0a       ..
	jrnc	L3e0c		;; 3e03: 30 07       0.
	lda	L31bc		;; 3e05: 3a bc 31    :.1
	inr	a		;; 3e08: 3c          <
	sta	L31bc		;; 3e09: 32 bc 31    2.1
L3e0c:	lxi	h,L31bd		;; 3e0c: 21 bd 31    ..1
	mvi	m,001h		;; 3e0f: 36 01       6.
L3e11:	rst	4		;; 3e11: e7          .
	db	8ah
	mviy	000h,-121	;; 3e13: fd 36 87 00 .6..
	lxi	h,00000h	;; 3e17: 21 00 00    ...
	rst	4		;; 3e1a: e7          .
	db	8ah
	sty	l,-123		;; 3e1c: fd 75 85    .u.
	sty	h,-122		;; 3e1f: fd 74 86    .t.
	jmp	L8d56		;; 3e22: c3 56 8d    .V.

L3e25:	call	L8d27		;; 3e25: cd 27 8d    .'.
	db	0fah,0ch
	lxi	h,L31bc		;; 3e2a: 21 bc 31    ..1
	mvi	m,000h		;; 3e2d: 36 00       6.
	mvix	000h,-125	;; 3e2f: dd 36 83 00 .6..
	mvix	002h,-126	;; 3e33: dd 36 82 02 .6..
	lda	L1785		;; 3e37: 3a 85 17    :..
	cpi	041h		;; 3e3a: fe 41       .A
	jrnz	L3e42		;; 3e3c: 20 04        .
	mvix	003h,-126	;; 3e3e: dd 36 82 03 .6..
L3e42:	ldx	a,-126		;; 3e42: dd 7e 82    .~.
	push	psw		;; 3e45: f5          .
	call	L1ed3		;; 3e46: cd d3 1e    ...
	mvi	a,005h		;; 3e49: 3e 05       >.
	push	psw		;; 3e4b: f5          .
	call	L1762		;; 3e4c: cd 62 17    .b.
	lxi	h,00000h	;; 3e4f: 21 00 00    ...
	rst	3		;; 3e52: df          .
	db	5
	mvix	000h,-121	;; 3e54: dd 36 87 00 .6..
	mvix	001h,-124	;; 3e58: dd 36 84 01 .6..
L3e5c:	lda	L02f0		;; 3e5c: 3a f0 02    :..
	xri	001h		;; 3e5f: ee 01       ..
	anax	-124		;; 3e61: dd a6 84    ...
	rar			;; 3e64: 1f          .
	jnc	L3f2a		;; 3e65: d2 2a 3f    .*?
	call	L1e8e		;; 3e68: cd 8e 1e    ...
	ldx	a,-125		;; 3e6b: dd 7e 83    .~.
	rar			;; 3e6e: 1f          .
	jrnc	L3eae		;; 3e6f: 30 3d       0=
	lda	L1c5c		;; 3e71: 3a 5c 1c    :\.
	cpi	020h		;; 3e74: fe 20       . 
	jrc	L3e9b		;; 3e76: 38 23       8#
	call	L1e9d		;; 3e78: cd 9d 1e    ...
	lda	L31bc		;; 3e7b: 3a bc 31    :.1
	mov	l,a		;; 3e7e: 6f          o
	mvi	h,000h		;; 3e7f: 26 00       &.
	lxi	d,L31b1		;; 3e81: 11 b1 31    ..1
	dad	d		;; 3e84: 19          .
	push	h		;; 3e85: e5          .
	lda	L1c5c		;; 3e86: 3a 5c 1c    :\.
	pop	h		;; 3e89: e1          .
	mov	m,a		;; 3e8a: 77          w
	lda	L31bc		;; 3e8b: 3a bc 31    :.1
	cpi	00ah		;; 3e8e: fe 0a       ..
	jrnc	L3e99		;; 3e90: 30 07       0.
	lda	L31bc		;; 3e92: 3a bc 31    :.1
	inr	a		;; 3e95: 3c          <
	sta	L31bc		;; 3e96: 32 bc 31    2.1
L3e99:	jr	L3eab		;; 3e99: 18 10       ..

L3e9b:	lda	L1c5c		;; 3e9b: 3a 5c 1c    :\.
	cpi	00dh		;; 3e9e: fe 0d       ..
	jrnz	L3ea8		;; 3ea0: 20 06        .
	mvix	000h,-124	;; 3ea2: dd 36 84 00 .6..
	jr	L3eab		;; 3ea6: 18 03       ..

L3ea8:	call	L0a8f		;; 3ea8: cd 8f 0a    ...
L3eab:	jmp	L3f27		;; 3eab: c3 27 3f    .'?

L3eae:	lda	L1c5c		;; 3eae: 3a 5c 1c    :\.
	push	psw		;; 3eb1: f5          .
	lxi	h,L1c5d		;; 3eb2: 21 5d 1c    .].
	push	h		;; 3eb5: e5          .
	call	L19c8		;; 3eb6: cd c8 19    ...
	rar			;; 3eb9: 1f          .
	jrnc	L3ee0		;; 3eba: 30 24       0$
	ldx	a,-121		;; 3ebc: dd 7e 87    .~.
	inr	a		;; 3ebf: 3c          <
	stx	a,-121		;; 3ec0: dd 77 87    .w.
	call	L1e9d		;; 3ec3: cd 9d 1e    ...
	rst	3		;; 3ec6: df          .
	db	85h
	push	h		;; 3ec8: e5          .
	lxi	h,00010h	;; 3ec9: 21 10 00    ...
	call	L87b7		;; 3ecc: cd b7 87    ...
	push	h		;; 3ecf: e5          .
	push	b		;; 3ed0: c5          .
	lda	L1c5d		;; 3ed1: 3a 5d 1c    :].
	call	L8807		;; 3ed4: cd 07 88    ...
	call	L87e7		;; 3ed7: cd e7 87    ...
	mov	h,b		;; 3eda: 60          `
	mov	l,c		;; 3edb: 69          i
	rst	3		;; 3edc: df          .
	db	5
	jr	L3f27		;; 3ede: 18 47       .G

L3ee0:	lda	L1c5c		;; 3ee0: 3a 5c 1c    :\.
	call	L3f17		;; 3ee3: cd 17 3f    ..?
L3ee6:	rst	4		;; 3ee6: e7          .
	db	82h
	call	L3daf		;; 3ee8: cd af 3d    ..=
	mvix	000h,-124	;; 3eeb: dd 36 84 00 .6..
	jr	L3f27		;; 3eef: 18 36       .6

L3ef1:	call	L0799		;; 3ef1: cd 99 07    ...
	rst	4		;; 3ef4: e7          .
	db	82h
	call	L3daf		;; 3ef6: cd af 3d    ..=
	jr	L3f27		;; 3ef9: 18 2c       .,

L3efb:	ldx	a,-121		;; 3efb: dd 7e 87    .~.
	ora	a		;; 3efe: b7          .
	jrnz	L3f0d		;; 3eff: 20 0c        .
	mvi	a,027h		;; 3f01: 3e 27       >'
	push	psw		;; 3f03: f5          .
	call	L0597		;; 3f04: cd 97 05    ...
	mvix	001h,-125	;; 3f07: dd 36 83 01 .6..
	jr	L3f10		;; 3f0b: 18 03       ..

L3f0d:	call	L0a8f		;; 3f0d: cd 8f 0a    ...
L3f10:	jr	L3f27		;; 3f10: 18 15       ..

L3f12:	call	L0a8f		;; 3f12: cd 8f 0a    ...
	jr	L3f27		;; 3f15: 18 10       ..

L3f17:	mvi	b,003h		;; 3f17: 06 03       ..
	call	L8ddc		;; 3f19: cd dc 8d    ...
	db 0dh ! dw L3ee6
	db ' ' ! dw L3ef1
	db '''' ! dw L3efb
	dw	L3f12
L3f27:	jmp	L3e5c		;; 3f27: c3 5c 3e    .\>

L3f2a:	call	L0977		;; 3f2a: cd 77 09    .w.
	call	L0965		;; 3f2d: cd 65 09    .e.
	jmp	L8d56		;; 3f30: c3 56 8d    .V.

L3f33:	call	L8d27		;; 3f33: cd 27 8d    .'.
	db	0fdh,9
	lda	L02e3		;; 3f38: 3a e3 02    :..
	inr	a		;; 3f3b: 3c          <
	push	psw		;; 3f3c: f5          .
	mvi	a,005h		;; 3f3d: 3e 05       >.
	push	psw		;; 3f3f: f5          .
	call	L0889		;; 3f40: cd 89 08    ...
	mvi	a,006h		;; 3f43: 3e 06       >.
	push	psw		;; 3f45: f5          .
	call	L1762		;; 3f46: cd 62 17    .b.
	mvix	001h,-125	;; 3f49: dd 36 83 01 .6..
	lxi	h,L321e		;; 3f4d: 21 1e 32    ..2
	mvi	m,000h		;; 3f50: 36 00       6.
L3f52:	lda	L02f0		;; 3f52: 3a f0 02    :..
	xri	001h		;; 3f55: ee 01       ..
	anax	-125		;; 3f57: dd a6 83    ...
	rar			;; 3f5a: 1f          .
	jrnc	L3fb8		;; 3f5b: 30 5b       0[
	call	L1e8e		;; 3f5d: cd 8e 1e    ...
	lda	L1c5c		;; 3f60: 3a 5c 1c    :\.
	cpi	020h		;; 3f63: fe 20       . 
	jrnc	L3f93		;; 3f65: 30 2c       0,
	lda	L1c5c		;; 3f67: 3a 5c 1c    :\.
	cpi	00eh		;; 3f6a: fe 0e       ..
	jrnz	L3f81		;; 3f6c: 20 13        .
	mvi	a,05eh		;; 3f6e: 3e 5e       >^
	push	psw		;; 3f70: f5          .
	call	L0597		;; 3f71: cd 97 05    ...
	mvi	a,04eh		;; 3f74: 3e 4e       >N
	push	psw		;; 3f76: f5          .
	call	L0597		;; 3f77: cd 97 05    ...
	lxi	h,L1c5c		;; 3f7a: 21 5c 1c    .\.
	mvi	m,00dh		;; 3f7d: 36 0d       6.
	jr	L3f96		;; 3f7f: 18 15       ..

L3f81:	lda	L1c5c		;; 3f81: 3a 5c 1c    :\.
	cpi	00dh		;; 3f84: fe 0d       ..
	jrnz	L3f8e		;; 3f86: 20 06        .
	mvix	000h,-125	;; 3f88: dd 36 83 00 .6..
	jr	L3f91		;; 3f8c: 18 03       ..

L3f8e:	call	L0a8f		;; 3f8e: cd 8f 0a    ...
L3f91:	jr	L3fb6		;; 3f91: 18 23       .#

L3f93:	call	L1e9d		;; 3f93: cd 9d 1e    ...
L3f96:	lda	L321e		;; 3f96: 3a 1e 32    :.2
	cpi	028h		;; 3f99: fe 28       .(
	jrnc	L3fb3		;; 3f9b: 30 16       0.
	lda	L321e		;; 3f9d: 3a 1e 32    :.2
	inr	a		;; 3fa0: 3c          <
	sta	L321e		;; 3fa1: 32 1e 32    2.2
	mov	l,a		;; 3fa4: 6f          o
	mvi	h,000h		;; 3fa5: 26 00       &.
	lxi	d,L31f5		;; 3fa7: 11 f5 31    ..1
	dad	d		;; 3faa: 19          .
	push	h		;; 3fab: e5          .
	lda	L1c5c		;; 3fac: 3a 5c 1c    :\.
	pop	h		;; 3faf: e1          .
	mov	m,a		;; 3fb0: 77          w
	jr	L3fb6		;; 3fb1: 18 03       ..

L3fb3:	call	L0a8f		;; 3fb3: cd 8f 0a    ...
L3fb6:	jr	L3f52		;; 3fb6: 18 9a       ..

L3fb8:	call	L0977		;; 3fb8: cd 77 09    .w.
	call	L0965		;; 3fbb: cd 65 09    .e.
	jmp	L8d56		;; 3fbe: c3 56 8d    .V.

L3fc1:	call	L8d27		;; 3fc1: cd 27 8d    .'.
	db	0ffh,9
	ldx	a,-124		;; 3fc6: dd 7e 84    .~.
	push	psw		;; 3fc9: f5          .
	call	L75c9		;; 3fca: cd c9 75    ..u
	db	8,0,0,0,0,0,80h,0,8
	call	L7450		;; 3fd6: cd 50 74    .Pt
	call	L8c0e		;; 3fd9: cd 0e 8c    ...
	stx	a,-126		;; 3fdc: dd 77 82    .w.
	jmp	L8d56		;; 3fdf: c3 56 8d    .V.

L3fe2:	call	L8d27		;; 3fe2: cd 27 8d    .'.
	db	0fbh,0bh
	lhld	L322b		;; 3fe7: 2a 2b 32    *+2
	rst	3		;; 3fea: df          .
	db	5
	lda	L02e3		;; 3fec: 3a e3 02    :..
	mov	l,a		;; 3fef: 6f          o
	mvi	h,000h		;; 3ff0: 26 00       &.
	dad	h		;; 3ff2: 29          )
	lxi	d,L1c90		;; 3ff3: 11 90 1c    ...
	dad	d		;; 3ff6: 19          .
	rst	4		;; 3ff7: e7          .
	db	80h
	push	h		;; 3ff9: e5          .
	call	L6760		;; 3ffa: cd 60 67    .`g
	lda	L1d40		;; 3ffd: 3a 40 1d    :@.
	xri	001h		;; 4000: ee 01       ..
	rar			;; 4002: 1f          .
	jrnc	L4016		;; 4003: 30 11       0.
	lda	L02e3		;; 4005: 3a e3 02    :..
	mov	l,a		;; 4008: 6f          o
	mvi	h,000h		;; 4009: 26 00       &.
	dad	h		;; 400b: 29          )
	lxi	d,L1c5e		;; 400c: 11 5e 1c    .^.
	dad	d		;; 400f: 19          .
	rst	4		;; 4010: e7          .
	db	80h
	push	h		;; 4012: e5          .
	call	L6760		;; 4013: cd 60 67    .`g
L4016:	lda	L1d40		;; 4016: 3a 40 1d    :@.
	xri	001h		;; 4019: ee 01       ..
	rar			;; 401b: 1f          .
	jrnc	L4028		;; 401c: 30 0a       0.
	rst	3		;; 401e: df          .
	db	85h
	push	h		;; 4020: e5          .
	call	L5e78		;; 4021: cd 78 5e    .x^
	push	h		;; 4024: e5          .
	call	L6760		;; 4025: cd 60 67    .`g
L4028:	lda	L1d40		;; 4028: 3a 40 1d    :@.
	rar			;; 402b: 1f          .
	jnc	L40fd		;; 402c: d2 fd 40    ..@
	lhld	L1d43		;; 402f: 2a 43 1d    *C.
	rst	3		;; 4032: df          .
	db	3
	lda	L1d45		;; 4034: 3a 45 1d    :E.
	stx	a,-126		;; 4037: dd 77 82    .w.
	lda	L1785		;; 403a: 3a 85 17    :..
	call	L40e1		;; 403d: cd e1 40    ..@
L4040:	ldx	c,-123		;; 4040: dd 4e 85    .N.
	ldx	b,-122		;; 4043: dd 46 86    .F.
	rst	3		;; 4046: df          .
	db	83h
	ora	a		;; 4048: b7          .
	dsbc	b		;; 4049: ed 42       .B
	jrz	L4050		;; 404b: 28 03       (.
	jmp	L40fd		;; 404d: c3 fd 40    ..@

L4050:	jmp	L40f7		;; 4050: c3 f7 40    ..@

L4053:	ldx	c,-123		;; 4053: dd 4e 85    .N.
	ldx	b,-122		;; 4056: dd 46 86    .F.
	rst	3		;; 4059: df          .
	db	83h
	ora	a		;; 405b: b7          .
	dsbc	b		;; 405c: ed 42       .B
	call	L8c0e		;; 405e: cd 0e 8c    ...
	push	psw		;; 4061: f5          .
	ldx	a,-126		;; 4062: dd 7e 82    .~.
	ora	a		;; 4065: b7          .
	call	L8c09		;; 4066: cd 09 8c    ...
	mov	b,a		;; 4069: 47          G
	pop	psw		;; 406a: f1          .
	ana	b		;; 406b: a0          .
	rar			;; 406c: 1f          .
	jrnc	L4072		;; 406d: 30 03       0.
	jmp	L40fd		;; 406f: c3 fd 40    ..@

L4072:	jmp	L40f7		;; 4072: c3 f7 40    ..@

L4075:	ldx	c,-123		;; 4075: dd 4e 85    .N.
	ldx	b,-122		;; 4078: dd 46 86    .F.
	rst	3		;; 407b: df          .
	db	83h
	ora	a		;; 407d: b7          .
	dsbc	b		;; 407e: ed 42       .B
	call	L8c0e		;; 4080: cd 0e 8c    ...
	push	psw		;; 4083: f5          .
	lda	L1d46		;; 4084: 3a 46 1d    :F.
	cpi	055h		;; 4087: fe 55       .U
	call	L8c09		;; 4089: cd 09 8c    ...
	mov	b,a		;; 408c: 47          G
	pop	psw		;; 408d: f1          .
	ana	b		;; 408e: a0          .
	push	psw		;; 408f: f5          .
	ldx	a,-126		;; 4090: dd 7e 82    .~.
	ora	a		;; 4093: b7          .
	call	L8c09		;; 4094: cd 09 8c    ...
	mov	b,a		;; 4097: 47          G
	pop	psw		;; 4098: f1          .
	ana	b		;; 4099: a0          .
	rar			;; 409a: 1f          .
	jrnc	L409f		;; 409b: 30 02       0.
	jr	L40fd		;; 409d: 18 5e       .^

L409f:	jr	L40f7		;; 409f: 18 56       .V

L40a1:	ldx	c,-123		;; 40a1: dd 4e 85    .N.
	ldx	b,-122		;; 40a4: dd 46 86    .F.
	rst	3		;; 40a7: df          .
	db	83h
	ora	a		;; 40a9: b7          .
	dsbc	b		;; 40aa: ed 42       .B
	call	L8c0e		;; 40ac: cd 0e 8c    ...
	push	psw		;; 40af: f5          .
	ldx	a,-126		;; 40b0: dd 7e 82    .~.
	ora	a		;; 40b3: b7          .
	call	L8c0e		;; 40b4: cd 0e 8c    ...
	mov	b,a		;; 40b7: 47          G
	pop	psw		;; 40b8: f1          .
	ana	b		;; 40b9: a0          .
	rar			;; 40ba: 1f          .
	jrnc	L40bf		;; 40bb: 30 02       0.
	jr	L40fd		;; 40bd: 18 3e       .>

L40bf:	jr	L40f7		;; 40bf: 18 36       .6

L40c1:	ldx	c,-123		;; 40c1: dd 4e 85    .N.
	ldx	b,-122		;; 40c4: dd 46 86    .F.
	rst	3		;; 40c7: df          .
	db	83h
	ora	a		;; 40c9: b7          .
	dsbc	b		;; 40ca: ed 42       .B
	call	L8c0e		;; 40cc: cd 0e 8c    ...
	push	psw		;; 40cf: f5          .
	ldx	a,-126		;; 40d0: dd 7e 82    .~.
	push	psw		;; 40d3: f5          .
	call	L3fc1		;; 40d4: cd c1 3f    ..?
	mov	b,a		;; 40d7: 47          G
	pop	psw		;; 40d8: f1          .
	ana	b		;; 40d9: a0          .
	rar			;; 40da: 1f          .
	jrnc	L40df		;; 40db: 30 02       0.
	jr	L40fd		;; 40dd: 18 1e       ..

L40df:	jr	L40f7		;; 40df: 18 16       ..

L40e1:	mvi	b,005h		;; 40e1: 06 05       ..
	call	L8ddc		;; 40e3: cd dc 8d    ...
	db ';' ! dw L40c1
	db 'B' ! dw L4053
	db 'S' ! dw L40a1
	db 'T' ! dw L4040
	db 'U' ! dw L4075
	dw	L8e06
L40f7:	call	L67a6		;; 40f7: cd a6 67    ..g
	jmp	L4028		;; 40fa: c3 28 40    .(@

L40fd:	lda	L1d40		;; 40fd: 3a 40 1d    :@.
	xri	001h		;; 4100: ee 01       ..
	rar			;; 4102: 1f          .
	jrnc	L410a		;; 4103: 30 05       0.
	call	L39a3		;; 4105: cd a3 39    ..9
	jr	L4110		;; 4108: 18 06       ..

L410a:	lhld	L1d43		;; 410a: 2a 43 1d    *C.
	shld	L1789		;; 410d: 22 89 17    "..
L4110:	call	L351f		;; 4110: cd 1f 35    ..5
	jmp	L8d56		;; 4113: c3 56 8d    .V.

L4116:	call	L8d27		;; 4116: cd 27 8d    .'.
	db	0feh,8
	call	L1e41		;; 411b: cd 41 1e    .A.
	lda	L1785		;; 411e: 3a 85 17    :..
	call	L41d4		;; 4121: cd d4 41    ..A
L4124:	call	L3fe2		;; 4124: cd e2 3f    ..?
	jmp	L4208		;; 4127: c3 08 42    ..B

L412a:	call	L322e		;; 412a: cd 2e 32    ..2
	shld	L1789		;; 412d: 22 89 17    "..
	call	L351f		;; 4130: cd 1f 35    ..5
	jmp	L4208		;; 4133: c3 08 42    ..B

L4136:	call	L39a3		;; 4136: cd a3 39    ..9
	call	L351f		;; 4139: cd 1f 35    ..5
	jmp	L4208		;; 413c: c3 08 42    ..B

L413f:	call	L3966		;; 413f: cd 66 39    .f9
	jmp	L4208		;; 4142: c3 08 42    ..B

L4145:	call	L3e25		;; 4145: cd 25 3e    .%>
	lxi	h,L3224		;; 4148: 21 24 32    .$2
	mvi	m,000h		;; 414b: 36 00       6.
	lda	L1785		;; 414d: 3a 85 17    :..
	cpi	041h		;; 4150: fe 41       .A
	jrnz	L415c		;; 4152: 20 08        .
	lxi	h,L3224		;; 4154: 21 24 32    .$2
	mvi	m,001h		;; 4157: 36 01       6.
	call	L3f33		;; 4159: cd 33 3f    .3?
L415c:	call	L3cfd		;; 415c: cd fd 3c    ..<
	call	L39cc		;; 415f: cd cc 39    ..9
	mvi	a,020h		;; 4162: 3e 20       > 
	push	psw		;; 4164: f5          .
	call	L50de		;; 4165: cd de 50    ..P
	call	L1dda		;; 4168: cd da 1d    ...
	jmp	L4208		;; 416b: c3 08 42    ..B

L416e:	lhld	L322b		;; 416e: 2a 2b 32    *+2
	rst	3		;; 4171: df          .
	db	2
	lda	L1785		;; 4173: 3a 85 17    :..
	cpi	049h		;; 4176: fe 49       .I
	jrnz	L4189		;; 4178: 20 0f        .
	lda	L02e3		;; 417a: 3a e3 02    :..
	mov	l,a		;; 417d: 6f          o
	mvi	h,000h		;; 417e: 26 00       &.
	dad	h		;; 4180: 29          )
	lxi	d,L1cc2		;; 4181: 11 c2 1c    ...
	dad	d		;; 4184: 19          .
	rst	4		;; 4185: e7          .
	db	80h
	rst	3		;; 4187: df          .
	db	2
L4189:	rst	3		;; 4189: df          .
	db	82h
	mvi	h,000h		;; 418b: 26 00       &.
	mov	a,l		;; 418d: 7d          }
	sta	L31b1		;; 418e: 32 b1 31    2.1
	rst	3		;; 4191: df          .
	db	82h
	mov	a,h		;; 4193: 7c          |
	sta	L31b2		;; 4194: 32 b2 31    2.1
	lxi	h,L31bd		;; 4197: 21 bd 31    ..1
	mvi	m,001h		;; 419a: 36 01       6.
	lxi	h,L31bc		;; 419c: 21 bc 31    ..1
	mvi	m,002h		;; 419f: 36 02       6.
	mvi	a,001h		;; 41a1: 3e 01       >.
	push	psw		;; 41a3: f5          .
	call	L1ed3		;; 41a4: cd d3 1e    ...
	call	L3cfd		;; 41a7: cd fd 3c    ..<
	call	L39cc		;; 41aa: cd cc 39    ..9
	jr	L4208		;; 41ad: 18 59       .Y

L41af:	lda	L02e6		;; 41af: 3a e6 02    :..
	push	psw		;; 41b2: f5          .
	call	L0953		;; 41b3: cd 53 09    .S.
	lda	L02e3		;; 41b6: 3a e3 02    :..
	lxi	h,L1d56		;; 41b9: 21 56 1d    .V.
	cmp	m		;; 41bc: be          .
	jrnc	L41c2		;; 41bd: 30 03       0.
	call	L2c3e		;; 41bf: cd 3e 2c    .>,
L41c2:	jr	L4208		;; 41c2: 18 44       .D

L41c4:	lda	L02e5		;; 41c4: 3a e5 02    :..
	push	psw		;; 41c7: f5          .
	call	L0953		;; 41c8: cd 53 09    .S.
	jr	L4208		;; 41cb: 18 3b       .;

L41cd:	jr	L4208		;; 41cd: 18 39       .9

L41cf:	call	L0a8f		;; 41cf: cd 8f 0a    ...
	jr	L4208		;; 41d2: 18 34       .4

L41d4:	mvi	b,00fh		;; 41d4: 06 0f       ..
	call	L8ddc		;; 41d6: cd dc 8d    ...
	db ' ' ! dw L41cd
	db ';' ! dw L4124
	db 'A' ! dw L4145
	db 'B' ! dw L4124
	db 'C' ! dw L4136
	db 'E' ! dw L41af
	db 'F' ! dw L4145
	db 'I' ! dw L416e
	db 'L' ! dw L416e
	db 'R' ! dw L412a
	db 'S' ! dw L4124
	db 'T' ! dw L4124
	db 'U' ! dw L4124
	db 'V' ! dw L413f
	db 'X' ! dw L41c4
	dw	L41cf
L4208:	jmp	L8d56		;; 4208: c3 56 8d    .V.

L420b:	call	L8d27		;; 420b: cd 27 8d    .'.
	db	0,6
	lda	L31ae		;; 4210: 3a ae 31    :.1
	inr	a		;; 4213: 3c          <
	push	psw		;; 4214: f5          .
	mvi	a,014h		;; 4215: 3e 14       >.
	call	L8965		;; 4217: cd 65 89    .e.
	sta	L31ae		;; 421a: 32 ae 31    2.1
	mov	l,a		;; 421d: 6f          o
	mvi	h,000h		;; 421e: 26 00       &.
	dad	h		;; 4220: 29          )
	lxi	d,L3172		;; 4221: 11 72 31    .r1
	dad	d		;; 4224: 19          .
	push	h		;; 4225: e5          .
	lhld	L1789		;; 4226: 2a 89 17    *..
	rst	4		;; 4229: e7          .
	db	81h
	lda	L31ae		;; 422b: 3a ae 31    :.1
	mov	l,a		;; 422e: 6f          o
	mvi	h,000h		;; 422f: 26 00       &.
	lxi	d,L319a		;; 4231: 11 9a 31    ..1
	dad	d		;; 4234: 19          .
	push	h		;; 4235: e5          .
	lda	L02e3		;; 4236: 3a e3 02    :..
	pop	h		;; 4239: e1          .
	mov	m,a		;; 423a: 77          w
	jmp	L8d56		;; 423b: c3 56 8d    .V.

L423e:	call	L8d27		;; 423e: cd 27 8d    .'.
	db	0fch,0ah
	lda	L02e3		;; 4243: 3a e3 02    :..
	mov	l,a		;; 4246: 6f          o
	mvi	h,000h		;; 4247: 26 00       &.
	dad	h		;; 4249: 29          )
	lxi	d,L1c90		;; 424a: 11 90 1c    ...
	dad	d		;; 424d: 19          .
	rst	4		;; 424e: e7          .
	db	80h
	rst	3		;; 4250: df          .
	db	4
	lda	L02e3		;; 4252: 3a e3 02    :..
	mov	l,a		;; 4255: 6f          o
	mvi	h,000h		;; 4256: 26 00       &.
	dad	h		;; 4258: 29          )
	lxi	d,L1c5e		;; 4259: 11 5e 1c    .^.
	dad	d		;; 425c: 19          .
	rst	4		;; 425d: e7          .
	db	80h
	rst	3		;; 425f: df          .
	db	2
	rst	3		;; 4261: df          .
	db	84h
	mov	a,h		;; 4263: 7c          |
	ora	l		;; 4264: b5          .
	jrnz	L427d		;; 4265: 20 16        .
	rst	3		;; 4267: df          .
	db	82h
	rst	3		;; 4269: df          .
	db	4
	lda	L02e3		;; 426b: 3a e3 02    :..
	mov	l,a		;; 426e: 6f          o
	mvi	h,000h		;; 426f: 26 00       &.
	dad	h		;; 4271: 29          )
	lxi	d,L1c5e		;; 4272: 11 5e 1c    .^.
	dad	d		;; 4275: 19          .
	mvi	m,000h		;; 4276: 36 00       6.
	inx	h		;; 4278: 23          #
	mvi	m,000h		;; 4279: 36 00       6.
	jr	L42b2		;; 427b: 18 35       .5

L427d:	lda	L02e3		;; 427d: 3a e3 02    :..
	mov	l,a		;; 4280: 6f          o
	mvi	h,000h		;; 4281: 26 00       &.
	dad	h		;; 4283: 29          )
	lxi	d,L1c90		;; 4284: 11 90 1c    ...
	dad	d		;; 4287: 19          .
	mvi	m,000h		;; 4288: 36 00       6.
	inx	h		;; 428a: 23          #
	mvi	m,000h		;; 428b: 36 00       6.
	rst	3		;; 428d: df          .
	db	82h
	mov	a,h		;; 428f: 7c          |
	ora	l		;; 4290: b5          .
	jrz	L42b2		;; 4291: 28 1f       (.
	lda	L02e3		;; 4293: 3a e3 02    :..
	mov	l,a		;; 4296: 6f          o
	mvi	h,000h		;; 4297: 26 00       &.
	dad	h		;; 4299: 29          )
	lxi	d,L1c5e		;; 429a: 11 5e 1c    .^.
	dad	d		;; 429d: 19          .
	push	h		;; 429e: e5          .
	rst	3		;; 429f: df          .
	db	82h
	rst	4		;; 42a1: e7          .
	db	87h
	push	h		;; 42a3: e5          .
	push	b		;; 42a4: c5          .
	lxi	b,00006h	;; 42a5: 01 06 00    ...
	lxi	h,00000h	;; 42a8: 21 00 00    ...
	call	L87f6		;; 42ab: cd f6 87    ...
	mov	h,b		;; 42ae: 60          `
	mov	l,c		;; 42af: 69          i
	rst	4		;; 42b0: e7          .
	db	81h
L42b2:	rst	3		;; 42b2: df          .
	db	84h
	push	h		;; 42b4: e5          .
	call	L6760		;; 42b5: cd 60 67    .`g
	lda	L1d40		;; 42b8: 3a 40 1d    :@.
	xri	001h		;; 42bb: ee 01       ..
	push	psw		;; 42bd: f5          .
	lbcd	L1d43		;; 42be: ed 4b 43 1d .KC.
	lhld	L322b		;; 42c2: 2a 2b 32    *+2
	ora	a		;; 42c5: b7          .
	dsbc	b		;; 42c6: ed 42       .B
	mvi	a,000h		;; 42c8: 3e 00       >.
	ral			;; 42ca: 17          .
	mov	b,a		;; 42cb: 47          G
	pop	psw		;; 42cc: f1          .
	ora	b		;; 42cd: b0          .
	rar			;; 42ce: 1f          .
	jrnc	L42d6		;; 42cf: 30 05       0.
	call	L0a8f		;; 42d1: cd 8f 0a    ...
	jr	L42e3		;; 42d4: 18 0d       ..

L42d6:	rst	3		;; 42d6: df          .
	db	84h
	push	h		;; 42d8: e5          .
	call	L657c		;; 42d9: cd 7c 65    .|e
	lda	L02e2		;; 42dc: 3a e2 02    :..
	push	psw		;; 42df: f5          .
	call	L2bcc		;; 42e0: cd cc 2b    ..+
L42e3:	jmp	L8d56		;; 42e3: c3 56 8d    .V.

L42e6:	call	L8d27		;; 42e6: cd 27 8d    .'.
	db	0feh,8
	lxi	h,00000h	;; 42eb: 21 00 00    ...
	push	h		;; 42ee: e5          .
	call	L5e78		;; 42ef: cd 78 5e    .x^
	push	h		;; 42f2: e5          .
	call	L6760		;; 42f3: cd 60 67    .`g
L42f6:	lda	L1d40		;; 42f6: 3a 40 1d    :@.
	rar			;; 42f9: 1f          .
	jrnc	L433c		;; 42fa: 30 40       0@
	lda	L1d45		;; 42fc: 3a 45 1d    :E.
	ora	a		;; 42ff: b7          .
	call	L8c0e		;; 4300: cd 0e 8c    ...
	push	psw		;; 4303: f5          .
	lda	L1d45		;; 4304: 3a 45 1d    :E.
	push	psw		;; 4307: f5          .
	call	L3fc1		;; 4308: cd c1 3f    ..?
	xri	001h		;; 430b: ee 01       ..
	mov	b,a		;; 430d: 47          G
	pop	psw		;; 430e: f1          .
	ana	b		;; 430f: a0          .
	push	psw		;; 4310: f5          .
	lhld	L1d46		;; 4311: 2a 46 1d    *F.
	mov	a,h		;; 4314: 7c          |
	ora	l		;; 4315: b5          .
	call	L8c09		;; 4316: cd 09 8c    ...
	mov	b,a		;; 4319: 47          G
	pop	psw		;; 431a: f1          .
	ana	b		;; 431b: a0          .
	rar			;; 431c: 1f          .
	jrnc	L4337		;; 431d: 30 18       0.
	lhld	L1d43		;; 431f: 2a 43 1d    *C.
	rst	3		;; 4322: df          .
	db	2
	lhld	L1d41		;; 4324: 2a 41 1d    *A.
	push	h		;; 4327: e5          .
	call	L657c		;; 4328: cd 7c 65    .|e
	rst	3		;; 432b: df          .
	db	82h
	push	h		;; 432d: e5          .
	call	L5e78		;; 432e: cd 78 5e    .x^
	push	h		;; 4331: e5          .
	call	L6760		;; 4332: cd 60 67    .`g
	jr	L433a		;; 4335: 18 03       ..

L4337:	call	L67a6		;; 4337: cd a6 67    ..g
L433a:	jr	L42f6		;; 433a: 18 ba       ..

L433c:	jmp	L8d56		;; 433c: c3 56 8d    .V.

L433f:	call	L8d27		;; 433f: cd 27 8d    .'.
	db	0feh,8
	lda	L02e3		;; 4344: 3a e3 02    :..
	mov	l,a		;; 4347: 6f          o
	mvi	h,000h		;; 4348: 26 00       &.
	dad	h		;; 434a: 29          )
	lxi	d,L1c5e		;; 434b: 11 5e 1c    .^.
	dad	d		;; 434e: 19          .
	rst	4		;; 434f: e7          .
	db	80h
	rst	3		;; 4351: df          .
	db	2
	mov	a,h		;; 4353: 7c          |
	ora	l		;; 4354: b5          .
	jrnz	L435c		;; 4355: 20 05        .
	call	L0a8f		;; 4357: cd 8f 0a    ...
	jr	L439c		;; 435a: 18 40       .@

L435c:	rst	3		;; 435c: df          .
	db	82h
	push	h		;; 435e: e5          .
	call	L6760		;; 435f: cd 60 67    .`g
	lda	L1d40		;; 4362: 3a 40 1d    :@.
	xri	001h		;; 4365: ee 01       ..
	push	psw		;; 4367: f5          .
	lda	L1d45		;; 4368: 3a 45 1d    :E.
	ora	a		;; 436b: b7          .
	call	L8c09		;; 436c: cd 09 8c    ...
	mov	b,a		;; 436f: 47          G
	pop	psw		;; 4370: f1          .
	ora	b		;; 4371: b0          .
	rar			;; 4372: 1f          .
	jrnc	L437a		;; 4373: 30 05       0.
	call	L0a8f		;; 4375: cd 8f 0a    ...
	jr	L439c		;; 4378: 18 22       ."

L437a:	call	L1e41		;; 437a: cd 41 1e    .A.
	lda	L1785		;; 437d: 3a 85 17    :..
	sta	L1d48		;; 4380: 32 48 1d    2H.
	lda	L1785		;; 4383: 3a 85 17    :..
	cpi	020h		;; 4386: fe 20       . 
	jrz	L4395		;; 4388: 28 0b       (.
	lhld	L1d41		;; 438a: 2a 41 1d    *A.
	push	h		;; 438d: e5          .
	lxi	h,L1d43		;; 438e: 21 43 1d    .C.
	push	h		;; 4391: e5          .
	call	L5e33		;; 4392: cd 33 5e    .3^
L4395:	lda	L02e3		;; 4395: 3a e3 02    :..
	push	psw		;; 4398: f5          .
	call	L2bcc		;; 4399: cd cc 2b    ..+
L439c:	jmp	L8d56		;; 439c: c3 56 8d    .V.

L439f:	call	L8d27		;; 439f: cd 27 8d    .'.
	db	0c4h,'B'
	mvi	a,009h		;; 43a4: 3e 09       >.
	push	psw		;; 43a6: f5          .
	lxi	h,0ff85h	;; 43a7: 21 85 ff    ...
	rst	2		;; 43aa: d7          .
	push	h		;; 43ab: e5          .
	call	L16bd		;; 43ac: cd bd 16    ...
	call	L1e41		;; 43af: cd 41 1e    .A.
	lda	L1785		;; 43b2: 3a 85 17    :..
	call	L44bc		;; 43b5: cd bc 44    ..D
L43b8:	lda	L1785		;; 43b8: 3a 85 17    :..
	stx	a,-122		;; 43bb: dd 77 86    .w.
	lhld	L322b		;; 43be: 2a 2b 32    *+2
	rst	3		;; 43c1: df          .
	db	3
	lda	L02e3		;; 43c3: 3a e3 02    :..
	push	psw		;; 43c6: f5          .
	call	L329a		;; 43c7: cd 9a 32    ..2
	push	h		;; 43ca: e5          .
	call	L6760		;; 43cb: cd 60 67    .`g
	lda	L1785		;; 43ce: 3a 85 17    :..
	push	psw		;; 43d1: f5          .
	rst	3		;; 43d2: df          .
	db	83h
	push	h		;; 43d4: e5          .
	lxi	h,0ff85h	;; 43d5: 21 85 ff    ...
	rst	2		;; 43d8: d7          .
	call	L75ea		;; 43d9: cd ea 75    ..u
	mvi	a,037h		;; 43dc: 3e 37       >7
	call	L8bb0		;; 43de: cd b0 8b    ...
	lhld	L1d41		;; 43e1: 2a 41 1d    *A.
	push	h		;; 43e4: e5          .
	call	L3cc3		;; 43e5: cd c3 3c    ..<
	call	L1e32		;; 43e8: cd 32 1e    .2.
	lda	L1d40		;; 43eb: 3a 40 1d    :@.
	xri	001h		;; 43ee: ee 01       ..
	rar			;; 43f0: 1f          .
	jrnc	L4400		;; 43f1: 30 0d       0.
	lxi	h,00000h	;; 43f3: 21 00 00    ...
	push	h		;; 43f6: e5          .
	call	L5e78		;; 43f7: cd 78 5e    .x^
	push	h		;; 43fa: e5          .
	call	L6760		;; 43fb: cd 60 67    .`g
	jr	L4403		;; 43fe: 18 03       ..

L4400:	call	L67a6		;; 4400: cd a6 67    ..g
L4403:	lda	L02e3		;; 4403: 3a e3 02    :..
	mov	l,a		;; 4406: 6f          o
	mvi	h,000h		;; 4407: 26 00       &.
	dad	h		;; 4409: 29          )
	lxi	d,L1c5e		;; 440a: 11 5e 1c    .^.
	dad	d		;; 440d: 19          .
	push	h		;; 440e: e5          .
	lhld	L1d41		;; 440f: 2a 41 1d    *A.
	rst	4		;; 4412: e7          .
	db	81h
	lda	L02e3		;; 4414: 3a e3 02    :..
	push	psw		;; 4417: f5          .
	call	L2bcc		;; 4418: cd cc 2b    ..+
	jmp	L44e4		;; 441b: c3 e4 44    ..D

L441e:	lda	L02e3		;; 441e: 3a e3 02    :..
	mov	l,a		;; 4421: 6f          o
	mvi	h,000h		;; 4422: 26 00       &.
	lxi	d,L1d26		;; 4424: 11 26 1d    .&.
	dad	d		;; 4427: 19          .
	mov	a,m		;; 4428: 7e          ~
	stx	a,-67		;; 4429: dd 77 bd    .w.
	cpi	020h		;; 442c: fe 20       . 
	jrnz	L4434		;; 442e: 20 04        .
	mvix	04ch,-67	;; 4430: dd 36 bd 4c .6.L
L4434:	ldx	a,-67		;; 4434: dd 7e bd    .~.
	stx	a,-122		;; 4437: dd 77 86    .w.
	lda	L02e3		;; 443a: 3a e3 02    :..
	stx	a,-126		;; 443d: dd 77 82    .w.
	mov	l,a		;; 4440: 6f          o
	mvi	h,000h		;; 4441: 26 00       &.
	dad	h		;; 4443: 29          )
	lxi	d,L1cc2		;; 4444: 11 c2 1c    ...
	dad	d		;; 4447: 19          .
	rst	4		;; 4448: e7          .
	db	80h
	rst	3		;; 444a: df          .
	db	3
	push	h		;; 444c: e5          .
	call	L5f05		;; 444d: cd 05 5f    .._
	push	h		;; 4450: e5          .
	call	L6760		;; 4451: cd 60 67    .`g
	ldx	a,-67		;; 4454: dd 7e bd    .~.
	push	psw		;; 4457: f5          .
	rst	3		;; 4458: df          .
	db	83h
	push	h		;; 445a: e5          .
	lxi	h,0ff85h	;; 445b: 21 85 ff    ...
	rst	2		;; 445e: d7          .
	call	L75ea		;; 445f: cd ea 75    ..u
	mvi	a,037h		;; 4462: 3e 37       >7
	call	L8bb0		;; 4464: cd b0 8b    ...
	lhld	L1d41		;; 4467: 2a 41 1d    *A.
	push	h		;; 446a: e5          .
	call	L3cc3		;; 446b: cd c3 3c    ..<
	lbcd	L1789		;; 446e: ed 4b 89 17 .K..
	rst	3		;; 4472: df          .
	db	83h
	ora	a		;; 4474: b7          .
	dsbc	b		;; 4475: ed 42       .B
	mvi	a,000h		;; 4477: 3e 00       >.
	cmc			;; 4479: 3f          ?
	ral			;; 447a: 17          .
	push	psw		;; 447b: f5          .
	ldx	c,-125		;; 447c: dd 4e 83    .N.
	ldx	b,-124		;; 447f: dd 46 84    .F.
	lhld	L1787		;; 4482: 2a 87 17    *..
	ora	a		;; 4485: b7          .
	dsbc	b		;; 4486: ed 42       .B
	mvi	a,000h		;; 4488: 3e 00       >.
	cmc			;; 448a: 3f          ?
	ral			;; 448b: 17          .
	mov	b,a		;; 448c: 47          G
	pop	psw		;; 448d: f1          .
	ana	b		;; 448e: a0          .
	rar			;; 448f: 1f          .
	jrnc	L4498		;; 4490: 30 06       0.
	lda	L02e6		;; 4492: 3a e6 02    :..
	stx	a,-126		;; 4495: dd 77 82    .w.
L4498:	ldx	a,-126		;; 4498: dd 7e 82    .~.
	push	psw		;; 449b: f5          .
	call	L2bcc		;; 449c: cd cc 2b    ..+
	jr	L44e4		;; 449f: 18 43       .C

L44a1:	call	L42e6		;; 44a1: cd e6 42    ..B
	call	L2c3e		;; 44a4: cd 3e 2c    .>,
	call	L1dda		;; 44a7: cd da 1d    ...
	jr	L44e4		;; 44aa: 18 38       .8

L44ac:	lhld	L322b		;; 44ac: 2a 2b 32    *+2
	push	h		;; 44af: e5          .
	call	L37c0		;; 44b0: cd c0 37    ..7
	jr	L44e4		;; 44b3: 18 2f       ./

L44b5:	jr	L44e4		;; 44b5: 18 2d       .-

L44b7:	call	L0a8f		;; 44b7: cd 8f 0a    ...
	jr	L44e4		;; 44ba: 18 28       .(

L44bc:	mvi	b,00bh		;; 44bc: 06 0b       ..
	call	L8ddc		;; 44be: cd dc 8d    ...
	db ' ' ! dw L44b5
	db '?' ! dw L43b8
	db 'A' ! dw L44ac
	db 'B' ! dw L43b8
	db 'C' ! dw L43b8
	db 'I' ! dw L441e
	db 'L' ! dw L43b8
	db 'R' ! dw L43b8
	db 'T' ! dw L43b8
	db 'W' ! dw L43b8
	db 'Y' ! dw L44a1
	dw	L44b7
L44e4:	lda	L1785		;; 44e4: 3a 85 17    :..
	cpi	041h		;; 44e7: fe 41       .A
	jrz	L44f1		;; 44e9: 28 06       (.
	mvi	a,020h		;; 44eb: 3e 20       > 
	push	psw		;; 44ed: f5          .
	call	L50de		;; 44ee: cd de 50    ..P
L44f1:	jmp	L8d56		;; 44f1: c3 56 8d    .V.

L44f4:	call	L8d27		;; 44f4: cd 27 8d    .'.
	db	0f8h,0eh
	lda	L02e3		;; 44f9: 3a e3 02    :..
	stx	a,-125		;; 44fc: dd 77 83    .w.
	stx	a,-124		;; 44ff: dd 77 84    .w.
	mov	l,a		;; 4502: 6f          o
	mvi	h,000h		;; 4503: 26 00       &.
	dad	h		;; 4505: 29          )
	lxi	d,L1cf4		;; 4506: 11 f4 1c    ...
	dad	d		;; 4509: 19          .
	rst	4		;; 450a: e7          .
	db	80h
	rst	3		;; 450c: df          .
	db	6
	lda	L1786		;; 450e: 3a 86 17    :..
	cpi	02fh		;; 4511: fe 2f       ./
	jrnz	L4540		;; 4513: 20 2b        +
	lda	L02e3		;; 4515: 3a e3 02    :..
	lxi	h,L02e5		;; 4518: 21 e5 02    ...
	cmp	m		;; 451b: be          .
	jrnc	L4527		;; 451c: 30 09       0.
	ldx	a,-124		;; 451e: dd 7e 84    .~.
	inr	a		;; 4521: 3c          <
	stx	a,-124		;; 4522: dd 77 84    .w.
	jr	L452a		;; 4525: 18 03       ..

L4527:	call	L0a8f		;; 4527: cd 8f 0a    ...
L452a:	ldx	l,-124		;; 452a: dd 6e 84    .n.
	mvi	h,000h		;; 452d: 26 00       &.
	dad	h		;; 452f: 29          )
	lxi	d,L1cf4		;; 4530: 11 f4 1c    ...
	dad	d		;; 4533: 19          .
	rst	4		;; 4534: e7          .
	db	80h
	rst	3		;; 4536: df          .
	db	6
	push	h		;; 4538: e5          .
	call	L5f05		;; 4539: cd 05 5f    .._
	rst	3		;; 453c: df          .
	db	8
	jr	L454f		;; 453e: 18 0f       ..

L4540:	call	L0965		;; 4540: cd 65 09    .e.
	call	L0977		;; 4543: cd 77 09    .w.
	ldx	a,-124		;; 4546: dd 7e 84    .~.
	push	psw		;; 4549: f5          .
	call	L329a		;; 454a: cd 9a 32    ..2
	rst	3		;; 454d: df          .
	db	8
L454f:	lda	L0193		;; 454f: 3a 93 01    :..
	stx	a,-126		;; 4552: dd 77 82    .w.
	lda	L1786		;; 4555: 3a 86 17    :..
	cpi	03bh		;; 4558: fe 3b       .;
	jrnz	L45bd		;; 455a: 20 61        a
	lda	L02e3		;; 455c: 3a e3 02    :..
	lxi	h,L02e5		;; 455f: 21 e5 02    ...
	cmp	m		;; 4562: be          .
	jrnc	L45b7		;; 4563: 30 52       0R
	lda	L02e3		;; 4565: 3a e3 02    :..
	inr	a		;; 4568: 3c          <
	stx	a,-123		;; 4569: dd 77 85    .w.
	mov	l,a		;; 456c: 6f          o
	mvi	h,000h		;; 456d: 26 00       &.
	dad	h		;; 456f: 29          )
	lxi	d,L1cf4		;; 4570: 11 f4 1c    ...
	dad	d		;; 4573: 19          .
	push	h		;; 4574: e5          .
	lhld	L322b		;; 4575: 2a 2b 32    *+2
	rst	4		;; 4578: e7          .
	db	81h
	ldx	l,-123		;; 457a: dd 6e 85    .n.
	mvi	h,000h		;; 457d: 26 00       &.
	dad	h		;; 457f: 29          )
	lxi	d,L1c90		;; 4580: 11 90 1c    ...
	dad	d		;; 4583: 19          .
	push	h		;; 4584: e5          .
	lda	L02e3		;; 4585: 3a e3 02    :..
	mov	l,a		;; 4588: 6f          o
	mvi	h,000h		;; 4589: 26 00       &.
	dad	h		;; 458b: 29          )
	lxi	d,L1c90		;; 458c: 11 90 1c    ...
	dad	d		;; 458f: 19          .
	pop	d		;; 4590: d1          .
	ldi			;; 4591: ed a0       ..
	ldi			;; 4593: ed a0       ..
	ldx	l,-123		;; 4595: dd 6e 85    .n.
	mvi	h,000h		;; 4598: 26 00       &.
	dad	h		;; 459a: 29          )
	lxi	d,L1c5e		;; 459b: 11 5e 1c    .^.
	dad	d		;; 459e: 19          .
	push	h		;; 459f: e5          .
	lda	L02e3		;; 45a0: 3a e3 02    :..
	mov	l,a		;; 45a3: 6f          o
	mvi	h,000h		;; 45a4: 26 00       &.
	dad	h		;; 45a6: 29          )
	lxi	d,L1c5e		;; 45a7: 11 5e 1c    .^.
	dad	d		;; 45aa: 19          .
	pop	d		;; 45ab: d1          .
	ldi			;; 45ac: ed a0       ..
	ldi			;; 45ae: ed a0       ..
	ldx	a,-123		;; 45b0: dd 7e 85    .~.
	push	psw		;; 45b3: f5          .
	call	L29df		;; 45b4: cd df 29    ..)
L45b7:	lda	L018f		;; 45b7: 3a 8f 01    :..
	stx	a,-126		;; 45ba: dd 77 82    .w.
L45bd:	lda	L02e2		;; 45bd: 3a e2 02    :..
	push	psw		;; 45c0: f5          .
	ldx	a,-126		;; 45c1: dd 7e 82    .~.
	push	psw		;; 45c4: f5          .
	call	L0889		;; 45c5: cd 89 08    ...
	mvi	a,03bh		;; 45c8: 3e 3b       >;
	push	psw		;; 45ca: f5          .
	call	L0597		;; 45cb: cd 97 05    ...
	lda	L1786		;; 45ce: 3a 86 17    :..
	push	psw		;; 45d1: f5          .
	rst	3		;; 45d2: df          .
	db	86h
	push	h		;; 45d4: e5          .
	rst	3		;; 45d5: df          .
	db	88h
	push	h		;; 45d7: e5          .
	call	L3c2a		;; 45d8: cd 2a 3c    .*<
	call	L1b50		;; 45db: cd 50 1b    .P.
	ldx	a,-125		;; 45de: dd 7e 83    .~.
	push	psw		;; 45e1: f5          .
	call	L2bcc		;; 45e2: cd cc 2b    ..+
	call	L1e32		;; 45e5: cd 32 1e    .2.
	mvi	a,058h		;; 45e8: 3e 58       >X
	push	psw		;; 45ea: f5          .
	call	L0466		;; 45eb: cd 66 04    .f.
	jmp	L8d56		;; 45ee: c3 56 8d    .V.

L45f1:	call	L8d27		;; 45f1: cd 27 8d    .'.
	db	0,6
	lda	L02ea		;; 45f6: 3a ea 02    :..
	dcr	a		;; 45f9: 3d          =
	sta	L02e9		;; 45fa: 32 e9 02    2..
	adi	002h		;; 45fd: c6 02       ..
	sta	L02e8		;; 45ff: 32 e8 02    2..
	mvi	a,002h		;; 4602: 3e 02       >.
	push	psw		;; 4604: f5          .
	call	L1d5d		;; 4605: cd 5d 1d    .].
	jmp	L8d56		;; 4608: c3 56 8d    .V.

L460b:	call	L8d27		;; 460b: cd 27 8d    .'.
	db	0fah,0ch
	lxi	h,L1d56		;; 4610: 21 56 1d    .V.
	mvi	m,000h		;; 4613: 36 00       6.
	lda	L1785		;; 4615: 3a 85 17    :..
	cpi	050h		;; 4618: fe 50       .P
	jrnz	L4621		;; 461a: 20 05        .
	lxi	h,L1785		;; 461c: 21 85 17    ...
	mvi	m,053h		;; 461f: 36 53       6S
L4621:	lda	L1785		;; 4621: 3a 85 17    :..
	sta	L1d3f		;; 4624: 32 3f 1d    2?.
	call	L1dda		;; 4627: cd da 1d    ...
	lhld	L1789		;; 462a: 2a 89 17    *..
	push	h		;; 462d: e5          .
	call	L602a		;; 462e: cd 2a 60    .*`
	push	h		;; 4631: e5          .
	call	L6760		;; 4632: cd 60 67    .`g
	lda	L1d40		;; 4635: 3a 40 1d    :@.
	xri	001h		;; 4638: ee 01       ..
	rar			;; 463a: 1f          .
	jrnc	L4648		;; 463b: 30 0b       0.
	lxi	h,00000h	;; 463d: 21 00 00    ...
	push	h		;; 4640: e5          .
	call	L5e78		;; 4641: cd 78 5e    .x^
	push	h		;; 4644: e5          .
	call	L6760		;; 4645: cd 60 67    .`g
L4648:	mvix	000h,-121	;; 4648: dd 36 87 00 .6..
	ldx	a,-121		;; 464c: dd 7e 87    .~.
	stx	a,-122		;; 464f: dd 77 86    .w.
L4652:	lda	L1d40		;; 4652: 3a 40 1d    :@.
	rar			;; 4655: 1f          .
	jnc	L47d2		;; 4656: d2 d2 47    ..G
	lhld	L1d43		;; 4659: 2a 43 1d    *C.
	rst	3		;; 465c: df          .
	db	2
	lda	L02ee		;; 465e: 3a ee 02    :..
	ora	a		;; 4661: b7          .
	jrnz	L467a		;; 4662: 20 16        .
	rst	3		;; 4664: df          .
	db	82h
	shld	L1787		;; 4666: 22 87 17    "..
	lda	L02e3		;; 4669: 3a e3 02    :..
	mov	l,a		;; 466c: 6f          o
	mvi	h,000h		;; 466d: 26 00       &.
	dad	h		;; 466f: 29          )
	lxi	d,L1cf4		;; 4670: 11 f4 1c    ...
	dad	d		;; 4673: 19          .
	push	h		;; 4674: e5          .
	lhld	L1787		;; 4675: 2a 87 17    *..
	rst	4		;; 4678: e7          .
	db	81h
L467a:	lda	L1d45		;; 467a: 3a 45 1d    :E.
	ora	a		;; 467d: b7          .
	jrnz	L46d5		;; 467e: 20 55        U
	lda	L1785		;; 4680: 3a 85 17    :..
	cpi	042h		;; 4683: fe 42       .B
	call	L8c09		;; 4685: cd 09 8c    ...
	push	psw		;; 4688: f5          .
	lda	L1785		;; 4689: 3a 85 17    :..
	cpi	054h		;; 468c: fe 54       .T
	call	L8c09		;; 468e: cd 09 8c    ...
	mov	b,a		;; 4691: 47          G
	pop	psw		;; 4692: f1          .
	ora	b		;; 4693: b0          .
	rar			;; 4694: 1f          .
	jrnc	L46d2		;; 4695: 30 3b       0;
	lda	L02ee		;; 4697: 3a ee 02    :..
	ora	a		;; 469a: b7          .
	jrnz	L46ae		;; 469b: 20 11        .
	lda	L02e3		;; 469d: 3a e3 02    :..
	mov	l,a		;; 46a0: 6f          o
	mvi	h,000h		;; 46a1: 26 00       &.
	dad	h		;; 46a3: 29          )
	lxi	d,L1c90		;; 46a4: 11 90 1c    ...
	dad	d		;; 46a7: 19          .
	push	h		;; 46a8: e5          .
	lhld	L1d41		;; 46a9: 2a 41 1d    *A.
	rst	4		;; 46ac: e7          .
	db	81h
L46ae:	lxi	h,L1d43		;; 46ae: 21 43 1d    .C.
	push	h		;; 46b1: e5          .
	call	L6273		;; 46b2: cd 73 62    .sb
	call	L0799		;; 46b5: cd 99 07    ...
	call	L0799		;; 46b8: cd 99 07    ...
	rst	3		;; 46bb: df          .
	db	82h
	push	h		;; 46bd: e5          .
	call	L5428		;; 46be: cd 28 54    .(T
	lda	L1d46		;; 46c1: 3a 46 1d    :F.
	cpi	04fh		;; 46c4: fe 4f       .O
	jrnz	L46d2		;; 46c6: 20 0a        .
	call	L0799		;; 46c8: cd 99 07    ...
	lhld	L1d47		;; 46cb: 2a 47 1d    *G.
	push	h		;; 46ce: e5          .
	call	L5428		;; 46cf: cd 28 54    .(T
L46d2:	jmp	L475a		;; 46d2: c3 5a 47    .ZG

L46d5:	lda	L1785		;; 46d5: 3a 85 17    :..
	cpi	053h		;; 46d8: fe 53       .S
	call	L8c09		;; 46da: cd 09 8c    ...
	push	psw		;; 46dd: f5          .
	lda	L1d45		;; 46de: 3a 45 1d    :E.
	push	psw		;; 46e1: f5          .
	call	L3fc1		;; 46e2: cd c1 3f    ..?
	xri	001h		;; 46e5: ee 01       ..
	mov	b,a		;; 46e7: 47          G
	pop	psw		;; 46e8: f1          .
	ana	b		;; 46e9: a0          .
	push	psw		;; 46ea: f5          .
	lda	L1785		;; 46eb: 3a 85 17    :..
	cpi	03bh		;; 46ee: fe 3b       .;
	call	L8c09		;; 46f0: cd 09 8c    ...
	push	psw		;; 46f3: f5          .
	lda	L1d45		;; 46f4: 3a 45 1d    :E.
	push	psw		;; 46f7: f5          .
	call	L3fc1		;; 46f8: cd c1 3f    ..?
	mov	b,a		;; 46fb: 47          G
	pop	psw		;; 46fc: f1          .
	ana	b		;; 46fd: a0          .
	mov	b,a		;; 46fe: 47          G
	pop	psw		;; 46ff: f1          .
	ora	b		;; 4700: b0          .
	push	psw		;; 4701: f5          .
	lda	L1785		;; 4702: 3a 85 17    :..
	cpi	054h		;; 4705: fe 54       .T
	call	L8c09		;; 4707: cd 09 8c    ...
	mov	b,a		;; 470a: 47          G
	pop	psw		;; 470b: f1          .
	ora	b		;; 470c: b0          .
	rar			;; 470d: 1f          .
	jrnc	L475a		;; 470e: 30 4a       0J
	lda	L02ee		;; 4710: 3a ee 02    :..
	ora	a		;; 4713: b7          .
	jrnz	L4727		;; 4714: 20 11        .
	lda	L02e3		;; 4716: 3a e3 02    :..
	mov	l,a		;; 4719: 6f          o
	mvi	h,000h		;; 471a: 26 00       &.
	dad	h		;; 471c: 29          )
	lxi	d,L1c5e		;; 471d: 11 5e 1c    .^.
	dad	d		;; 4720: 19          .
	push	h		;; 4721: e5          .
	lhld	L1d41		;; 4722: 2a 41 1d    *A.
	rst	4		;; 4725: e7          .
	db	81h
L4727:	mvi	a,004h		;; 4727: 3e 04       >.
	push	psw		;; 4729: f5          .
	call	L0771		;; 472a: cd 71 07    .q.
	lda	L1d45		;; 472d: 3a 45 1d    :E.
	push	psw		;; 4730: f5          .
	call	L0597		;; 4731: cd 97 05    ...
	rst	3		;; 4734: df          .
	db	82h
	push	h		;; 4736: e5          .
	call	L5428		;; 4737: cd 28 54    .(T
	lda	L1d48		;; 473a: 3a 48 1d    :H.
	ora	a		;; 473d: b7          .
	jrz	L474d		;; 473e: 28 0d       (.
	mvi	a,02ch		;; 4740: 3e 2c       >,
	push	psw		;; 4742: f5          .
	call	L0597		;; 4743: cd 97 05    ...
	lda	L1d48		;; 4746: 3a 48 1d    :H.
	push	psw		;; 4749: f5          .
	call	L0597		;; 474a: cd 97 05    ...
L474d:	call	L0799		;; 474d: cd 99 07    ...
	lxi	h,L1d43		;; 4750: 21 43 1d    .C.
	push	h		;; 4753: e5          .
	call	L5c84		;; 4754: cd 84 5c    ..\
	call	L5c3d		;; 4757: cd 3d 5c    .=\
L475a:	call	L67a6		;; 475a: cd a6 67    ..g
	ldx	a,-122		;; 475d: dd 7e 86    .~.
	lxi	h,L02ee		;; 4760: 21 ee 02    ...
	cmp	m		;; 4763: be          .
	jrnc	L476c		;; 4764: 30 06       0.
	lda	L02ee		;; 4766: 3a ee 02    :..
	stx	a,-122		;; 4769: dd 77 86    .w.
L476c:	lda	L02ee		;; 476c: 3a ee 02    :..
	cmpx	-121		;; 476f: dd be 87    ...
	jrz	L47cf		;; 4772: 28 5b       ([
	call	L0977		;; 4774: cd 77 09    .w.
	lda	L02e3		;; 4777: 3a e3 02    :..
	lxi	h,L02e4		;; 477a: 21 e4 02    ...
	cmp	m		;; 477d: be          .
	jrnz	L47bd		;; 477e: 20 3d        =
	ldx	a,-121		;; 4780: dd 7e 87    .~.
	mov	c,a		;; 4783: 4f          O
	mvi	b,000h		;; 4784: 06 00       ..
	ldx	l,-122		;; 4786: dd 6e 86    .n.
	mvi	h,000h		;; 4789: 26 00       &.
	ora	a		;; 478b: b7          .
	dsbc	b		;; 478c: ed 42       .B
	mov	a,l		;; 478e: 7d          }
	stx	a,-123		;; 478f: dd 77 85    .w.
	lda	L02e6		;; 4792: 3a e6 02    :..
	stx	a,-124		;; 4795: dd 77 84    .w.
	ldx	a,-122		;; 4798: dd 7e 86    .~.
	adi	002h		;; 479b: c6 02       ..
	stx	a,-121		;; 479d: dd 77 87    .w.
	push	psw		;; 47a0: f5          .
	lxi	b,0fff6h	;; 47a1: 01 f6 ff    ...
	lda	L02ef		;; 47a4: 3a ef 02    :..
	mov	l,a		;; 47a7: 6f          o
	mvi	h,000h		;; 47a8: 26 00       &.
	dad	b		;; 47aa: 09          .
	mov	b,h		;; 47ab: 44          D
	mov	c,l		;; 47ac: 4d          M
	pop	psw		;; 47ad: f1          .
	mov	l,a		;; 47ae: 6f          o
	mvi	h,000h		;; 47af: 26 00       &.
	rst	4		;; 47b1: e7          .
	db	85h
	cpe	L8c01		;; 47b3: ec 01 8c    ...
	jp	L47bb		;; 47b6: f2 bb 47    ..G
	jr	L47d2		;; 47b9: 18 17       ..

L47bb:	jr	L47c4		;; 47bb: 18 07       ..

L47bd:	lda	L02e3		;; 47bd: 3a e3 02    :..
	inr	a		;; 47c0: 3c          <
	stx	a,-124		;; 47c1: dd 77 84    .w.
L47c4:	ldx	a,-124		;; 47c4: dd 7e 84    .~.
	push	psw		;; 47c7: f5          .
	ldx	a,-121		;; 47c8: dd 7e 87    .~.
	push	psw		;; 47cb: f5          .
	call	L0889		;; 47cc: cd 89 08    ...
L47cf:	jmp	L4652		;; 47cf: c3 52 46    .RF

L47d2:	call	L0977		;; 47d2: cd 77 09    .w.
L47d5:	ldx	a,-121		;; 47d5: dd 7e 87    .~.
	ora	a		;; 47d8: b7          .
	call	L8c09		;; 47d9: cd 09 8c    ...
	push	psw		;; 47dc: f5          .
	lda	L02e3		;; 47dd: 3a e3 02    :..
	lxi	h,L02e4		;; 47e0: 21 e4 02    ...
	cmp	m		;; 47e3: be          .
	mvi	a,000h		;; 47e4: 3e 00       >.
	ral			;; 47e6: 17          .
	mov	b,a		;; 47e7: 47          G
	pop	psw		;; 47e8: f1          .
	ana	b		;; 47e9: a0          .
	rar			;; 47ea: 1f          .
	jrnc	L4800		;; 47eb: 30 13       0.
	lda	L02e3		;; 47ed: 3a e3 02    :..
	lxi	h,L02e9		;; 47f0: 21 e9 02    ...
	cmp	m		;; 47f3: be          .
	jrnz	L47f8		;; 47f4: 20 02        .
	jr	L4803		;; 47f6: 18 0b       ..

L47f8:	call	L0c91		;; 47f8: cd 91 0c    ...
	call	L0977		;; 47fb: cd 77 09    .w.
	jr	L47d5		;; 47fe: 18 d5       ..

L4800:	call	L314c		;; 4800: cd 4c 31    .L1
L4803:	call	L1dda		;; 4803: cd da 1d    ...
	jmp	L8d56		;; 4806: c3 56 8d    .V.

L4809:	call	L8d27		;; 4809: cd 27 8d    .'.
	db	0,6
	lda	L0189		;; 480e: 3a 89 01    :..
	sta	L02e9		;; 4811: 32 e9 02    2..
	lda	L018a		;; 4814: 3a 8a 01    :..
	sta	L02e8		;; 4817: 32 e8 02    2..
	lda	L018b		;; 481a: 3a 8b 01    :..
	sta	L02e7		;; 481d: 32 e7 02    2..
	mvi	a,001h		;; 4820: 3e 01       >.
	push	psw		;; 4822: f5          .
	call	L1d5d		;; 4823: cd 5d 1d    .].
	jmp	L8d56		;; 4826: c3 56 8d    .V.

L4829:	call	L8d27		;; 4829: cd 27 8d    .'.
	db	0ffh,7
	mvix	001h,-126	;; 482e: dd 36 82 01 .6..
	call	L1e41		;; 4832: cd 41 1e    .A.
	lda	L1785		;; 4835: 3a 85 17    :..
	call	L48fe		;; 4838: cd fe 48    ..H
L483b:	call	L45f1		;; 483b: cd f1 45    ..E
	jmp	L492f		;; 483e: c3 2f 49    ./I

L4841:	lda	L02e4		;; 4841: 3a e4 02    :..
	sta	L02e9		;; 4844: 32 e9 02    2..
	sta	L02e8		;; 4847: 32 e8 02    2..
	dcr	a		;; 484a: 3d          =
	sta	L02e7		;; 484b: 32 e7 02    2..
	mvi	a,001h		;; 484e: 3e 01       >.
	push	psw		;; 4850: f5          .
	call	L1d5d		;; 4851: cd 5d 1d    .].
	jmp	L492f		;; 4854: c3 2f 49    ./I

L4857:	call	L4809		;; 4857: cd 09 48    ..H
	jmp	L492f		;; 485a: c3 2f 49    ./I

L485d:	lda	L02ea		;; 485d: 3a ea 02    :..
	adi	002h		;; 4860: c6 02       ..
	mov	b,a		;; 4862: 47          G
	lda	L02e3		;; 4863: 3a e3 02    :..
	cmp	b		;; 4866: b8          .
	jrnc	L486e		;; 4867: 30 05       0.
	call	L45f1		;; 4869: cd f1 45    ..E
	jr	L489b		;; 486c: 18 2d       .-

L486e:	lda	L02e4		;; 486e: 3a e4 02    :..
	dcr	a		;; 4871: 3d          =
	mov	b,a		;; 4872: 47          G
	lda	L02e3		;; 4873: 3a e3 02    :..
	cmp	b		;; 4876: b8          .
	jrc	L4887		;; 4877: 38 0e       8.
	lxi	b,0fffeh	;; 4879: 01 fe ff    ...
	lda	L02e4		;; 487c: 3a e4 02    :..
	mov	l,a		;; 487f: 6f          o
	mvi	h,000h		;; 4880: 26 00       &.
	dad	b		;; 4882: 09          .
	mov	a,l		;; 4883: 7d          }
	sta	L02e3		;; 4884: 32 e3 02    2..
L4887:	lda	L02e3		;; 4887: 3a e3 02    :..
	sta	L02e9		;; 488a: 32 e9 02    2..
	lda	L02e3		;; 488d: 3a e3 02    :..
	adi	002h		;; 4890: c6 02       ..
	sta	L02e8		;; 4892: 32 e8 02    2..
	mvi	a,001h		;; 4895: 3e 01       >.
	push	psw		;; 4897: f5          .
	call	L1d5d		;; 4898: cd 5d 1d    .].
L489b:	jmp	L492f		;; 489b: c3 2f 49    ./I

L489e:	lda	L0181		;; 489e: 3a 81 01    :..
	xri	001h		;; 48a1: ee 01       ..
	sta	L0181		;; 48a3: 32 81 01    2..
	jmp	L492f		;; 48a6: c3 2f 49    ./I

L48a9:	lda	L0182		;; 48a9: 3a 82 01    :..
	xri	001h		;; 48ac: ee 01       ..
	sta	L0182		;; 48ae: 32 82 01    2..
	jmp	L492f		;; 48b1: c3 2f 49    ./I

L48b4:	mvi	a,001h		;; 48b4: 3e 01       >.
	push	psw		;; 48b6: f5          .
	call	L1ed3		;; 48b7: cd d3 1e    ...
	mvi	a,007h		;; 48ba: 3e 07       >.
	push	psw		;; 48bc: f5          .
	call	L1762		;; 48bd: cd 62 17    .b.
	call	L0977		;; 48c0: cd 77 09    .w.
	call	L1e8e		;; 48c3: cd 8e 1e    ...
	lda	L1c5c		;; 48c6: 3a 5c 1c    :\.
	cpi	00dh		;; 48c9: fe 0d       ..
	jrnz	L48d2		;; 48cb: 20 05        .
	lxi	h,L1c5c		;; 48cd: 21 5c 1c    .\.
	mvi	m,000h		;; 48d0: 36 00       6.
L48d2:	lda	L1c5c		;; 48d2: 3a 5c 1c    :\.
	sta	L0180		;; 48d5: 32 80 01    2..
	call	L0965		;; 48d8: cd 65 09    .e.
	call	L0977		;; 48db: cd 77 09    .w.
	jr	L492f		;; 48de: 18 4f       .O

L48e0:	call	L460b		;; 48e0: cd 0b 46    ..F
	mvix	000h,-126	;; 48e3: dd 36 82 00 .6..
	jr	L492f		;; 48e7: 18 46       .F

L48e9:	lxi	h,L1d3f		;; 48e9: 21 3f 1d    .?.
	mvi	m,000h		;; 48ec: 36 00       6.
	jr	L492f		;; 48ee: 18 3f       .?

L48f0:	lxi	h,L1d55		;; 48f0: 21 55 1d    .U.
	mvi	m,001h		;; 48f3: 36 01       6.
	jr	L492f		;; 48f5: 18 38       .8

L48f7:	jr	L492f		;; 48f7: 18 36       .6

L48f9:	call	L0a8f		;; 48f9: cd 8f 0a    ...
	jr	L492f		;; 48fc: 18 31       .1

L48fe:	mvi	b,00eh		;; 48fe: 06 0e       ..
	call	L8ddc		;; 4900: cd dc 8d    ...
	db ' ' ! dw L48f7
	db ';' ! dw L48e0
	db 'B' ! dw L48e0
	db 'C' ! dw L4841
	db 'F' ! dw L489e
	db 'I' ! dw L48e9
	db 'O' ! dw L485d
	db 'P' ! dw L48e0
	db 'R' ! dw L483b
	db 'S' ! dw L48b4
	db 'T' ! dw L48e0
	db 'U' ! dw L48a9
	db 'V' ! dw L4857
	db 'Z' ! dw L48f0
	dw	L48f9
L492f:	ldx	a,-126		;; 492f: dd 7e 82    .~.
	rar			;; 4932: 1f          .
	jrnc	L4938		;; 4933: 30 03       0.
	call	L351f		;; 4935: cd 1f 35    ..5
L4938:	jmp	L8d56		;; 4938: c3 56 8d    .V.

L493b:	call	L8d27		;; 493b: cd 27 8d    .'.
	db	0f9h,0dh
	lxi	h,L1d56		;; 4940: 21 56 1d    .V.
	mvi	m,000h		;; 4943: 36 00       6.
	lda	L1785		;; 4945: 3a 85 17    :..
	sta	L1d3f		;; 4948: 32 3f 1d    2?.
	call	L1dda		;; 494b: cd da 1d    ...
	mvix	000h,-120	;; 494e: dd 36 88 00 .6..
	ldx	a,-120		;; 4952: dd 7e 88    .~.
	stx	a,-121		;; 4955: dd 77 87    .w.
	mvix	000h,-126	;; 4958: dd 36 82 00 .6..
L495c:	ldx	a,-126		;; 495c: dd 7e 82    .~.
	cpi	013h		;; 495f: fe 13       ..
	jz	L4a33		;; 4961: ca 33 4a    .3J
	ldx	l,-126		;; 4964: dd 6e 82    .n.
	mvi	h,000h		;; 4967: 26 00       &.
	dad	h		;; 4969: 29          )
	lxi	d,L3172		;; 496a: 11 72 31    .r1
	dad	d		;; 496d: 19          .
	rst	4		;; 496e: e7          .
	db	80h
	rst	3		;; 4970: df          .
	db	3
	lda	L02ee		;; 4972: 3a ee 02    :..
	ora	a		;; 4975: b7          .
	jrnz	L49ae		;; 4976: 20 36        6
	rst	3		;; 4978: df          .
	db	83h
	shld	L1787		;; 497a: 22 87 17    "..
	lda	L02e3		;; 497d: 3a e3 02    :..
	mov	l,a		;; 4980: 6f          o
	mvi	h,000h		;; 4981: 26 00       &.
	dad	h		;; 4983: 29          )
	lxi	d,L1cf4		;; 4984: 11 f4 1c    ...
	dad	d		;; 4987: 19          .
	push	h		;; 4988: e5          .
	lhld	L1787		;; 4989: 2a 87 17    *..
	rst	4		;; 498c: e7          .
	db	81h
	lda	L02e3		;; 498e: 3a e3 02    :..
	mov	l,a		;; 4991: 6f          o
	mvi	h,000h		;; 4992: 26 00       &.
	dad	h		;; 4994: 29          )
	lxi	d,L1c5e		;; 4995: 11 5e 1c    .^.
	dad	d		;; 4998: 19          .
	mvi	m,000h		;; 4999: 36 00       6.
	inx	h		;; 499b: 23          #
	mvi	m,000h		;; 499c: 36 00       6.
	lda	L02e3		;; 499e: 3a e3 02    :..
	mov	l,a		;; 49a1: 6f          o
	mvi	h,000h		;; 49a2: 26 00       &.
	dad	h		;; 49a4: 29          )
	lxi	d,L1c90		;; 49a5: 11 90 1c    ...
	dad	d		;; 49a8: 19          .
	mvi	m,000h		;; 49a9: 36 00       6.
	inx	h		;; 49ab: 23          #
	mvi	m,000h		;; 49ac: 36 00       6.
L49ae:	rst	3		;; 49ae: df          .
	db	83h
	push	h		;; 49b0: e5          .
	call	L5428		;; 49b1: cd 28 54    .(T
	call	L0799		;; 49b4: cd 99 07    ...
	ldx	a,-126		;; 49b7: dd 7e 82    .~.
	inr	a		;; 49ba: 3c          <
	stx	a,-126		;; 49bb: dd 77 82    .w.
	ldx	a,-121		;; 49be: dd 7e 87    .~.
	lxi	h,L02ee		;; 49c1: 21 ee 02    ...
	cmp	m		;; 49c4: be          .
	jrnc	L49cd		;; 49c5: 30 06       0.
	lda	L02ee		;; 49c7: 3a ee 02    :..
	stx	a,-121		;; 49ca: dd 77 87    .w.
L49cd:	lda	L02ee		;; 49cd: 3a ee 02    :..
	cmpx	-120		;; 49d0: dd be 88    ...
	jrz	L4a30		;; 49d3: 28 5b       ([
	call	L0977		;; 49d5: cd 77 09    .w.
	lda	L02e3		;; 49d8: 3a e3 02    :..
	lxi	h,L02e4		;; 49db: 21 e4 02    ...
	cmp	m		;; 49de: be          .
	jrnz	L4a1e		;; 49df: 20 3d        =
	ldx	a,-120		;; 49e1: dd 7e 88    .~.
	mov	c,a		;; 49e4: 4f          O
	mvi	b,000h		;; 49e5: 06 00       ..
	ldx	l,-121		;; 49e7: dd 6e 87    .n.
	mvi	h,000h		;; 49ea: 26 00       &.
	ora	a		;; 49ec: b7          .
	dsbc	b		;; 49ed: ed 42       .B
	mov	a,l		;; 49ef: 7d          }
	stx	a,-122		;; 49f0: dd 77 86    .w.
	lda	L02e6		;; 49f3: 3a e6 02    :..
	stx	a,-123		;; 49f6: dd 77 85    .w.
	ldx	a,-121		;; 49f9: dd 7e 87    .~.
	adi	002h		;; 49fc: c6 02       ..
	stx	a,-120		;; 49fe: dd 77 88    .w.
	push	psw		;; 4a01: f5          .
	lxi	b,0fff6h	;; 4a02: 01 f6 ff    ...
	lda	L02ef		;; 4a05: 3a ef 02    :..
	mov	l,a		;; 4a08: 6f          o
	mvi	h,000h		;; 4a09: 26 00       &.
	dad	b		;; 4a0b: 09          .
	mov	b,h		;; 4a0c: 44          D
	mov	c,l		;; 4a0d: 4d          M
	pop	psw		;; 4a0e: f1          .
	mov	l,a		;; 4a0f: 6f          o
	mvi	h,000h		;; 4a10: 26 00       &.
	rst	4		;; 4a12: e7          .
	db	85h
	cpe	L8c01		;; 4a14: ec 01 8c    ...
	jp	L4a1c		;; 4a17: f2 1c 4a    ..J
	jr	L4a33		;; 4a1a: 18 17       ..

L4a1c:	jr	L4a25		;; 4a1c: 18 07       ..

L4a1e:	lda	L02e3		;; 4a1e: 3a e3 02    :..
	inr	a		;; 4a21: 3c          <
	stx	a,-123		;; 4a22: dd 77 85    .w.
L4a25:	ldx	a,-123		;; 4a25: dd 7e 85    .~.
	push	psw		;; 4a28: f5          .
	ldx	a,-120		;; 4a29: dd 7e 88    .~.
	push	psw		;; 4a2c: f5          .
	call	L0889		;; 4a2d: cd 89 08    ...
L4a30:	jmp	L495c		;; 4a30: c3 5c 49    .\I

L4a33:	call	L0977		;; 4a33: cd 77 09    .w.
L4a36:	ldx	a,-120		;; 4a36: dd 7e 88    .~.
	ora	a		;; 4a39: b7          .
	call	L8c09		;; 4a3a: cd 09 8c    ...
	push	psw		;; 4a3d: f5          .
	lda	L02e3		;; 4a3e: 3a e3 02    :..
	lxi	h,L02e4		;; 4a41: 21 e4 02    ...
	cmp	m		;; 4a44: be          .
	mvi	a,000h		;; 4a45: 3e 00       >.
	ral			;; 4a47: 17          .
	mov	b,a		;; 4a48: 47          G
	pop	psw		;; 4a49: f1          .
	ana	b		;; 4a4a: a0          .
	rar			;; 4a4b: 1f          .
	jrnc	L4a61		;; 4a4c: 30 13       0.
	lda	L02e3		;; 4a4e: 3a e3 02    :..
	lxi	h,L02e9		;; 4a51: 21 e9 02    ...
	cmp	m		;; 4a54: be          .
	jrnz	L4a59		;; 4a55: 20 02        .
	jr	L4a64		;; 4a57: 18 0b       ..

L4a59:	call	L0c91		;; 4a59: cd 91 0c    ...
	call	L0977		;; 4a5c: cd 77 09    .w.
	jr	L4a36		;; 4a5f: 18 d5       ..

L4a61:	call	L314c		;; 4a61: cd 4c 31    .L1
L4a64:	call	L1dda		;; 4a64: cd da 1d    ...
	jmp	L8d56		;; 4a67: c3 56 8d    .V.

L4a6a:	call	L8d27		;; 4a6a: cd 27 8d    .'.
	db	0,6
	call	L1e41		;; 4a6f: cd 41 1e    .A.
	lda	L1785		;; 4a72: 3a 85 17    :..
	call	L4a93		;; 4a75: cd 93 4a    ..J
L4a78:	call	L460b		;; 4a78: cd 0b 46    ..F
	jr	L4ab2		;; 4a7b: 18 35       .5

L4a7d:	call	L493b		;; 4a7d: cd 3b 49    .;I
	jr	L4ab2		;; 4a80: 18 30       .0

L4a82:	lxi	h,L1d3f		;; 4a82: 21 3f 1d    .?.
	mvi	m,000h		;; 4a85: 36 00       6.
	call	L351f		;; 4a87: cd 1f 35    ..5
	jr	L4ab2		;; 4a8a: 18 26       .&

L4a8c:	jr	L4ab2		;; 4a8c: 18 24       .$

L4a8e:	call	L0a8f		;; 4a8e: cd 8f 0a    ...
	jr	L4ab2		;; 4a91: 18 1f       ..

L4a93:	mvi	b,008h		;; 4a93: 06 08       ..
	call	L8ddc		;; 4a95: cd dc 8d    ...
	db ' ' ! dw L4a8c
	db ';' ! dw L4a78
	db 'B' ! dw L4a78
	db 'F' ! dw L4a7d
	db 'I' ! dw L4a82
	db 'P' ! dw L4a78
	db 'S' ! dw L4a78
	db 'T' ! dw L4a78
	dw	L4a8e
L4ab2:	jmp	L8d56		;; 4ab2: c3 56 8d    .V.

L4ab5:	call	L8d27		;; 4ab5: cd 27 8d    .'.
	db	0ffh,7
	lda	L02e1		;; 4aba: 3a e1 02    :..
	call	L4acc		;; 4abd: cd cc 4a    ..J
L4ac0:	mvix	001h,-126	;; 4ac0: dd 36 82 01 .6..
	jr	L4ad8		;; 4ac4: 18 12       ..

L4ac6:	mvix	010h,-126	;; 4ac6: dd 36 82 10 .6..
	jr	L4ad8		;; 4aca: 18 0c       ..

L4acc:	lxi	b,00102h	;; 4acc: 01 02 01    ...
	call	L8d90		;; 4acf: cd 90 8d    ...
	dw	L4ac0
	dw	L4ac6
	dw	L8e06
L4ad8:	lda	L02e6		;; 4ad8: 3a e6 02    :..
	mov	l,a		;; 4adb: 6f          o
	mvi	h,000h		;; 4adc: 26 00       &.
	dad	h		;; 4ade: 29          )
	lxi	d,L1cf4		;; 4adf: 11 f4 1c    ...
	dad	d		;; 4ae2: 19          .
	rst	4		;; 4ae3: e7          .
	db	80h
	rst	4		;; 4ae5: e7          .
	db	87h
	push	h		;; 4ae7: e5          .
	push	b		;; 4ae8: c5          .
	ldx	a,-126		;; 4ae9: dd 7e 82    .~.
	rst	4		;; 4aec: e7          .
	db	86h
	call	L87f6		;; 4aee: cd f6 87    ...
	mov	h,b		;; 4af1: 60          `
	mov	l,c		;; 4af2: 69          i
	shld	L1789		;; 4af3: 22 89 17    "..
	call	L2c3e		;; 4af6: cd 3e 2c    .>,
	call	L30cb		;; 4af9: cd cb 30    ..0
	call	L1e32		;; 4afc: cd 32 1e    .2.
	jmp	L8d56		;; 4aff: c3 56 8d    .V.

L4b02:	call	L8d27		;; 4b02: cd 27 8d    .'.
	db	0ffh,7
	lda	L02e6		;; 4b07: 3a e6 02    :..
	stx	a,-126		;; 4b0a: dd 77 82    .w.
L4b0d:	ldx	a,-126		;; 4b0d: dd 7e 82    .~.
	lxi	h,L02e5		;; 4b10: 21 e5 02    ...
	cmp	m		;; 4b13: be          .
	mvi	a,000h		;; 4b14: 3e 00       >.
	ral			;; 4b16: 17          .
	push	psw		;; 4b17: f5          .
	ldx	l,-126		;; 4b18: dd 6e 82    .n.
	mvi	h,000h		;; 4b1b: 26 00       &.
	dad	h		;; 4b1d: 29          )
	lxi	d,L1cf4		;; 4b1e: 11 f4 1c    ...
	dad	d		;; 4b21: 19          .
	lbcd	L1789		;; 4b22: ed 4b 89 17 .K..
	rst	4		;; 4b26: e7          .
	db	80h
	ora	a		;; 4b28: b7          .
	dsbc	b		;; 4b29: ed 42       .B
	call	L8c09		;; 4b2b: cd 09 8c    ...
	mov	b,a		;; 4b2e: 47          G
	pop	psw		;; 4b2f: f1          .
	ana	b		;; 4b30: a0          .
	rar			;; 4b31: 1f          .
	jrnc	L4b3d		;; 4b32: 30 09       0.
	ldx	a,-126		;; 4b34: dd 7e 82    .~.
	inr	a		;; 4b37: 3c          <
	stx	a,-126		;; 4b38: dd 77 82    .w.
	jr	L4b0d		;; 4b3b: 18 d0       ..

L4b3d:	ldx	l,-126		;; 4b3d: dd 6e 82    .n.
	mvi	h,000h		;; 4b40: 26 00       &.
	dad	h		;; 4b42: 29          )
	lxi	d,L1cf4		;; 4b43: 11 f4 1c    ...
	dad	d		;; 4b46: 19          .
	lbcd	L1789		;; 4b47: ed 4b 89 17 .K..
	rst	4		;; 4b4b: e7          .
	db	80h
	ora	a		;; 4b4d: b7          .
	dsbc	b		;; 4b4e: ed 42       .B
	jrnz	L4b60		;; 4b50: 20 0e        .
	call	L3c0d		;; 4b52: cd 0d 3c    ..<
	mov	b,h		;; 4b55: 44          D
	mov	c,l		;; 4b56: 4d          M
	lhld	L1789		;; 4b57: 2a 89 17    *..
	dad	b		;; 4b5a: 09          .
	shld	L1789		;; 4b5b: 22 89 17    "..
	jr	L4b6f		;; 4b5e: 18 0f       ..

L4b60:	ldx	l,-126		;; 4b60: dd 6e 82    .n.
	mvi	h,000h		;; 4b63: 26 00       &.
	dad	h		;; 4b65: 29          )
	lxi	d,L1cf4		;; 4b66: 11 f4 1c    ...
	dad	d		;; 4b69: 19          .
	rst	4		;; 4b6a: e7          .
	db	80h
	shld	L1789		;; 4b6c: 22 89 17    "..
L4b6f:	call	L2c3e		;; 4b6f: cd 3e 2c    .>,
	call	L30cb		;; 4b72: cd cb 30    ..0
	call	L1e32		;; 4b75: cd 32 1e    .2.
	jmp	L8d56		;; 4b78: c3 56 8d    .V.

L4b7b:	call	L8d27		;; 4b7b: cd 27 8d    .'.
	db	0feh,8
	lhld	L1787		;; 4b80: 2a 87 17    *..
	rst	3		;; 4b83: df          .
	db	2
	lbcd	L1789		;; 4b85: ed 4b 89 17 .K..
	ora	a		;; 4b89: b7          .
	dsbc	b		;; 4b8a: ed 42       .B
	jrnz	L4b98		;; 4b8c: 20 0a        .
	call	L3c0d		;; 4b8e: cd 0d 3c    ..<
	mov	b,h		;; 4b91: 44          D
	mov	c,l		;; 4b92: 4d          M
	rst	3		;; 4b93: df          .
	db	82h
	dad	b		;; 4b95: 09          .
	rst	3		;; 4b96: df          .
	db	2
L4b98:	rst	3		;; 4b98: df          .
	db	82h
	shld	L1789		;; 4b9a: 22 89 17    "..
	lda	L1d3f		;; 4b9d: 3a 3f 1d    :?.
	ora	a		;; 4ba0: b7          .
	jrz	L4bae		;; 4ba1: 28 0b       (.
	lda	L1d3f		;; 4ba3: 3a 3f 1d    :?.
	sta	L1785		;; 4ba6: 32 85 17    2..
	call	L460b		;; 4ba9: cd 0b 46    ..F
	jr	L4bb1		;; 4bac: 18 03       ..

L4bae:	call	L351f		;; 4bae: cd 1f 35    ..5
L4bb1:	jmp	L8d56		;; 4bb1: c3 56 8d    .V.

L4bb4:	call	L8d27		;; 4bb4: cd 27 8d    .'.
	db	0,6
	lda	L02e1		;; 4bb9: 3a e1 02    :..
	cpi	002h		;; 4bbc: fe 02       ..
	jrnz	L4bf7		;; 4bbe: 20 37        7
	lda	L02e6		;; 4bc0: 3a e6 02    :..
	mov	l,a		;; 4bc3: 6f          o
	mvi	h,000h		;; 4bc4: 26 00       &.
	dad	h		;; 4bc6: 29          )
	lxi	d,L1cf4		;; 4bc7: 11 f4 1c    ...
	dad	d		;; 4bca: 19          .
	rst	4		;; 4bcb: e7          .
	db	80h
	shld	L1789		;; 4bcd: 22 89 17    "..
	push	h		;; 4bd0: e5          .
	lda	L02e5		;; 4bd1: 3a e5 02    :..
	mov	l,a		;; 4bd4: 6f          o
	mvi	h,000h		;; 4bd5: 26 00       &.
	dad	h		;; 4bd7: 29          )
	lxi	d,L1cf4		;; 4bd8: 11 f4 1c    ...
	dad	d		;; 4bdb: 19          .
	rst	4		;; 4bdc: e7          .
	db	80h
	rst	4		;; 4bde: e7          .
	db	87h
	push	h		;; 4be0: e5          .
	push	b		;; 4be1: c5          .
	lhld	L1789		;; 4be2: 2a 89 17    *..
	rst	4		;; 4be5: e7          .
	db	87h
	call	L87f6		;; 4be7: cd f6 87    ...
	call	L8823		;; 4bea: cd 23 88    .#.
	call	L87f6		;; 4bed: cd f6 87    ...
	mov	h,b		;; 4bf0: 60          `
	mov	l,c		;; 4bf1: 69          i
	shld	L1789		;; 4bf2: 22 89 17    "..
	jr	L4c3d		;; 4bf5: 18 46       .F

L4bf7:	lbcd	L1789		;; 4bf7: ed 4b 89 17 .K..
	lxi	h,L0100		;; 4bfb: 21 00 01    ...
	ora	a		;; 4bfe: b7          .
	dsbc	b		;; 4bff: ed 42       .B
	jrc	L4c0b		;; 4c01: 38 08       8.
	call	L322e		;; 4c03: cd 2e 32    ..2
	shld	L1789		;; 4c06: 22 89 17    "..
	jr	L4c3d		;; 4c09: 18 32       .2

L4c0b:	call	L8d60		;; 4c0b: cd 60 8d    .`.
	dw	L104c
	push	h		;; 4c10: e5          .
	push	b		;; 4c11: c5          .
	lhld	L1789		;; 4c12: 2a 89 17    *..
	rst	4		;; 4c15: e7          .
	db	87h
	call	L8870		;; 4c17: cd 70 88    .p.
	jp	L4c22		;; 4c1a: f2 22 4c    ."L
	call	L39a3		;; 4c1d: cd a3 39    ..9
	jr	L4c3d		;; 4c20: 18 1b       ..

L4c22:	lda	L02e6		;; 4c22: 3a e6 02    :..
	mov	c,a		;; 4c25: 4f          O
	mvi	b,000h		;; 4c26: 06 00       ..
	lda	L02e5		;; 4c28: 3a e5 02    :..
	mov	l,a		;; 4c2b: 6f          o
	mvi	h,000h		;; 4c2c: 26 00       &.
	ora	a		;; 4c2e: b7          .
	dsbc	b		;; 4c2f: ed 42       .B
	inx	h		;; 4c31: 23          #
	mov	b,h		;; 4c32: 44          D
	mov	c,l		;; 4c33: 4d          M
	lhld	L1789		;; 4c34: 2a 89 17    *..
	ora	a		;; 4c37: b7          .
	dsbc	b		;; 4c38: ed 42       .B
	shld	L1789		;; 4c3a: 22 89 17    "..
L4c3d:	lda	L1d3f		;; 4c3d: 3a 3f 1d    :?.
	ora	a		;; 4c40: b7          .
	jrz	L4c54		;; 4c41: 28 11       (.
	lxi	h,00000h	;; 4c43: 21 00 00    ...
	shld	L1789		;; 4c46: 22 89 17    "..
	lda	L1d3f		;; 4c49: 3a 3f 1d    :?.
	sta	L1785		;; 4c4c: 32 85 17    2..
	call	L460b		;; 4c4f: cd 0b 46    ..F
	jr	L4c57		;; 4c52: 18 03       ..

L4c54:	call	L351f		;; 4c54: cd 1f 35    ..5
L4c57:	jmp	L8d56		;; 4c57: c3 56 8d    .V.

L4c5a:	call	L8d27		;; 4c5a: cd 27 8d    .'.
	db	0,0ch
	lxi	b,0ffd0h	;; 4c5f: 01 d0 ff    ...
	ldx	l,-121		;; 4c62: dd 6e 87    .n.
	mvi	h,000h		;; 4c65: 26 00       &.
	dad	b		;; 4c67: 09          .
	push	h		;; 4c68: e5          .
	call	L8c26		;; 4c69: cd 26 8c    .&.
	db	82h
	call	L8815		;; 4c6d: cd 15 88    ...
	call	L8636		;; 4c70: cd 36 86    .6.
	push	h		;; 4c73: e5          .
	push	b		;; 4c74: c5          .
	lhld	L322b		;; 4c75: 2a 2b 32    *+2
	rst	4		;; 4c78: e7          .
	db	87h
	call	L87e7		;; 4c7a: cd e7 87    ...
	mov	h,b		;; 4c7d: 60          `
	mov	l,c		;; 4c7e: 69          i
	shld	L1789		;; 4c7f: 22 89 17    "..
	call	L2c3e		;; 4c82: cd 3e 2c    .>,
	lda	L02e1		;; 4c85: 3a e1 02    :..
	cpi	002h		;; 4c88: fe 02       ..
	jrnz	L4c91		;; 4c8a: 20 05        .
	call	L2c52		;; 4c8c: cd 52 2c    .R,
	jr	L4c94		;; 4c8f: 18 03       ..

L4c91:	call	L30cb		;; 4c91: cd cb 30    ..0
L4c94:	call	L1dda		;; 4c94: cd da 1d    ...
	jmp	L8d56		;; 4c97: c3 56 8d    .V.

L4c9a:	call	L8d27		;; 4c9a: cd 27 8d    .'.
	db	0fch,0ah
	mvix	000h,-125	;; 4c9f: dd 36 83 00 .6..
	lda	L02e8		;; 4ca3: 3a e8 02    :..
	stx	a,-123		;; 4ca6: dd 77 85    .w.
L4ca9:	lda	L02e7		;; 4ca9: 3a e7 02    :..
	cmpx	-123		;; 4cac: dd be 85    ...
	jrc	L4d03		;; 4caf: 38 52       8R
	lda	L02ef		;; 4cb1: 3a ef 02    :..
	stx	a,-124		;; 4cb4: dd 77 84    .w.
L4cb7:	mvi	a,000h		;; 4cb7: 3e 00       >.
	cmpx	-124		;; 4cb9: dd be 84    ...
	jrnc	L4cf2		;; 4cbc: 30 34       04
	ldx	a,-123		;; 4cbe: dd 7e 85    .~.
	push	psw		;; 4cc1: f5          .
	ldx	a,-124		;; 4cc2: dd 7e 84    .~.
	push	psw		;; 4cc5: f5          .
	call	L0542		;; 4cc6: cd 42 05    .B.
	stx	a,-126		;; 4cc9: dd 77 82    .w.
	cpi	027h		;; 4ccc: fe 27       .'
	jrnz	L4cdc		;; 4cce: 20 0c        .
	ldx	a,-125		;; 4cd0: dd 7e 83    .~.
	rar			;; 4cd3: 1f          .
	jrnc	L4cd8		;; 4cd4: 30 02       0.
	jr	L4d03		;; 4cd6: 18 2b       .+

L4cd8:	mvix	001h,-125	;; 4cd8: dd 36 83 01 .6..
L4cdc:	ldx	a,-125		;; 4cdc: dd 7e 83    .~.
	rar			;; 4cdf: 1f          .
	jrnc	L4ce9		;; 4ce0: 30 07       0.
	ldx	a,-126		;; 4ce2: dd 7e 82    .~.
	push	psw		;; 4ce5: f5          .
	call	L0466		;; 4ce6: cd 66 04    .f.
L4ce9:	ldx	a,-124		;; 4ce9: dd 7e 84    .~.
	dcr	a		;; 4cec: 3d          =
	stx	a,-124		;; 4ced: dd 77 84    .w.
	jr	L4cb7		;; 4cf0: 18 c5       ..

L4cf2:	ldx	a,-125		;; 4cf2: dd 7e 83    .~.
	rar			;; 4cf5: 1f          .
	jrnc	L4cfa		;; 4cf6: 30 02       0.
	jr	L4d03		;; 4cf8: 18 09       ..

L4cfa:	ldx	a,-123		;; 4cfa: dd 7e 85    .~.
	inr	a		;; 4cfd: 3c          <
	stx	a,-123		;; 4cfe: dd 77 85    .w.
	jr	L4ca9		;; 4d01: 18 a6       ..

L4d03:	ldx	a,-125		;; 4d03: dd 7e 83    .~.
	rar			;; 4d06: 1f          .
	jrnc	L4d1b		;; 4d07: 30 12       0.
	mvi	a,027h		;; 4d09: 3e 27       >'
	push	psw		;; 4d0b: f5          .
	call	L0466		;; 4d0c: cd 66 04    .f.
	mvi	a,049h		;; 4d0f: 3e 49       >I
	push	psw		;; 4d11: f5          .
	call	L0466		;; 4d12: cd 66 04    .f.
	mvi	a,053h		;; 4d15: 3e 53       >S
	push	psw		;; 4d17: f5          .
	call	L0466		;; 4d18: cd 66 04    .f.
L4d1b:	jmp	L8d56		;; 4d1b: c3 56 8d    .V.

L4d1e:	call	L8d27		;; 4d1e: cd 27 8d    .'.
	db	0feh,8
	lda	L02e4		;; 4d23: 3a e4 02    :..
	mov	b,a		;; 4d26: 47          G
	mvi	a,000h		;; 4d27: 3e 00       >.
	call	L894e		;; 4d29: cd 4e 89    .N.
	stx	b,-126		;; 4d2c: dd 70 82    .p.
	jrc	L4d46		;; 4d2f: 38 15       8.
L4d31:	stx	a,-125		;; 4d31: dd 77 83    .w.
	mov	l,a		;; 4d34: 6f          o
	mvi	h,000h		;; 4d35: 26 00       &.
	lxi	d,L1d26		;; 4d37: 11 26 1d    .&.
	dad	d		;; 4d3a: 19          .
	mvi	m,020h		;; 4d3b: 36 20       6 
	ldx	a,-125		;; 4d3d: dd 7e 83    .~.
	inr	a		;; 4d40: 3c          <
	dcrx	-126		;; 4d41: dd 35 82    .5.
	jrnz	L4d31		;; 4d44: 20 eb        .
L4d46:	jmp	L8d56		;; 4d46: c3 56 8d    .V.

L4d49:	lxi	h,L4d4f		;start here
	jmp	L8e78		;; 4d4c: c3 78 8e    .x.

L4d4f:	call	L8c5b		;return here
	lxi	h,L0100		;; 4d52: 21 00 01    ...
	shld	L316b		;; 4d55: 22 6b 31    "k1
	call	L1698		;; 4d58: cd 98 16    ...
	call	L0e03		;; 4d5b: cd 03 0e    ...
	mvi	a,000h		;; 4d5e: 3e 00       >.
	push	psw		;; 4d60: f5          .
	lda	L02e4		;; 4d61: 3a e4 02    :..
	push	psw		;; 4d64: f5          .
	call	L0a65		;; 4d65: cd 65 0a    .e.
	call	L4809		;; 4d68: cd 09 48    ..H
	call	L4d1e		;; 4d6b: cd 1e 4d    ..M
	lxi	h,L1786		;; 4d6e: 21 86 17    ...
	mvi	m,020h		;; 4d71: 36 20       6 
	lxi	h,L1785		;; 4d73: 21 85 17    ...
	mvi	m,020h		;; 4d76: 36 20       6 
	call	L0dc4		;; 4d78: cd c4 0d    ...
	call	L0fbe		;; 4d7b: cd be 0f    ...
	call	L314c		;; 4d7e: cd 4c 31    .L1
	call	L14d1		;; 4d81: cd d1 14    ...
	lda	L1050		;; 4d84: 3a 50 10    :P.
	ora	a		;; 4d87: b7          .
	jrnz	L4d95		;; 4d88: 20 0b        .
	mvi	a,058h		;; 4d8a: 3e 58       >X
	push	psw		;; 4d8c: f5          .
	call	L1811		;; 4d8d: cd 11 18    ...
	jmp	L50d7		;; 4d90: c3 d7 50    ..P

	jr	L4db6		;; 4d93: 18 21       ..

L4d95:	call	L6db3		;; 4d95: cd b3 6d    ..m
	mvi	a,02eh		;; 4d98: 3e 2e       >.
	push	psw		;; 4d9a: f5          .
	call	L50de		;; 4d9b: cd de 50    ..P
	call	L322e		;; 4d9e: cd 2e 32    ..2
	shld	L1789		;; 4da1: 22 89 17    "..
	call	L351f		;; 4da4: cd 1f 35    ..5
	call	L8d60		;; 4da7: cd 60 8d    .`.
	dw	L104c
	mov	h,b		;; 4dac: 60          `
	mov	l,c		;; 4dad: 69          i
	shld	L316d		;; 4dae: 22 6d 31    "m1
	lxi	h,L3171		;; 4db1: 21 71 31    .q1
	mvi	m,000h		;; 4db4: 36 00       6.
L4db6:	lda	L3171		;; 4db6: 3a 71 31    :q1
	xri	001h		;; 4db9: ee 01       ..
	rar			;; 4dbb: 1f          .
	jnc	L50d7		;; 4dbc: d2 d7 50    ..P
	lxi	h,L1c5a		;; 4dbf: 21 5a 1c    .Z.
	mvi	m,000h		;; 4dc2: 36 00       6.
	lda	L02e3		;; 4dc4: 3a e3 02    :..
	sta	L02e2		;; 4dc7: 32 e2 02    2..
	mov	l,a		;; 4dca: 6f          o
	mvi	h,000h		;; 4dcb: 26 00       &.
	dad	h		;; 4dcd: 29          )
	lxi	d,L1cf4		;; 4dce: 11 f4 1c    ...
	dad	d		;; 4dd1: 19          .
	rst	4		;; 4dd2: e7          .
	db	80h
	shld	L322b		;; 4dd4: 22 2b 32    "+2
	lxi	h,L1786		;; 4dd7: 21 86 17    ...
	mvi	m,020h		;; 4dda: 36 20       6 
	lda	L3225		;; 4ddc: 3a 25 32    :%2
	rar			;; 4ddf: 1f          .
	jrnc	L4dea		;; 4de0: 30 08       0.
	call	L1a30		;; 4de2: cd 30 1a    .0.
	lxi	h,L3225		;; 4de5: 21 25 32    .%2
	mvi	m,000h		;; 4de8: 36 00       6.
L4dea:	lda	L02f0		;; 4dea: 3a f0 02    :..
	rar			;; 4ded: 1f          .
	jrnc	L4e28		;; 4dee: 30 38       08
	lxi	h,L02f0		;; 4df0: 21 f0 02    ...
	mvi	m,000h		;; 4df3: 36 00       6.
	mvi	a,001h		;; 4df5: 3e 01       >.
	push	psw		;; 4df7: f5          .
	call	L1ed3		;; 4df8: cd d3 1e    ...
	mvi	a,008h		;; 4dfb: 3e 08       >.
	push	psw		;; 4dfd: f5          .
	call	L1762		;; 4dfe: cd 62 17    .b.
	call	L0977		;; 4e01: cd 77 09    .w.
L4e04:	lxi	h,L1786		;; 4e04: 21 86 17    ...
	push	h		;; 4e07: e5          .
	call	L0f25		;; 4e08: cd 25 0f    .%.
	lda	L1786		;; 4e0b: 3a 86 17    :..
	ora	a		;; 4e0e: b7          .
	jrnz	L4e04		;; 4e0f: 20 f3        .
L4e11:	lxi	h,L1786		;; 4e11: 21 86 17    ...
	push	h		;; 4e14: e5          .
	call	L0f82		;; 4e15: cd 82 0f    ...
	lda	L1786		;; 4e18: 3a 86 17    :..
	cpi	01bh		;; 4e1b: fe 1b       ..
	jrnz	L4e11		;; 4e1d: 20 f2        .
	mvi	a,000h		;; 4e1f: 3e 00       >.
	push	psw		;; 4e21: f5          .
	call	L1ed3		;; 4e22: cd d3 1e    ...
	call	L351f		;; 4e25: cd 1f 35    ..5
L4e28:	lda	L322d		;; 4e28: 3a 2d 32    :-2
	rar			;; 4e2b: 1f          .
	jrnc	L4e31		;; 4e2c: 30 03       0.
	call	L5368		;; 4e2e: cd 68 53    .hS
L4e31:	lxi	h,L322d		;; 4e31: 21 2d 32    .-2
	mvi	m,001h		;; 4e34: 36 01       6.
	call	L3041		;; 4e36: cd 41 30    .A0
	lda	L02ea		;; 4e39: 3a ea 02    :..
	dcr	a		;; 4e3c: 3d          =
	mov	b,a		;; 4e3d: 47          G
	lda	L1c5b		;; 4e3e: 3a 5b 1c    :[.
	cmp	b		;; 4e41: b8          .
	jrnz	L4e52		;; 4e42: 20 0e        .
	lhld	L1789		;; 4e44: 2a 89 17    *..
	push	h		;; 4e47: e5          .
	call	L65f5		;; 4e48: cd f5 65    ..e
	lda	L1c5b		;; 4e4b: 3a 5b 1c    :[.
	dcr	a		;; 4e4e: 3d          =
	sta	L1c5b		;; 4e4f: 32 5b 1c    2[.
L4e52:	lxi	h,L1786		;; 4e52: 21 86 17    ...
	push	h		;; 4e55: e5          .
	call	L0f82		;; 4e56: cd 82 0f    ...
	lxi	h,L1785		;; 4e59: 21 85 17    ...
	mvi	m,000h		;; 4e5c: 36 00       6.
	lda	L1786		;; 4e5e: 3a 86 17    :..
	lxi	h,L018e		;; 4e61: 21 8e 01    ...
	cmp	m		;; 4e64: be          .
	jrnz	L4e6c		;; 4e65: 20 05        .
	lxi	h,L1786		;; 4e67: 21 86 17    ...
	mvi	m,045h		;; 4e6a: 36 45       6E
L4e6c:	lda	L1786		;; 4e6c: 3a 86 17    :..
	lxi	h,L018d		;; 4e6f: 21 8d 01    ...
	cmp	m		;; 4e72: be          .
	jrnz	L4e7a		;; 4e73: 20 05        .
	lxi	h,L1786		;; 4e75: 21 86 17    ...
	mvi	m,058h		;; 4e78: 36 58       6X
L4e7a:	lda	L1786		;; 4e7a: 3a 86 17    :..
	push	psw		;; 4e7d: f5          .
	call	L1de9		;; 4e7e: cd e9 1d    ...
	sta	L1786		;; 4e81: 32 86 17    2..
	push	psw		;; 4e84: f5          .
	call	L75c9		;; 4e85: cd c9 75    ..u
	db	0ch,0,0,0,0,0,0,0,0,'(',0,84h,5
	call	L7450		;; 4e95: cd 50 74    .Pt
	jrz	L4ea1		;; 4e98: 28 07       (.
	lxi	h,L322a		;; 4e9a: 21 2a 32    .*2
	mvi	m,000h		;; 4e9d: 36 00       6.
	jr	L4ea9		;; 4e9f: 18 08       ..

L4ea1:	call	L1a30		;; 4ea1: cd 30 1a    .0.
	lxi	h,L3225		;; 4ea4: 21 25 32    .%2
	mvi	m,001h		;; 4ea7: 36 01       6.
L4ea9:	lda	L1786		;; 4ea9: 3a 86 17    :..
	cpi	030h		;; 4eac: fe 30       .0
	mvi	a,000h		;; 4eae: 3e 00       >.
	cmc			;; 4eb0: 3f          ?
	ral			;; 4eb1: 17          .
	push	psw		;; 4eb2: f5          .
	lda	L1786		;; 4eb3: 3a 86 17    :..
	cpi	03ah		;; 4eb6: fe 3a       .:
	mvi	a,000h		;; 4eb8: 3e 00       >.
	ral			;; 4eba: 17          .
	mov	b,a		;; 4ebb: 47          G
	pop	psw		;; 4ebc: f1          .
	ana	b		;; 4ebd: a0          .
	rar			;; 4ebe: 1f          .
	jrnc	L4ed3		;; 4ebf: 30 12       0.
	lda	L1786		;; 4ec1: 3a 86 17    :..
	push	psw		;; 4ec4: f5          .
	lxi	b,00001h	;; 4ec5: 01 01 00    ...
	lxi	h,00000h	;; 4ec8: 21 00 00    ...
	push	h		;; 4ecb: e5          .
	push	b		;; 4ecc: c5          .
	call	L4c5a		;; 4ecd: cd 5a 4c    .ZL
	jmp	L50d4		;; 4ed0: c3 d4 50    ..P

L4ed3:	lda	L1786		;; 4ed3: 3a 86 17    :..
	call	L507c		;; 4ed6: cd 7c 50    .|P
L4ed9:	lda	L322a		;; 4ed9: 3a 2a 32    :*2
	inr	a		;; 4edc: 3c          <
	sta	L322a		;; 4edd: 32 2a 32    2*2
	cpi	004h		;; 4ee0: fe 04       ..
	jrnz	L4ee7		;; 4ee2: 20 03        .
	call	L730c		;; 4ee4: cd 0c 73    ..s
L4ee7:	call	L0a8f		;; 4ee7: cd 8f 0a    ...
	jmp	L50d4		;; 4eea: c3 d4 50    ..P

L4eed:	call	L1e41		;; 4eed: cd 41 1e    .A.
	lda	L1785		;; 4ef0: 3a 85 17    :..
	cpi	030h		;; 4ef3: fe 30       .0
	mvi	a,000h		;; 4ef5: 3e 00       >.
	cmc			;; 4ef7: 3f          ?
	ral			;; 4ef8: 17          .
	push	psw		;; 4ef9: f5          .
	lda	L1785		;; 4efa: 3a 85 17    :..
	cpi	03ah		;; 4efd: fe 3a       .:
	mvi	a,000h		;; 4eff: 3e 00       >.
	ral			;; 4f01: 17          .
	mov	b,a		;; 4f02: 47          G
	pop	psw		;; 4f03: f1          .
	ana	b		;; 4f04: a0          .
	rar			;; 4f05: 1f          .
	jrnc	L4f19		;; 4f06: 30 11       0.
	lda	L1785		;; 4f08: 3a 85 17    :..
	push	psw		;; 4f0b: f5          .
	lxi	b,0ffffh	;; 4f0c: 01 ff ff    ...
	lxi	h,0ffffh	;; 4f0f: 21 ff ff    ...
	push	h		;; 4f12: e5          .
	push	b		;; 4f13: c5          .
	call	L4c5a		;; 4f14: cd 5a 4c    .ZL
	jr	L4f23		;; 4f17: 18 0a       ..

L4f19:	lda	L1785		;; 4f19: 3a 85 17    :..
	cpi	020h		;; 4f1c: fe 20       . 
	jrz	L4f23		;; 4f1e: 28 03       (.
	call	L0a8f		;; 4f20: cd 8f 0a    ...
L4f23:	jmp	L50d4		;; 4f23: c3 d4 50    ..P

L4f26:	call	L433f		;; 4f26: cd 3f 43    .?C
	jmp	L50d4		;; 4f29: c3 d4 50    ..P

L4f2c:	lda	L02e1		;; 4f2c: 3a e1 02    :..
	cpi	001h		;; 4f2f: fe 01       ..
	jrnz	L4f38		;; 4f31: 20 05        .
	call	L439f		;; 4f33: cd 9f 43    ..C
	jr	L4f3b		;; 4f36: 18 03       ..

L4f38:	call	L0a8f		;; 4f38: cd 8f 0a    ...
L4f3b:	jmp	L50d4		;; 4f3b: c3 d4 50    ..P

L4f3e:	lda	L02e6		;; 4f3e: 3a e6 02    :..
	lxi	h,L02e3		;; 4f41: 21 e3 02    ...
	cmp	m		;; 4f44: be          .
	jrnc	L4f5d		;; 4f45: 30 16       0.
	lda	L1d56		;; 4f47: 3a 56 1d    :V.
	lxi	h,L02e3		;; 4f4a: 21 e3 02    ...
	cmp	m		;; 4f4d: be          .
	jrc	L4f53		;; 4f4e: 38 03       8.
	call	L2c3e		;; 4f50: cd 3e 2c    .>,
L4f53:	lda	L02e2		;; 4f53: 3a e2 02    :..
	dcr	a		;; 4f56: 3d          =
	push	psw		;; 4f57: f5          .
	call	L0953		;; 4f58: cd 53 09    .S.
	jr	L4f60		;; 4f5b: 18 03       ..

L4f5d:	call	L4ab5		;; 4f5d: cd b5 4a    ..J
L4f60:	jmp	L50d4		;; 4f60: c3 d4 50    ..P

L4f63:	lda	L02e3		;; 4f63: 3a e3 02    :..
	lxi	h,L02e5		;; 4f66: 21 e5 02    ...
	cmp	m		;; 4f69: be          .
	jrnc	L4f76		;; 4f6a: 30 0a       0.
	lda	L02e3		;; 4f6c: 3a e3 02    :..
	inr	a		;; 4f6f: 3c          <
	push	psw		;; 4f70: f5          .
	call	L0953		;; 4f71: cd 53 09    .S.
	jr	L4f79		;; 4f74: 18 03       ..

L4f76:	call	L4b02		;; 4f76: cd 02 4b    ..K
L4f79:	jmp	L50d4		;; 4f79: c3 d4 50    ..P

L4f7c:	call	L4b02		;; 4f7c: cd 02 4b    ..K
	jmp	L50d4		;; 4f7f: c3 d4 50    ..P

L4f82:	call	L4ab5		;; 4f82: cd b5 4a    ..J
	jmp	L50d4		;; 4f85: c3 d4 50    ..P

L4f88:	jmp	L50d4		;; 4f88: c3 d4 50    ..P

L4f8b:	call	L420b		;; 4f8b: cd 0b 42    ..B
	lda	L1786		;; 4f8e: 3a 86 17    :..
	cpi	041h		;; 4f91: fe 41       .A
	jrnz	L4fa4		;; 4f93: 20 0f        .
	mvi	a,011h		;; 4f95: 3e 11       >.
	push	psw		;; 4f97: f5          .
	call	L322e		;; 4f98: cd 2e 32    ..2
	push	h		;; 4f9b: e5          .
	call	L1f12		;; 4f9c: cd 12 1f    ...
	shld	L1789		;; 4f9f: 22 89 17    "..
	jr	L4fb4		;; 4fa2: 18 10       ..

L4fa4:	lda	L02e3		;; 4fa4: 3a e3 02    :..
	mov	l,a		;; 4fa7: 6f          o
	mvi	h,000h		;; 4fa8: 26 00       &.
	dad	h		;; 4faa: 29          )
	lxi	d,L1cc2		;; 4fab: 11 c2 1c    ...
	dad	d		;; 4fae: 19          .
	rst	4		;; 4faf: e7          .
	db	80h
	shld	L1789		;; 4fb1: 22 89 17    "..
L4fb4:	call	L351f		;; 4fb4: cd 1f 35    ..5
	lda	L1786		;; 4fb7: 3a 86 17    :..
	cpi	041h		;; 4fba: fe 41       .A
	jrnz	L4fc7		;; 4fbc: 20 09        .
	mvi	a,020h		;; 4fbe: 3e 20       > 
	push	psw		;; 4fc0: f5          .
	call	L50de		;; 4fc1: cd de 50    ..P
	call	L1dda		;; 4fc4: cd da 1d    ...
L4fc7:	jmp	L50d4		;; 4fc7: c3 d4 50    ..P

L4fca:	call	L4b7b		;; 4fca: cd 7b 4b    .{K
	jmp	L50d4		;; 4fcd: c3 d4 50    ..P

L4fd0:	call	L4bb4		;; 4fd0: cd b4 4b    ..K
	jmp	L50d4		;; 4fd3: c3 d4 50    ..P

L4fd6:	lda	L02e1		;; 4fd6: 3a e1 02    :..
	cpi	001h		;; 4fd9: fe 01       ..
	jrnz	L4fe2		;; 4fdb: 20 05        .
	call	L343b		;; 4fdd: cd 3b 34    .;4
	jr	L4fe5		;; 4fe0: 18 03       ..

L4fe2:	call	L0a8f		;; 4fe2: cd 8f 0a    ...
L4fe5:	jmp	L50d4		;; 4fe5: c3 d4 50    ..P

L4fe8:	call	L367c		;; 4fe8: cd 7c 36    .|6
	jmp	L50d4		;; 4feb: c3 d4 50    ..P

L4fee:	call	L1e41		;; 4fee: cd 41 1e    .A.
	lda	L1785		;; 4ff1: 3a 85 17    :..
	push	psw		;; 4ff4: f5          .
	call	L1811		;; 4ff5: cd 11 18    ...
	call	L314c		;; 4ff8: cd 4c 31    .L1
	mvi	a,020h		;; 4ffb: 3e 20       > 
	push	psw		;; 4ffd: f5          .
	call	L50de		;; 4ffe: cd de 50    ..P
	call	L351f		;; 5001: cd 1f 35    ..5
	jmp	L50d4		;; 5004: c3 d4 50    ..P

L5007:	call	L4116		;; 5007: cd 16 41    ..A
	jmp	L50d4		;; 500a: c3 d4 50    ..P

L500d:	call	L39cc		;; 500d: cd cc 39    ..9
	call	L1dda		;; 5010: cd da 1d    ...
	jmp	L50d4		;; 5013: c3 d4 50    ..P

L5016:	call	L4829		;; 5016: cd 29 48    .)H
	jmp	L50d4		;; 5019: c3 d4 50    ..P

L501c:	call	L4a6a		;; 501c: cd 6a 4a    .jJ
	jmp	L50d4		;; 501f: c3 d4 50    ..P

L5022:	lda	L02e7		;; 5022: 3a e7 02    :..
	lxi	h,L02e8		;; 5025: 21 e8 02    ...
	cmp	m		;; 5028: be          .
	jrnc	L502e		;; 5029: 30 03       0.
	call	L4809		;; 502b: cd 09 48    ..H
L502e:	lda	L02e7		;; 502e: 3a e7 02    :..
	lxi	h,L02e8		;; 5031: 21 e8 02    ...
	cmp	m		;; 5034: be          .
	jrnc	L503c		;; 5035: 30 05       0.
	call	L0a8f		;; 5037: cd 8f 0a    ...
	jr	L5046		;; 503a: 18 0a       ..

L503c:	lda	L02e3		;; 503c: 3a e3 02    :..
	push	psw		;; 503f: f5          .
	call	L3773		;; 5040: cd 73 37    .s7
	call	L1e32		;; 5043: cd 32 1e    .2.
L5046:	jmp	L50d4		;; 5046: c3 d4 50    ..P

L5049:	call	L44f4		;; 5049: cd f4 44    ..D
	jmp	L50d4		;; 504c: c3 d4 50    ..P

L504f:	call	L423e		;; 504f: cd 3e 42    .>B
	jmp	L50d4		;; 5052: c3 d4 50    ..P

L5055:	lhld	L316b		;; 5055: 2a 6b 31    *k1
	push	h		;; 5058: e5          .
	call	L37c0		;; 5059: cd c0 37    ..7
	jr	L50d4		;; 505c: 18 76       .v

L505e:	call	L4c9a		;; 505e: cd 9a 4c    ..L
	jr	L50d4		;; 5061: 18 71       .q

L5063:	lda	L1d3f		;; 5063: 3a 3f 1d    :?.
	ora	a		;; 5066: b7          .
	jrz	L5075		;; 5067: 28 0c       (.
	mvi	a,049h		;; 5069: 3e 49       >I
	push	psw		;; 506b: f5          .
	call	L0466		;; 506c: cd 66 04    .f.
	mvi	a,044h		;; 506f: 3e 44       >D
	push	psw		;; 5071: f5          .
	call	L0466		;; 5072: cd 66 04    .f.
L5075:	jr	L50d4		;; 5075: 18 5d       .]

L5077:	call	L0a8f		;; 5077: cd 8f 0a    ...
	jr	L50d4		;; 507a: 18 58       .X

L507c:	mvi	b,01bh		;; 507c: 06 1b       ..
	call	L8ddc		;; 507e: cd dc 8d    ...
	db ' ' ! dw L5063
	db '''' ! dw L505e
	db '-' ! dw L4eed
	db '.' ! dw L5055
	db '/' ! dw L5049
	db ';' ! dw L5049
	db 'A' ! dw L4f8b
	db 'B' ! dw L4fd6
	db 'C' ! dw L4fca
	db 'D' ! dw L501c
	db 'E' ! dw L4f3e
	db 'F' ! dw L4f8b
	db 'G' ! dw L4ed9
	db 'J' ! dw L4fee
	db 'K' ! dw L4fe8
	db 'L' ! dw L500d
	db 'M' ! dw L4f88
	db 'O' ! dw L5016
	db 'P' ! dw L4f26
	db 'Q' ! dw L5007
	db 'R' ! dw L4fd0
	db 'S' ! dw L4f2c
	db 'V' ! dw L5022
	db 'W' ! dw L4f82
	db 'X' ! dw L4f63
	db 'Y' ! dw L504f
	db 'Z' ! dw L4f7c
	dw	L5077
L50d4:	jmp	L4db6		;; 50d4: c3 b6 4d    ..M

L50d7:	call	L0f05		;; 50d7: cd 05 0f    ...
	jmp	L92b3		;; 50da: c3 b3 92    ...

L50dd:	db	0
L50de:	call	L8d27		;; 50de: cd 27 8d    .'.
	db	9eh,'j'
	lda	L0f9e		;; 50e3: 3a 9e 0f    :..
	sta	L01b1		;; 50e6: 32 b1 01    2..
	lxi	h,L02ec		;; 50e9: 21 ec 02    ...
	mvi	m,009h		;; 50ec: 36 09       6.
	lda	L017f		;; 50ee: 3a 7f 01    :..
	cpi	003h		;; 50f1: fe 03       ..
	cpe	L8c01		;; 50f3: ec 01 8c    ...
	jp	L5103		;; 50f6: f2 03 51    ..Q
	lxi	h,L02ec		;; 50f9: 21 ec 02    ...
	mvi	m,001h		;; 50fc: 36 01       6.
	lxi	h,L1c5b		;; 50fe: 21 5b 1c    .[.
	mvi	m,007h		;; 5101: 36 07       6.
L5103:	lda	L017f		;; 5103: 3a 7f 01    :..
	cpi	003h		;; 5106: fe 03       ..
	cpe	L8c01		;; 5108: ec 01 8c    ...
	call	L8c18		;; 510b: cd 18 8c    ...
	push	psw		;; 510e: f5          .
	lda	L017f		;; 510f: 3a 7f 01    :..
	cpi	002h		;; 5112: fe 02       ..
	cpe	L8c01		;; 5114: ec 01 8c    ...
	call	L8c18		;; 5117: cd 18 8c    ...
	push	psw		;; 511a: f5          .
	ldx	a,-27		;; 511b: dd 7e e5    .~.
	cpi	020h		;; 511e: fe 20       . 
	call	L8c0e		;; 5120: cd 0e 8c    ...
	mov	b,a		;; 5123: 47          G
	pop	psw		;; 5124: f1          .
	ana	b		;; 5125: a0          .
	mov	b,a		;; 5126: 47          G
	pop	psw		;; 5127: f1          .
	ora	b		;; 5128: b0          .
	rar			;; 5129: 1f          .
	jnc	L533b		;; 512a: d2 3b 53    .;S
	lxi	h,L1c5b		;; 512d: 21 5b 1c    .[.
	mvi	m,007h		;; 5130: 36 07       6.
	lxi	h,L01b0		;; 5132: 21 b0 01    ...
	call	L75ea		;; 5135: cd ea 75    ..u
	call	L793e		;; 5138: cd 3e 79    .>y
	stx	a,-43		;; 513b: dd 77 d5    .w.
	rar			;; 513e: 1f          .
	jrnc	L51a1		;; 513f: 30 60       0`
	lxi	h,0ffd6h	;; 5141: 21 d6 ff    ...
	rst	2		;; 5144: d7          .
	push	h		;; 5145: e5          .
	lxi	h,00052h	;; 5146: 21 52 00    .R.
	push	h		;; 5149: e5          .
	lxi	h,L01b0		;; 514a: 21 b0 01    ...
	call	L75ea		;; 514d: cd ea 75    ..u
	call	L7995		;; 5150: cd 95 79    ..y
	lxi	h,0ffd6h	;; 5153: 21 d6 ff    ...
	rst	2		;; 5156: d7          .
	push	h		;; 5157: e5          .
	lxi	h,00052h	;; 5158: 21 52 00    .R.
	push	h		;; 515b: e5          .
	call	L78b6		;; 515c: cd b6 78    ..x
L515f:	call	L763d		;; 515f: cd 3d 76    .=v
	rst	3		;; 5162: df          .
	db	0d6h
	push	h		;; 5164: e5          .
	call	L7682		;; 5165: cd 82 76    ..v
	call	L7bf4		;; 5168: cd f4 7b    ..{
	push	h		;; 516b: e5          .
	lxi	h,0ff83h	;; 516c: 21 83 ff    ...
	rst	2		;; 516f: d7          .
	pop	d		;; 5170: d1          .
	xchg			;; 5171: eb          .
	lxi	b,00052h	;; 5172: 01 52 00    .R.
	ldir			;; 5175: ed b0       ..
	call	L7aed		;; 5177: cd ed 7a    ..z
	call	L768c		;; 517a: cd 8c 76    ..v
	rst	3		;; 517d: df          .
	db	0d6h
	push	h		;; 517f: e5          .
	call	L7ba1		;; 5180: cd a1 7b    ..{
	push	psw		;; 5183: f5          .
	ldx	a,-125		;; 5184: dd 7e 83    .~.
	cmpx	-27		;; 5187: dd be e5    ...
	call	L8c09		;; 518a: cd 09 8c    ...
	mov	b,a		;; 518d: 47          G
	pop	psw		;; 518e: f1          .
	ora	b		;; 518f: b0          .
	push	psw		;; 5190: f5          .
	ldx	a,-125		;; 5191: dd 7e 83    .~.
	cpi	03fh		;; 5194: fe 3f       .?
	call	L8c09		;; 5196: cd 09 8c    ...
	mov	b,a		;; 5199: 47          G
	pop	psw		;; 519a: f1          .
	ora	b		;; 519b: b0          .
	rar			;; 519c: 1f          .
	jrnc	L515f		;; 519d: 30 c0       0.
	jr	L51c2		;; 519f: 18 21       ..

L51a1:	ldx	a,-27		;; 51a1: dd 7e e5    .~.
	stx	a,-125		;; 51a4: dd 77 83    .w.
	lxi	b,03f01h	;; 51a7: 01 01 3f    ..?
	push	b		;; 51aa: c5          .
	lxi	h,L01b0		;; 51ab: 21 b0 01    ...
	call	L75ea		;; 51ae: cd ea 75    ..u
	call	L8b20		;; 51b1: cd 20 8b    . .
	lxi	h,0ff84h	;; 51b4: 21 84 ff    ...
	rst	2		;; 51b7: d7          .
	mvi	a,050h		;; 51b8: 3e 50       >P
	call	L8b81		;; 51ba: cd 81 8b    ...
	lxi	h,L017f		;; 51bd: 21 7f 01    ...
	mvi	m,000h		;; 51c0: 36 00       6.
L51c2:	ldx	a,-125		;; 51c2: dd 7e 83    .~.
	sta	L50dd		;; 51c5: 32 dd 50    2.P
	call	L1ae6		;; 51c8: cd e6 1a    ...
	lda	L1c5b		;; 51cb: 3a 5b 1c    :[.
	mov	b,a		;; 51ce: 47          G
	mvi	a,000h		;; 51cf: 3e 00       >.
	call	L894e		;; 51d1: cd 4e 89    .N.
	stx	b,-126		;; 51d4: dd 70 82    .p.
	jc	L532f		;; 51d7: da 2f 53    ./S
L51da:	stx	a,-30		;; 51da: dd 77 e2    .w.
	lxi	b,00000h	;; 51dd: 01 00 00    ...
	mov	l,a		;; 51e0: 6f          o
	mvi	h,000h		;; 51e1: 26 00       &.
	dad	b		;; 51e3: 09          .
	inx	h		;; 51e4: 23          #
	mov	a,l		;; 51e5: 7d          }
	push	psw		;; 51e6: f5          .
	call	L0953		;; 51e7: cd 53 09    .S.
	mvix	000h,-33	;; 51ea: dd 36 df 00 .6..
	mvix	001h,-31	;; 51ee: dd 36 e1 01 .6..
	call	L51f8		;; 51f2: cd f8 51    ..Q
	db	'OFF'
L51f8:	call	L75e5		;; 51f8: cd e5 75    ..u
	db	3
	lxi	h,0ffdah	;; 51fc: 21 da ff    ...
	rst	2		;; 51ff: d7          .
	mvi	a,003h		;; 5200: 3e 03       >.
	call	L8b81		;; 5202: cd 81 8b    ...
L5205:	ldx	a,-124		;; 5205: dd 7e 84    .~.
	mov	b,a		;; 5208: 47          G
	ldx	a,-31		;; 5209: dd 7e e1    .~.
	push	psw		;; 520c: f5          .
	mov	a,b		;; 520d: 78          x
	pop	b		;; 520e: c1          .
	cmp	b		;; 520f: b8          .
	jc	L52f1		;; 5210: da f1 52    ..R
	ldx	a,-33		;; 5213: dd 7e df    .~.
	rar			;; 5216: 1f          .
	jrnc	L523a		;; 5217: 30 21       0.
	ldx	a,-39		;; 5219: dd 7e d9    .~.
	inr	a		;; 521c: 3c          <
	stx	a,-39		;; 521d: dd 77 d9    .w.
	rst	4		;; 5220: e7          .
	db	84h
	rst	2		;; 5222: d7          .
	lxi	d,0ffdah	;; 5223: 11 da ff    ...
	dad	d		;; 5226: 19          .
	mov	a,m		;; 5227: 7e          ~
	push	psw		;; 5228: f5          .
	call	L0597		;; 5229: cd 97 05    ...
	ldx	a,-39		;; 522c: dd 7e d9    .~.
	cpi	003h		;; 522f: fe 03       ..
	jrnz	L5237		;; 5231: 20 04        .
	mvix	000h,-33	;; 5233: dd 36 df 00 .6..
L5237:	jmp	L52e7		;; 5237: c3 e7 52    ..R

L523a:	ldx	l,-31		;; 523a: dd 6e e1    .n.
	mvi	h,000h		;; 523d: 26 00       &.
	rst	2		;; 523f: d7          .
	lxi	d,0ff84h	;; 5240: 11 84 ff    ...
	dad	d		;; 5243: 19          .
	mov	a,m		;; 5244: 7e          ~
	stx	a,-32		;; 5245: dd 77 e0    .w.
	cpi	025h		;; 5248: fe 25       .%
	jnz	L52d2		;; 524a: c2 d2 52    ..R
	mvix	001h,-39	;; 524d: dd 36 d9 01 .6..
	mvix	000h,-34	;; 5251: dd 36 de 00 .6..
	ldx	a,-125		;; 5255: dd 7e 83    .~.
	cpi	04fh		;; 5258: fe 4f       .O
	jrnz	L52d0		;; 525a: 20 74        t
	ldx	a,-31		;; 525c: dd 7e e1    .~.
	inr	a		;; 525f: 3c          <
	mov	l,a		;; 5260: 6f          o
	mvi	h,000h		;; 5261: 26 00       &.
	rst	2		;; 5263: d7          .
	lxi	d,0ff84h	;; 5264: 11 84 ff    ...
	dad	d		;; 5267: 19          .
	mov	a,m		;; 5268: 7e          ~
	call	L529d		;; 5269: cd 9d 52    ..R
L526c:	lda	L0181		;; 526c: 3a 81 01    :..
	stx	a,-34		;; 526f: dd 77 de    .w.
	jr	L52ad		;; 5272: 18 39       .9

L5274:	lda	L0182		;; 5274: 3a 82 01    :..
	stx	a,-34		;; 5277: dd 77 de    .w.
	jr	L52ad		;; 527a: 18 31       .1

L527c:	lda	L0180		;; 527c: 3a 80 01    :..
	ora	a		;; 527f: b7          .
	jrz	L529b		;; 5280: 28 19       (.
	call	L5288		;; 5282: cd 88 52    ..R
	db	''' '''
L5288:	call	L75e5		;; 5288: cd e5 75    ..u
	db	3
	lxi	h,0ffdah	;; 528c: 21 da ff    ...
	rst	2		;; 528f: d7          .
	mvi	a,003h		;; 5290: 3e 03       >.
	call	L8b81		;; 5292: cd 81 8b    ...
	lda	L0180		;; 5295: 3a 80 01    :..
	stx	a,-36		;; 5298: dd 77 dc    .w.
L529b:	jr	L52ad		;; 529b: 18 10       ..

L529d:	mvi	b,003h		;; 529d: 06 03       ..
	call	L8ddc		;; 529f: cd dc 8d    ...
	db 'f' ! dw L526c
	db 's' ! dw L527c
	db 'u' ! dw L5274
	dw	L8e06
L52ad:	ldx	a,-34		;; 52ad: dd 7e de    .~.
	rar			;; 52b0: 1f          .
	jrnc	L52c6		;; 52b1: 30 13       0.
	call	L52b9		;; 52b3: cd b9 52    ..R
	db	'ON '
L52b9:	call	L75e5		;; 52b9: cd e5 75    ..u
	db	3
	lxi	h,0ffdah	;; 52bd: 21 da ff    ...
	rst	2		;; 52c0: d7          .
	mvi	a,003h		;; 52c1: 3e 03       >.
	call	L8b81		;; 52c3: cd 81 8b    ...
L52c6:	ldx	a,-37		;; 52c6: dd 7e db    .~.
	stx	a,-32		;; 52c9: dd 77 e0    .w.
	mvix	001h,-33	;; 52cc: dd 36 df 01 .6..
L52d0:	jr	L52e0		;; 52d0: 18 0e       ..

L52d2:	ldx	a,-32		;; 52d2: dd 7e e0    .~.
	push	psw		;; 52d5: f5          .
	lda	L017c		;; 52d6: 3a 7c 01    :|.
	push	psw		;; 52d9: f5          .
	call	L72f2		;; 52da: cd f2 72    ..r
	stx	a,-32		;; 52dd: dd 77 e0    .w.
L52e0:	ldx	a,-32		;; 52e0: dd 7e e0    .~.
	push	psw		;; 52e3: f5          .
	call	L0597		;; 52e4: cd 97 05    ...
L52e7:	ldx	a,-31		;; 52e7: dd 7e e1    .~.
	inr	a		;; 52ea: 3c          <
	stx	a,-31		;; 52eb: dd 77 e1    .w.
	jmp	L5205		;; 52ee: c3 05 52    ..R

L52f1:	call	L0977		;; 52f1: cd 77 09    .w.
	ldx	a,-30		;; 52f4: dd 7e e2    .~.
	lxi	h,L1c5b		;; 52f7: 21 5b 1c    .[.
	cmp	m		;; 52fa: be          .
	jrz	L5325		;; 52fb: 28 28       ((
	ldx	a,-43		;; 52fd: dd 7e d5    .~.
	rar			;; 5300: 1f          .
	jrnc	L5325		;; 5301: 30 22       0"
	call	L763d		;; 5303: cd 3d 76    .=v
	ldx	l,-42		;; 5306: dd 6e d6    .n.
	ldx	h,-41		;; 5309: dd 66 d7    .f.
	push	h		;; 530c: e5          .
	call	L7682		;; 530d: cd 82 76    ..v
	call	L7bf4		;; 5310: cd f4 7b    ..{
	push	h		;; 5313: e5          .
	lxi	h,0ff83h	;; 5314: 21 83 ff    ...
	rst	2		;; 5317: d7          .
	pop	d		;; 5318: d1          .
	xchg			;; 5319: eb          .
	lxi	b,00052h	;; 531a: 01 52 00    .R.
	ldir			;; 531d: ed b0       ..
	call	L7aed		;; 531f: cd ed 7a    ..z
	call	L768c		;; 5322: cd 8c 76    ..v
L5325:	ldx	a,-30		;; 5325: dd 7e e2    .~.
	inr	a		;; 5328: 3c          <
	dcrx	-126		;; 5329: dd 35 82    .5.
	jnz	L51da		;; 532c: c2 da 51    ..Q
L532f:	ldx	a,-43		;; 532f: dd 7e d5    .~.
	rar			;; 5332: 1f          .
	jrnc	L533b		;; 5333: 30 06       0.
	rst	3		;; 5335: df          .
	db	0d6h
	push	h		;; 5337: e5          .
	call	L78e7		;; 5338: cd e7 78    ..x
L533b:	lda	L02ec		;; 533b: 3a ec 02    :..
	sta	L02eb		;; 533e: 32 eb 02    2..
	inr	a		;; 5341: 3c          <
	sta	L02ea		;; 5342: 32 ea 02    2..
	lda	L02e1		;; 5345: 3a e1 02    :..
	push	psw		;; 5348: f5          .
	call	L1d5d		;; 5349: cd 5d 1d    .].
	lda	L02e2		;; 534c: 3a e2 02    :..
	lxi	h,L02ea		;; 534f: 21 ea 02    ...
	cmp	m		;; 5352: be          .
	jrc	L535a		;; 5353: 38 05       8.
	call	L1e32		;; 5355: cd 32 1e    .2.
	jr	L535d		;; 5358: 18 03       ..

L535a:	call	L1dda		;; 535a: cd da 1d    ...
L535d:	lxi	h,L1c5b		;; 535d: 21 5b 1c    .[.
	mvi	m,000h		;; 5360: 36 00       6.
	call	L76d6		;; 5362: cd d6 76    ..v
	jmp	L8d56		;; 5365: c3 56 8d    .V.

L5368:	call	L8d27		;; 5368: cd 27 8d    .'.
	db	0,6
	lda	L50dd		;; 536d: 3a dd 50    :.P
	cpi	020h		;; 5370: fe 20       . 
	call	L8c0e		;; 5372: cd 0e 8c    ...
	push	psw		;; 5375: f5          .
	mvi	a,000h		;; 5376: 3e 00       >.
	lxi	h,L1c5b		;; 5378: 21 5b 1c    .[.
	cmp	m		;; 537b: be          .
	mvi	a,000h		;; 537c: 3e 00       >.
	ral			;; 537e: 17          .
	mov	b,a		;; 537f: 47          G
	pop	psw		;; 5380: f1          .
	ora	b		;; 5381: b0          .
	rar			;; 5382: 1f          .
	jrnc	L538b		;; 5383: 30 06       0.
	mvi	a,020h		;; 5385: 3e 20       > 
	push	psw		;; 5387: f5          .
	call	L50de		;; 5388: cd de 50    ..P
L538b:	jmp	L8d56		;; 538b: c3 56 8d    .V.

L538e:	call	L8d27		;; 538e: cd 27 8d    .'.
	db	0,8
	mvi	a,099h		;; 5393: 3e 99       >.
	cmpx	-125		;; 5395: dd be 83    ...
	jrnc	L53a0		;; 5398: 30 06       0.
	mvi	a,030h		;; 539a: 3e 30       >0
	push	psw		;; 539c: f5          .
	call	L0597		;; 539d: cd 97 05    ...
L53a0:	mvi	a,009h		;; 53a0: 3e 09       >.
	cmpx	-125		;; 53a2: dd be 83    ...
	jrnc	L53b7		;; 53a5: 30 10       0.
	ldx	a,-125		;; 53a7: dd 7e 83    .~.
	push	psw		;; 53aa: f5          .
	call	L5412		;; 53ab: cd 12 54    ..T
L53ac	equ	$-2
	lda	L01ae		;; 53ae: 3a ae 01    :..
	push	psw		;; 53b1: f5          .
	call	L0597		;; 53b2: cd 97 05    ...
	jr	L53be		;; 53b5: 18 07       ..

L53b7:	ldx	a,-125		;; 53b7: dd 7e 83    .~.
	push	psw		;; 53ba: f5          .
	call	L07a7		;; 53bb: cd a7 07    ...
L53be:	jmp	L8d56		;; 53be: c3 56 8d    .V.

L53c1:	call	L8d27		;; 53c1: cd 27 8d    .'.
	db	0,8
	ldx	c,-126		;; 53c6: dd 4e 82    .N.
	ldx	b,-125		;; 53c9: dd 46 83    .F.
	lxi	h,09999h	;; 53cc: 21 99 99    ...
	ora	a		;; 53cf: b7          .
	dsbc	b		;; 53d0: ed 42       .B
	jrnc	L53da		;; 53d2: 30 06       0.
	mvi	a,030h		;; 53d4: 3e 30       >0
	push	psw		;; 53d6: f5          .
	call	L0597		;; 53d7: cd 97 05    ...
L53d8	equ	$-2
L53da:	ldx	c,-126		;; 53da: dd 4e 82    .N.
	ldx	b,-125		;; 53dd: dd 46 83    .F.
	lxi	h,00009h	;; 53e0: 21 09 00    ...
	ora	a		;; 53e3: b7          .
	dsbc	b		;; 53e4: ed 42       .B
	jrnc	L53f7		;; 53e6: 30 0f       0.
L53e7	equ	$-1
	rst	3		;; 53e8: df          .
	db	82h
	push	h		;; 53ea: e5          .
	call	L5428		;; 53eb: cd 28 54    .(T
	lda	L01ae		;; 53ee: 3a ae 01    :..
	push	psw		;; 53f1: f5          .
	call	L0597		;; 53f2: cd 97 05    ...
	jr	L53fd		;; 53f5: 18 06       ..

L53f7:	rst	3		;; 53f7: df          .
	db	82h
	push	h		;; 53f9: e5          .
	call	L07d2		;; 53fa: cd d2 07    ...
L53fd:	jmp	L8d56		;; 53fd: c3 56 8d    .V.

L5400:	pop	h		;; 5400: e1          .
	pop	psw		;; 5401: f1          .
	push	h		;; 5402: e5          .
	cpi	00ah		;; 5403: fe 0a       ..
	jrnc	L540b		;; 5405: 30 04       0.
	adi	030h		;; 5407: c6 30       .0
	jr	L540d		;; 5409: 18 02       ..

L540b:	adi	037h		;; 540b: c6 37       .7
L540d:	push	psw		;; 540d: f5          .
	call	L0597		;; 540e: cd 97 05    ...
	ret			;; 5411: c9          .

L5412:	pop	h		;; 5412: e1          .
	pop	psw		;; 5413: f1          .
	push	h		;; 5414: e5          .
	push	psw		;; 5415: f5          .
	push	psw		;; 5416: f5          .
	mvi	a,010h		;; 5417: 3e 10       >.
	call	L89b1		;; 5419: cd b1 89    ...
	push	psw		;; 541c: f5          .
	call	L5400		;; 541d: cd 00 54    ..T
	pop	psw		;; 5420: f1          .
	ani	00fh		;; 5421: e6 0f       ..
	push	psw		;; 5423: f5          .
	call	L5400		;; 5424: cd 00 54    ..T
	ret			;; 5427: c9          .

L5428:	pop	d		;; 5428: d1          .
	pop	h		;; 5429: e1          .
	push	d		;; 542a: d5          .
	push	h		;; 542b: e5          .
	mov	a,h		;; 542c: 7c          |
	push	psw		;; 542d: f5          .
	call	L5412		;; 542e: cd 12 54    ..T
	pop	h		;; 5431: e1          .
	mov	a,l		;; 5432: 7d          }
	push	psw		;; 5433: f5          .
	call	L5412		;; 5434: cd 12 54    ..T
	ret			;; 5437: c9          .

	db	0f3h,1,2,2,2,2,'y',2
L5440:	db	1ah,3,0,0,0,0,0,0,'88',18h,0,'8',18h,'8',10h
	db	8,1,0c0h,0,3,0,3,0,'8',7,'0',10h,'008',0
	db	0,4,0,0,0,0,0,0,0,0,0,0,0,0,';',1
	db	'_',1,'g',1,0,0,'g',1,'s',1,'s',1,87h,1,8ah,1
	db	8ah,1,90h,1,0,0,9ah,1,0,0,0a3h,1,0,0,0abh,1
	db	0b6h,1,0c1h,1,0c9h,1,0c9h,1,0d1h,1,0d8h,1,0,0,0,0
	db	0ech,1
L54a2:	db	0,0ffh
	db	'NO','P'+80h
	db	76h,0ffh
	db	'[HAL','T'+80h
	db	80h,0c0h
	db	'a','r'+80h
	db	40h,0c0h
	db	'LD q,','r'+80h
	db	0c0h,0c7h
	db	'RET ','e'+80h
	db	4,0c6h
	db	'j ','q'+80h
	db	0c6h,0c7h
	db	'a','n'+80h
	db	0c9h,0ffh
	db	'[RE','T'+80h
	db	20h,0e7h
	db	'JR c,','x'+80h
	db	10h,0ffh
	db	'DJNZ ','x'+80h
	db	18h,0ffh
	db	'[JR ','x'+80h
	db	6,0c7h
	db	'LD q,','n'+80h
	db	0c3h,0ffh
	db	'[JP ','l'+80h
	db	0cdh,0ffh
	db	'CALL ','l'+80h
	db	22h,0efh
	db	'LD (l),','h'+80h
	db	2ah,0efh
	db	'LD h,(l',')'+80h
	db	0c2h,0c7h
	db	'JP e,','l'+80h
	db	0c4h,0c7h
	db	'CALL e,','l'+80h
	db	1,0cfh
	db	'LD s,','l'+80h
	db	7,0e7h
	db	'f','A'+80h
	db	27h,0ffh
	db	'DA','A'+80h
	db	2fh,0ffh
	db	'CP','L'+80h
	db	37h,0ffh
	db	'SC','F'+80h
	db	3fh,0ffh
	db	'CC','F'+80h
	db	0e3h,0ffh
	db	'EX (SP),H','L'+80h
	db	0e9h,0ffh
	db	'[JP (HL',')'+80h
	db	0ebh,0ffh
	db	'EX DE,H','L'+80h
	db	0f3h,0ffh
	db	'D','I'+80h
	db	0f9h,0ffh
	db	'LD SP,H','L'+80h
	db	0fbh,0ffh
	db	'E','I'+80h
	db	0d9h,0ffh
	db	'EX','X'+80h
	db	2,0efh
	db	'LD (t),','A'+80h
	db	0ah,0efh
	db	'LD A,(t',')'+80h
	db	0c1h,0cbh
	db	'z ','u'+80h
	db	3,0c7h
	db	'i ','s'+80h
	db	9,0cfh
	db	'ADD HL,','s'+80h
	db	0c7h,0c7h
	db	'RST ','w'+80h
	db	0d3h,0ffh
	db	'OUT (p),','A'+80h
	db	0dbh,0ffh
	db	'IN A,(p',')'+80h
	db	0cbh,0ffh
	db	'*','0'+80h
	db	0ddh,0ffh
	db	'*','1'+80h
	db	0fdh,0ffh
	db	'*','2'+80h
	db	0edh,0ffh
	db	'*','3'+80h
	db	8,0ffh
	db	'EX AF,AF',''''+80h
	db	0,0,0
	db	'ADD A',','+80h
	db	'ADC A',','+80h
	db	'SUB',' '+80h
	db	'SBC A',','+80h
	db	'AND',' '+80h
	db	'XOR',' '+80h
	db	'OR',' '+80h
	db	'CP',' '+80h
	db	'0'+80h
	db	'1'+80h
	db	'2'+80h
	db	'3'+80h
	db	'4'+80h
	db	'5'+80h
	db	'6'+80h
	db	'7'+80h
	db	'N','Z'+80h
	db	'Z'+80h
	db	'N','C'+80h
	db	'C'+80h
	db	'P','O'+80h
	db	'P','E'+80h
	db	'P'+80h
	db	'M'+80h
	db	'RL','C'+80h
	db	'RR','C'+80h
	db	'R','L'+80h
	db	'R','R'+80h
	db	'SL','A'+80h
	db	'SR','A'+80h
	db	'?'+80h
	db	'SR','L'+80h
	db	'H','L'+80h
	db	'A'+80h
	db	'IN','C'+80h
	db	'DE','C'+80h
	db	'?'+80h
	db	'BI','T'+80h
	db	'RE','S'+80h
	db	'SE','T'+80h
	db	'L','D'+80h
	db	'C','P'+80h
	db	'I','N'+80h
	db	'OU','T'+80h
	db	'L','D'+80h
	db	'C','P'+80h
	db	'I','N'+80h
	db	'O','T'+80h
	db	'B'+80h
	db	'C'+80h
	db	'D'+80h
	db	'E'+80h
	db	'H'+80h
	db	'L'+80h
	db	'(HL',')'+80h
	db	'A'+80h
	db	'B'+80h
	db	'C'+80h
	db	'D'+80h
	db	'E'+80h
	db	'H'+80h
	db	'L'+80h
	db	'(HL',')'+80h
	db	'A'+80h
	db	'B','C'+80h
	db	'D','E'+80h
	db	'H','L'+80h
	db	'S','P'+80h
	db	'B','C'+80h
	db	'D','E'+80h
	db	'H','L'+80h
	db	'A','F'+80h
	db	'B','C'+80h
	db	'D','E'+80h
	db	'y'+80h
	db	'S','P'+80h
	db	'0'+80h
	db	'8'+80h
	db	'10','H'+80h
	db	'18','H'+80h
	db	'20','H'+80h
	db	'28','H'+80h
	db	'30','H'+80h
	db	'38','H'+80h
	db	'PO','P'+80h
	db	'PUS','H'+80h
	db	0,0c0h
	db	'g ','r'+80h
	db	0,0
	db	'k b,','r'+80h
	db	0,0,0
	db	23h,0f7h
	db	'i ','y'+80h
	db	0e1h,0fbh
	db	'z ','y'+80h
	db	0e3h,0ffh
	db	'EX (SP),','y'+80h
	db	0e9h,0ffh
	db	'[JP (y',')'+80h
	db	0f9h,0ffh
	db	'LD SP,','y'+80h
	db	9,0cfh
	db	'ADD y,','v'+80h
	db	86h,0c7h
	db	'a','d'+80h
	db	34h,0feh
	db	'j ','d'+80h
	db	76h,0ffh
	db	'?'+80h
	db	46h,0c7h
	db	'LD q,','d'+80h
	db	70h,0f8h
	db	'LD d,','r'+80h
	db	36h,0ffh
	db	'LD d,','n'+80h
	db	21h,0ffh
	db	'LD y,','l'+80h
	db	22h,0ffh
	db	'LD (l),','y'+80h
	db	2ah,0ffh
	db	'LD y,(l',')'+80h
	db	0cbh,0ffh
	db	'*','4'+80h
	db	0,0,0
	db	44h,0ffh
	db	'NE','G'+80h
	db	45h,0ffh
	db	'[RET','N'+80h
	db	47h,0ffh
	db	'LD I,','A'+80h
	db	57h,0ffh
	db	'LD A,','I'+80h
	db	4dh,0ffh
	db	'[RET','I'+80h
	db	4fh,0ffh
	db	'LD R,','A'+80h
	db	5fh,0ffh
	db	'LD A,','R'+80h
	db	67h,0ffh
	db	'RR','D'+80h
	db	6fh,0ffh
	db	'RL','D'+80h
	db	0a0h,0fch
	db	'm','I'+80h
	db	0a8h,0fch
	db	'm','D'+80h
	db	0b0h,0fch
	db	'oI','R'+80h
	db	0b8h,0fch
	db	'oD','R'+80h
	db	46h,0ffh
	db	'IM ','0'+80h
	db	56h,0ffh
	db	'IM ','1'+80h
	db	5eh,0ffh
	db	'IM ','2'+80h
	db	40h,0c7h
	db	'IN q,(C',')'+80h
	db	41h,0c7h
	db	'OUT (C),','q'+80h
	db	42h,0cfh
	db	'SBC HL,','s'+80h
	db	4ah,0cfh
	db	'ADC HL,','s'+80h
	db	43h,0cfh
	db	'LD (l),','s'+80h
	db	4bh,0cfh
	db	'LD s,(l',')'+80h
	db	0,0,0
	db	6,0c7h
	db	'g ','d'+80h
	db	6,7
	db	'k b,','d'+80h
	db	0,0,0
	db	0,0
L57cd:	call	L8d27		;; 57cd: cd 27 8d    .'.
	db	0e2h,'('
	rst	3		;; 57d2: df          .
	db	0a2h
	push	h		;; 57d4: e5          .
	ldx	l,-95		;; 57d5: dd 6e a1    .n.
	mvi	h,000h		;; 57d8: 26 00       &.
	lxi	b,00001h	;; 57da: 01 01 00    ...
	push	b		;; 57dd: c5          .
	push	h		;; 57de: e5          .
	call	L73c9		;; 57df: cd c9 73    ..s
	call	L75c9		;; 57e2: cd c9 75    ..u
	db	8,0,0,0,0,0,0,0,80h
	call	L7514		;; 57ee: cd 14 75    ..u
	call	L7397		;; 57f1: cd 97 73    ..s
	db	10h
	lxi	h,0ff9dh	;; 57f5: 21 9d ff    ...
	rst	2		;; 57f8: d7          .
	push	h		;; 57f9: e5          .
	call	L60f2		;; 57fa: cd f2 60    ..`
	mvix	001h,-126	;; 57fd: dd 36 82 01 .6..
	lda	L1c53		;; 5801: 3a 53 1c    :S.
	xri	001h		;; 5804: ee 01       ..
	rar			;; 5806: 1f          .
	jnc	L589e		;; 5807: d2 9e 58    ..X
	lda	L1d51		;; 580a: 3a 51 1d    :Q.
	xri	001h		;; 580d: ee 01       ..
	stx	a,-100		;; 580f: dd 77 9c    .w.
	lxi	h,0ff8ch	;; 5812: 21 8c ff    ...
	rst	2		;; 5815: d7          .
	push	h		;; 5816: e5          .
	call	L75c9		;; 5817: cd c9 75    ..u
	db	0bh,0,0,0,0,0,0,0,0,4,0,90h
	call	L7546		;; 5826: cd 46 75    .Fu
	db	10h
	ldx	a,-95		;; 582a: dd 7e a1    .~.
	push	psw		;; 582d: f5          .
	call	L75c9		;; 582e: cd c9 75    ..u
	db	0bh,0,0,0,0,0,0,0,0,0,10h,4
	call	L7450		;; 583d: cd 50 74    .Pt
	jrz	L585d		;; 5840: 28 1b       (.
	mvix	001h,-100	;; 5842: dd 36 9c 01 .6..
	lxi	h,0ff8ch	;; 5846: 21 8c ff    ...
	rst	2		;; 5849: d7          .
	push	h		;; 584a: e5          .
	call	L75c9		;; 584b: cd c9 75    ..u
	db	0ah,0,0,0,0,0,0,0,0,8,10h
	call	L7546		;; 5859: cd 46 75    .Fu
	db	10h
L585d:	ldx	a,-95		;; 585d: dd 7e a1    .~.
	push	psw		;; 5860: f5          .
	call	L75c9		;; 5861: cd c9 75    ..u
	db	0ch,0,0,0,0,0,0,0,0,0,'@',1,3
	call	L7450		;; 5871: cd 50 74    .Pt
	jrnz	L589e		;; 5874: 20 28        (
	ldx	a,-100		;; 5876: dd 7e 9c    .~.
	rar			;; 5879: 1f          .
	jrnc	L5893		;; 587a: 30 17       0.
	rst	3		;; 587c: df          .
	db	0a2h
	push	h		;; 587e: e5          .
	lxi	h,0ff8ch	;; 587f: 21 8c ff    ...
	rst	2		;; 5882: d7          .
	call	L75be		;; 5883: cd be 75    ..u
	db	10h
	call	L7397		;; 5887: cd 97 73    ..s
	db	10h
	lxi	h,0ff9dh	;; 588b: 21 9d ff    ...
	rst	2		;; 588e: d7          .
	push	h		;; 588f: e5          .
	call	L60f2		;; 5890: cd f2 60    ..`
L5893:	lda	L1c53		;; 5893: 3a 53 1c    :S.
	rar			;; 5896: 1f          .
	jrnc	L589e		;; 5897: 30 05       0.
	lxi	h,L1c59		;; 5899: 21 59 1c    .Y.
	mvi	m,023h		;; 589c: 36 23       6#
L589e:	lda	L1c53		;; 589e: 3a 53 1c    :S.
	rar			;; 58a1: 1f          .
	jrnc	L58ce		;; 58a2: 30 2a       0*
	mvix	000h,-126	;; 58a4: dd 36 82 00 .6..
	lda	L0181		;; 58a8: 3a 81 01    :..
	stx	a,-97		;; 58ab: dd 77 9f    .w.
	lda	L1c10		;; 58ae: 3a 10 1c    :..
	ora	a		;; 58b1: b7          .
	jrnz	L58c1		;; 58b2: 20 0d        .
	lda	L1c59		;; 58b4: 3a 59 1c    :Y.
	ora	a		;; 58b7: b7          .
	jrnz	L58bf		;; 58b8: 20 05        .
	lxi	h,L1c59		;; 58ba: 21 59 1c    .Y.
	mvi	m,02bh		;; 58bd: 36 2b       6+
L58bf:	jr	L58cc		;; 58bf: 18 0b       ..

L58c1:	lda	L1c11		;; 58c1: 3a 11 1c    :..
	cpi	020h		;; 58c4: fe 20       . 
	jrnz	L58cc		;; 58c6: 20 04        .
	mvix	001h,-97	;; 58c8: dd 36 9f 01 .6..
L58cc:	jr	L58d7		;; 58cc: 18 09       ..

L58ce:	mvix	001h,-97	;; 58ce: dd 36 9f 01 .6..
	lxi	h,L1c59		;; 58d2: 21 59 1c    .Y.
	mvi	m,02ah		;; 58d5: 36 2a       6*
L58d7:	ldx	a,-95		;; 58d7: dd 7e a1    .~.
	call	L59e8		;; 58da: cd e8 59    ..Y
L58dd:	lda	L1c53		;; 58dd: 3a 53 1c    :S.
	xri	001h		;; 58e0: ee 01       ..
	rar			;; 58e2: 1f          .
	jrnc	L58ea		;; 58e3: 30 05       0.
	lxi	h,L1c59		;; 58e5: 21 59 1c    .Y.
	mvi	m,02eh		;; 58e8: 36 2e       6.
L58ea:	mvix	000h,-126	;; 58ea: dd 36 82 00 .6..
	ldx	a,-94		;; 58ee: dd 7e a2    .~.
	push	psw		;; 58f1: f5          .
	call	L20b8		;; 58f2: cd b8 20    .. 
	push	psw		;; 58f5: f5          .
	ldx	a,-95		;; 58f6: dd 7e a1    .~.
	cpi	04eh		;; 58f9: fe 4e       .N
	call	L8c09		;; 58fb: cd 09 8c    ...
	mov	b,a		;; 58fe: 47          G
	pop	psw		;; 58ff: f1          .
	ana	b		;; 5900: a0          .
	push	psw		;; 5901: f5          .
	lda	L1c0e		;; 5902: 3a 0e 1c    :..
	cpi	04dh		;; 5905: fe 4d       .M
	call	L8c09		;; 5907: cd 09 8c    ...
	mov	b,a		;; 590a: 47          G
	pop	psw		;; 590b: f1          .
	ana	b		;; 590c: a0          .
	rar			;; 590d: 1f          .
	jrnc	L593c		;; 590e: 30 2c       0,
	mvi	a,027h		;; 5910: 3e 27       >'
	push	psw		;; 5912: f5          .
	call	L0597		;; 5913: cd 97 05    ...
	ldx	a,-94		;; 5916: dd 7e a2    .~.
	push	psw		;; 5919: f5          .
	call	L0597		;; 591a: cd 97 05    ...
	mvi	a,027h		;; 591d: 3e 27       >'
	push	psw		;; 591f: f5          .
	call	L0597		;; 5920: cd 97 05    ...
	mvi	a,003h		;; 5923: 3e 03       >.
	push	psw		;; 5925: f5          .
	call	L0d9b		;; 5926: cd 9b 0d    ...
	call	L592e		;; 5929: cd 2e 59    ..Y
	db	'; '
L592e:	call	L75e5		;; 592e: cd e5 75    ..u
	db	2
	mvi	a,037h		;; 5932: 3e 37       >7
	call	L8bb0		;; 5934: cd b0 8b    ...
	call	L0803		;; 5937: cd 03 08    ...
	jr	L594c		;; 593a: 18 10       ..

L593c:	lda	L1c53		;; 593c: 3a 53 1c    :S.
	anax	-97		;; 593f: dd a6 9f    ...
	rar			;; 5942: 1f          .
	jrnc	L594c		;; 5943: 30 07       0.
	ldx	a,-95		;; 5945: dd 7e a1    .~.
	push	psw		;; 5948: f5          .
	call	L0597		;; 5949: cd 97 05    ...
L594c:	ldx	a,-97		;; 594c: dd 7e 9f    .~.
	rar			;; 594f: 1f          .
	jrnc	L59bd		;; 5950: 30 6b       0k
	lda	L1c53		;; 5952: 3a 53 1c    :S.
	rar			;; 5955: 1f          .
	jrnc	L5961		;; 5956: 30 09       0.
	ldx	a,-94		;; 5958: dd 7e a2    .~.
	push	psw		;; 595b: f5          .
	call	L5412		;; 595c: cd 12 54    ..T
	jr	L59bd		;; 595f: 18 5c       .\

L5961:	ldx	a,-95		;; 5961: dd 7e a1    .~.
	push	psw		;; 5964: f5          .
	call	L75c9		;; 5965: cd c9 75    ..u
	db	0ch,0,0,0,0,0,0,0,0,0,0,0,3
	call	L7450		;; 5975: cd 50 74    .Pt
	call	L8c0e		;; 5978: cd 0e 8c    ...
	push	psw		;; 597b: f5          .
	lxi	b,00080h	;; 597c: 01 80 00    ...
	rst	3		;; 597f: df          .
	db	0a2h
	ora	a		;; 5981: b7          .
	dsbc	b		;; 5982: ed 42       .B
	mvi	a,000h		;; 5984: 3e 00       >.
	cmc			;; 5986: 3f          ?
	ral			;; 5987: 17          .
	mov	b,a		;; 5988: 47          G
	pop	psw		;; 5989: f1          .
	ana	b		;; 598a: a0          .
	rar			;; 598b: 1f          .
	jrnc	L59b6		;; 598c: 30 28       0(
	lda	L02e3		;; 598e: 3a e3 02    :..
	push	psw		;; 5991: f5          .
	lda	L02ee		;; 5992: 3a ee 02    :..
	dcr	a		;; 5995: 3d          =
	push	psw		;; 5996: f5          .
	call	L0889		;; 5997: cd 89 08    ...
	mvi	a,02dh		;; 599a: 3e 2d       >-
	push	psw		;; 599c: f5          .
	call	L0597		;; 599d: cd 97 05    ...
	lxi	b,00100h	;; 59a0: 01 00 01    ...
	lxi	h,00000h	;; 59a3: 21 00 00    ...
	push	h		;; 59a6: e5          .
	push	b		;; 59a7: c5          .
	rst	3		;; 59a8: df          .
	db	0a2h
	rst	4		;; 59aa: e7          .
	db	87h
	call	L87f6		;; 59ac: cd f6 87    ...
	mov	a,c		;; 59af: 79          y
	push	psw		;; 59b0: f5          .
	call	L538e		;; 59b1: cd 8e 53    ..S
	jr	L59bd		;; 59b4: 18 07       ..

L59b6:	ldx	a,-94		;; 59b6: dd 7e a2    .~.
	push	psw		;; 59b9: f5          .
	call	L538e		;; 59ba: cd 8e 53    ..S
L59bd:	jr	L59fb		;; 59bd: 18 3c       .<

L59bf:	lda	L1c53		;; 59bf: 3a 53 1c    :S.
	xri	001h		;; 59c2: ee 01       ..
	anax	-97		;; 59c4: dd a6 9f    ...
	rar			;; 59c7: 1f          .
	jrnc	L59e6		;; 59c8: 30 1c       0.
	ldx	a,-95		;; 59ca: dd 7e a1    .~.
	cpi	054h		;; 59cd: fe 54       .T
	jrnz	L59d9		;; 59cf: 20 08        .
	rst	3		;; 59d1: df          .
	db	0a2h
	push	h		;; 59d3: e5          .
	call	L53c1		;; 59d4: cd c1 53    ..S
	jr	L59e6		;; 59d7: 18 0d       ..

L59d9:	ldx	a,-95		;; 59d9: dd 7e a1    .~.
	push	psw		;; 59dc: f5          .
	call	L0597		;; 59dd: cd 97 05    ...
	rst	3		;; 59e0: df          .
	db	0a2h
	push	h		;; 59e2: e5          .
	call	L5428		;; 59e3: cd 28 54    .(T
L59e6:	jr	L59fb		;; 59e6: 18 13       ..

L59e8:	mvi	b,004h		;; 59e8: 06 04       ..
	call	L8ddc		;; 59ea: cd dc 8d    ...
	db 'N' ! dw L58dd
	db 'P' ! dw L58dd
	db 'X' ! dw L58dd
	db 'Y' ! dw L58dd
	dw	L59bf
L59fb:	lda	L1c53		;; 59fb: 3a 53 1c    :S.
	rar			;; 59fe: 1f          .
	jrnc	L5a35		;; 59ff: 30 34       04
	rst	3		;; 5a01: df          .
	db	9dh
	push	h		;; 5a03: e5          .
	call	L6760		;; 5a04: cd 60 67    .`g
	lda	L0182		;; 5a07: 3a 82 01    :..
	rar			;; 5a0a: 1f          .
	jrnc	L5a14		;; 5a0b: 30 07       0.
	lxi	h,L1d43		;; 5a0d: 21 43 1d    .C.
	push	h		;; 5a10: e5          .
	call	L5c84		;; 5a11: cd 84 5c    ..\
L5a14:	lda	L1d48		;; 5a14: 3a 48 1d    :H.
	ora	a		;; 5a17: b7          .
	call	L8c0e		;; 5a18: cd 0e 8c    ...
	lxi	h,L3170		;; 5a1b: 21 70 31    .p1
	ana	m		;; 5a1e: a6          .
	rar			;; 5a1f: 1f          .
	jrnc	L5a35		;; 5a20: 30 13       0.
	lda	L1d48		;; 5a22: 3a 48 1d    :H.
	sta	L1d50		;; 5a25: 32 50 1d    2P.
	lda	L1c59		;; 5a28: 3a 59 1c    :Y.
	cpi	020h		;; 5a2b: fe 20       . 
	jrnz	L5a35		;; 5a2d: 20 06        .
	lda	L1d50		;; 5a2f: 3a 50 1d    :P.
	sta	L1c59		;; 5a32: 32 59 1c    2Y.
L5a35:	ldx	a,-126		;; 5a35: dd 7e 82    .~.
	rar			;; 5a38: 1f          .
	jrnc	L5a70		;; 5a39: 30 35       05
	ldx	a,-95		;; 5a3b: dd 7e a1    .~.
	cpi	054h		;; 5a3e: fe 54       .T
	jrnz	L5a70		;; 5a40: 20 2e        .
	lxi	b,00100h	;; 5a42: 01 00 01    ...
	rst	3		;; 5a45: df          .
	db	0a2h
	ora	a		;; 5a47: b7          .
	dsbc	b		;; 5a48: ed 42       .B
	mvi	a,000h		;; 5a4a: 3e 00       >.
	cmc			;; 5a4c: 3f          ?
	ral			;; 5a4d: 17          .
	push	psw		;; 5a4e: f5          .
	call	L8d60		;; 5a4f: cd 60 8d    .`.
	dw	L104c
	push	h		;; 5a54: e5          .
	push	b		;; 5a55: c5          .
	rst	3		;; 5a56: df          .
	db	0a2h
	rst	4		;; 5a58: e7          .
	db	87h
	call	L8890		;; 5a5a: cd 90 88    ...
	call	L8c13		;; 5a5d: cd 13 8c    ...
	mov	b,a		;; 5a60: 47          G
	pop	psw		;; 5a61: f1          .
	ana	b		;; 5a62: a0          .
	rar			;; 5a63: 1f          .
	jrnc	L5a70		;; 5a64: 30 0a       0.
	mvix	000h,-126	;; 5a66: dd 36 82 00 .6..
	lda	L01a3		;; 5a6a: 3a a3 01    :..
	sta	L316f		;; 5a6d: 32 6f 31    2o1
L5a70:	lda	L1d51		;; 5a70: 3a 51 1d    :Q.
	anax	-126		;; 5a73: dd a6 82    ...
	rar			;; 5a76: 1f          .
	jnc	L5b01		;; 5a77: d2 01 5b    ..[
	lxi	h,L1c10		;; 5a7a: 21 10 1c    ...
	mvi	m,000h		;; 5a7d: 36 00       6.
	rst	3		;; 5a7f: df          .
	db	0a2h
	rst	3		;; 5a81: df          .
	db	6
	ldx	a,-95		;; 5a83: dd 7e a1    .~.
	stx	a,-120		;; 5a86: dd 77 88    .w.
	mvix	000h,-117	;; 5a89: dd 36 8b 00 .6..
	lxi	h,0ff86h	;; 5a8d: 21 86 ff    ...
	rst	2		;; 5a90: d7          .
	push	h		;; 5a91: e5          .
	lxi	h,L1c10		;; 5a92: 21 10 1c    ...
	call	L75ea		;; 5a95: cd ea 75    ..u
	mvi	a,042h		;; 5a98: 3e 42       >B
	call	L8bb0		;; 5a9a: cd b0 8b    ...
	rst	3		;; 5a9d: df          .
	db	0a2h
	push	h		;; 5a9f: e5          .
	call	L60a4		;; 5aa0: cd a4 60    ..`
	push	h		;; 5aa3: e5          .
	call	L6241		;; 5aa4: cd 41 62    .Ab
	rst	3		;; 5aa7: df          .
	db	0a2h
	push	h		;; 5aa9: e5          .
	call	L10d3		;; 5aaa: cd d3 10    ...
	xri	001h		;; 5aad: ee 01       ..
	rar			;; 5aaf: 1f          .
	jrnc	L5af0		;; 5ab0: 30 3e       0>
	ldx	a,-95		;; 5ab2: dd 7e a1    .~.
	call	L5aca		;; 5ab5: cd ca 5a    ..Z
L5ab8:	mvix	049h,-123	;; 5ab8: dd 36 85 49 .6.I
	jr	L5add		;; 5abc: 18 1f       ..

L5abe:	mvix	057h,-123	;; 5abe: dd 36 85 57 .6.W
	jr	L5add		;; 5ac2: 18 19       ..

L5ac4:	mvix	042h,-123	;; 5ac4: dd 36 85 42 .6.B
	jr	L5add		;; 5ac8: 18 13       ..

L5aca:	mvi	b,004h		;; 5aca: 06 04       ..
	call	L8ddc		;; 5acc: cd dc 8d    ...
	db 'C' ! dw L5ab8
	db 'L' ! dw L5ab8
	db 'R' ! dw L5ab8
	db 'W' ! dw L5abe
	dw	L5ac4
L5add:	rst	3		;; 5add: df          .
	db	0a2h
	push	h		;; 5adf: e5          .
	ldx	a,-123		;; 5ae0: dd 7e 85    .~.
	push	psw		;; 5ae3: f5          .
	rst	3		;; 5ae4: df          .
	db	0a2h
	push	h		;; 5ae6: e5          .
	call	L5f05		;; 5ae7: cd 05 5f    .._
	push	h		;; 5aea: e5          .
	call	L6475		;; 5aeb: cd 75 64    .ud
	rst	3		;; 5aee: df          .
	db	3
L5af0:	lxi	h,L3169		;; 5af0: 21 69 31    .i1
	mvi	m,001h		;; 5af3: 36 01       6.
	lda	L3170		;; 5af5: 3a 70 31    :p1
	rar			;; 5af8: 1f          .
	jrnc	L5b01		;; 5af9: 30 06       0.
	lda	L01a3		;; 5afb: 3a a3 01    :..
	sta	L316f		;; 5afe: 32 6f 31    2o1
L5b01:	jmp	L8d56		;; 5b01: c3 56 8d    .V.

L5b04:	call	L8d27		;; 5b04: cd 27 8d    .'.
	db	0,0ah
	lda	L018c		;; 5b09: 3a 8c 01    :..
	rar			;; 5b0c: 1f          .
	jrnc	L5b53		;; 5b0d: 30 44       0D
	mvi	a,003h		;; 5b0f: 3e 03       >.
	push	psw		;; 5b11: f5          .
	call	L0d9b		;; 5b12: cd 9b 0d    ...
	mvi	a,03bh		;; 5b15: 3e 3b       >;
	push	psw		;; 5b17: f5          .
	call	L0597		;; 5b18: cd 97 05    ...
	mvi	a,024h		;; 5b1b: 3e 24       >$
	push	psw		;; 5b1d: f5          .
	call	L0597		;; 5b1e: cd 97 05    ...
	mvi	a,07fh		;; 5b21: 3e 7f       >.
	cmpx	-125		;; 5b23: dd be 83    ...
	jrnc	L5b41		;; 5b26: 30 19       0.
	mvi	a,02dh		;; 5b28: 3e 2d       >-
	push	psw		;; 5b2a: f5          .
	call	L0597		;; 5b2b: cd 97 05    ...
	ldx	a,-125		;; 5b2e: dd 7e 83    .~.
	mov	c,a		;; 5b31: 4f          O
	mvi	b,000h		;; 5b32: 06 00       ..
	lxi	h,000feh	;; 5b34: 21 fe 00    ...
	ora	a		;; 5b37: b7          .
	dsbc	b		;; 5b38: ed 42       .B
	mov	a,l		;; 5b3a: 7d          }
	push	psw		;; 5b3b: f5          .
	call	L5412		;; 5b3c: cd 12 54    ..T
	jr	L5b50		;; 5b3f: 18 0f       ..

L5b41:	mvi	a,02bh		;; 5b41: 3e 2b       >+
	push	psw		;; 5b43: f5          .
	call	L0597		;; 5b44: cd 97 05    ...
	ldx	a,-125		;; 5b47: dd 7e 83    .~.
	adi	002h		;; 5b4a: c6 02       ..
	push	psw		;; 5b4c: f5          .
	call	L5412		;; 5b4d: cd 12 54    ..T
L5b50:	call	L0799		;; 5b50: cd 99 07    ...
L5b53:	jmp	L8d56		;; 5b53: c3 56 8d    .V.

L5b56:	call	L8d27		;; 5b56: cd 27 8d    .'.
	db	0feh,0ah
	rst	3		;; 5b5b: df          .
	db	84h
	mov	b,m		;; 5b5d: 46          F
	inr	b		;; 5b5e: 04          .
	jr	L5b6b		;; 5b5f: 18 0a       ..

L5b61:	push	b		;; 5b61: c5          .
	inx	h		;; 5b62: 23          #
	push	h		;; 5b63: e5          .
	mov	a,m		;; 5b64: 7e          ~
	push	psw		;; 5b65: f5          .
	call	L0414		;; 5b66: cd 14 04    ...
	pop	h		;; 5b69: e1          .
	pop	b		;; 5b6a: c1          .
L5b6b:	djnz	L5b61		;; 5b6b: 10 f4       ..
	jmp	L8d56		;; 5b6d: c3 56 8d    .V.

L5b70:	db	0,0
L5b72:	db	0,0
L5b74:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0
L5bac:	call	L8d27		;; 5bac: cd 27 8d    .'.
	db	0ffh,0bh
	rst	3		;; 5bb1: df          .
	db	83h
	mov	a,h		;; 5bb3: 7c          |
	ora	l		;; 5bb4: b5          .
	jrnz	L5bbd		;; 5bb5: 20 06        .
	rst	3		;; 5bb7: df          .
	db	85h
	mvi	m,000h		;; 5bb9: 36 00       6.
	jr	L5bd6		;; 5bbb: 18 19       ..

L5bbd:	rst	3		;; 5bbd: df          .
	db	83h
	push	h		;; 5bbf: e5          .
	rst	3		;; 5bc0: df          .
	db	85h
	push	h		;; 5bc2: e5          .
	rst	3		;; 5bc3: df          .
	db	83h
	lxi	d,00000h	;; 5bc5: 11 00 00    ...
	push	d		;; 5bc8: d5          .
	push	h		;; 5bc9: e5          .
	call	L75f8		;; 5bca: cd f8 75    ..u
	call	L8852		;; 5bcd: cd 52 88    .R.
	mov	h,b		;; 5bd0: 60          `
	mov	l,c		;; 5bd1: 69          i
	push	h		;; 5bd2: e5          .
	call	L72fe		;; 5bd3: cd fe 72    ..r
L5bd6:	jmp	L8d56		;; 5bd6: c3 56 8d    .V.

L5bd9:	call	L8d27		;; 5bd9: cd 27 8d    .'.
	db	0feh,0ch
	rst	3		;; 5bde: df          .
	db	84h
	mvi	m,000h		;; 5be0: 36 00       6.
	inx	h		;; 5be2: 23          #
	mvi	m,000h		;; 5be3: 36 00       6.
	rst	3		;; 5be5: df          .
	db	86h
	mov	a,m		;; 5be7: 7e          ~
	ora	a		;; 5be8: b7          .
	jrz	L5c3a		;; 5be9: 28 4f       (O
	rst	3		;; 5beb: df          .
	db	86h
	mov	a,m		;; 5bed: 7e          ~
	inr	a		;; 5bee: 3c          <
	stx	a,-125		;; 5bef: dd 77 83    .w.
	lhld	L1a28		;; 5bf2: 2a 28 1a    *(.
	rst	4		;; 5bf5: e7          .
	db	87h
	push	h		;; 5bf7: e5          .
	push	b		;; 5bf8: c5          .
	lhld	L1a2a		;; 5bf9: 2a 2a 1a    **.
	rst	4		;; 5bfc: e7          .
	db	87h
	call	L87f6		;; 5bfe: cd f6 87    ...
	push	h		;; 5c01: e5          .
	push	b		;; 5c02: c5          .
	ldx	a,-125		;; 5c03: dd 7e 83    .~.
	rst	4		;; 5c06: e7          .
	db	86h
	call	L8870		;; 5c08: cd 70 88    .p.
	jm	L5c3a		;; 5c0b: fa 3a 5c    .:\
	lhld	L1a28		;; 5c0e: 2a 28 1a    *(.
	rst	4		;; 5c11: e7          .
	db	87h
	push	h		;; 5c13: e5          .
	push	b		;; 5c14: c5          .
	ldx	a,-125		;; 5c15: dd 7e 83    .~.
	rst	4		;; 5c18: e7          .
	db	86h
	call	L87f6		;; 5c1a: cd f6 87    ...
	mov	h,b		;; 5c1d: 60          `
	mov	l,c		;; 5c1e: 69          i
	shld	L1a28		;; 5c1f: 22 28 1a    "(.
	rst	3		;; 5c22: df          .
	db	84h
	push	h		;; 5c24: e5          .
	lhld	L1a28		;; 5c25: 2a 28 1a    *(.
	rst	4		;; 5c28: e7          .
	db	81h
	rst	3		;; 5c2a: df          .
	db	86h
	push	h		;; 5c2c: e5          .
	lhld	L1a28		;; 5c2d: 2a 28 1a    *(.
	push	h		;; 5c30: e5          .
	ldx	l,-125		;; 5c31: dd 6e 83    .n.
	mvi	h,000h		;; 5c34: 26 00       &.
	push	h		;; 5c36: e5          .
	call	L72fe		;; 5c37: cd fe 72    ..r
L5c3a:	jmp	L8d56		;; 5c3a: c3 56 8d    .V.

L5c3d:	call	L8d27		;; 5c3d: cd 27 8d    .'.
	db	0ffh,7
	lda	L5b74		;; 5c42: 3a 74 5b    :t[
	ora	a		;; 5c45: b7          .
	jrz	L5c81		;; 5c46: 28 39       (9
	mvi	a,004h		;; 5c48: 3e 04       >.
	push	psw		;; 5c4a: f5          .
	call	L0d9b		;; 5c4b: cd 9b 0d    ...
	mvi	a,03bh		;; 5c4e: 3e 3b       >;
	push	psw		;; 5c50: f5          .
	call	L0597		;; 5c51: cd 97 05    ...
	mvix	001h,-126	;; 5c54: dd 36 82 01 .6..
L5c58:	lda	L5b74		;; 5c58: 3a 74 5b    :t[
	mov	b,a		;; 5c5b: 47          G
	ldx	a,-126		;; 5c5c: dd 7e 82    .~.
	push	psw		;; 5c5f: f5          .
	mov	a,b		;; 5c60: 78          x
	pop	b		;; 5c61: c1          .
	cmp	b		;; 5c62: b8          .
	jrc	L5c7c		;; 5c63: 38 17       8.
	ldx	l,-126		;; 5c65: dd 6e 82    .n.
	mvi	h,000h		;; 5c68: 26 00       &.
	lxi	d,L5b74		;; 5c6a: 11 74 5b    .t[
	dad	d		;; 5c6d: 19          .
	mov	a,m		;; 5c6e: 7e          ~
	push	psw		;; 5c6f: f5          .
	call	L0597		;; 5c70: cd 97 05    ...
	ldx	a,-126		;; 5c73: dd 7e 82    .~.
	inr	a		;; 5c76: 3c          <
	stx	a,-126		;; 5c77: dd 77 82    .w.
	jr	L5c58		;; 5c7a: 18 dc       ..

L5c7c:	lxi	h,L5b74		;; 5c7c: 21 74 5b    .t[
	mvi	m,000h		;; 5c7f: 36 00       6.
L5c81:	jmp	L8d56		;; 5c81: c3 56 8d    .V.

L5c84:	call	L8d27		;; 5c84: cd 27 8d    .'.
	db	'n',9ah
	ldx	l,+20		;; 5c89: dd 6e 14    .n.
	ldx	h,+21		;; 5c8c: dd 66 15    .f.
	push	h		;; 5c8f: e5          .
	lxi	h,0000eh	;; 5c90: 21 0e 00    ...
	rst	2		;; 5c93: d7          .
	pop	d		;; 5c94: d1          .
	xchg			;; 5c95: eb          .
	lxi	b,00006h	;; 5c96: 01 06 00    ...
	ldir			;; 5c99: ed b0       ..
	lxi	h,0ffc5h	;; 5c9b: 21 c5 ff    ...
	rst	2		;; 5c9e: d7          .
	push	h		;; 5c9f: e5          .
	ldx	l,+17		;; 5ca0: dd 6e 11    .n.
	ldx	h,+18		;; 5ca3: dd 66 12    .f.
	push	h		;; 5ca6: e5          .
	call	L5bac		;; 5ca7: cd ac 5b    ..[
	lxi	h,L5b74		;; 5caa: 21 74 5b    .t[
	mvi	m,000h		;; 5cad: 36 00       6.
	ldx	a,+16		;; 5caf: dd 7e 10    .~.
	stx	a,+9		;; 5cb2: dd 77 09    .w.
	ldx	a,-59		;; 5cb5: dd 7e c5    .~.
	ora	a		;; 5cb8: b7          .
	jz	L5d50		;; 5cb9: ca 50 5d    .P]
	lda	L0181		;; 5cbc: 3a 81 01    :..
	rar			;; 5cbf: 1f          .
	jrnc	L5cd6		;; 5cc0: 30 14       0.
	ldx	a,+9		;; 5cc2: dd 7e 09    .~.
	push	psw		;; 5cc5: f5          .
	call	L0597		;; 5cc6: cd 97 05    ...
	ldx	l,+14		;; 5cc9: dd 6e 0e    .n.
	ldx	h,+15		;; 5ccc: dd 66 0f    .f.
	push	h		;; 5ccf: e5          .
	call	L5428		;; 5cd0: cd 28 54    .(T
	call	L0799		;; 5cd3: cd 99 07    ...
L5cd6:	lda	L0180		;; 5cd6: 3a 80 01    :..
	mov	b,a		;; 5cd9: 47          G
	mvi	c,001h		;; 5cda: 0e 01       ..
	push	b		;; 5cdc: c5          .
	lxi	h,0ffc5h	;; 5cdd: 21 c5 ff    ...
	rst	2		;; 5ce0: d7          .
	call	L75ea		;; 5ce1: cd ea 75    ..u
	call	L8ad7		;; 5ce4: cd d7 8a    ...
	mov	a,c		;; 5ce7: 79          y
	stx	a,+8		;; 5ce8: dd 77 08    .w.
	lxi	h,0ffc5h	;; 5ceb: 21 c5 ff    ...
	rst	2		;; 5cee: d7          .
	call	L75ea		;; 5cef: cd ea 75    ..u
	lxi	h,0ff82h	;; 5cf2: 21 82 ff    ...
	rst	2		;; 5cf5: d7          .
	mvi	a,042h		;; 5cf6: 3e 42       >B
	call	L8b81		;; 5cf8: cd 81 8b    ...
	ldx	a,+8		;; 5cfb: dd 7e 08    .~.
	ora	a		;; 5cfe: b7          .
	jrz	L5d3e		;; 5cff: 28 3d       (=
	lxi	h,0ff82h	;; 5d01: 21 82 ff    ...
	rst	2		;; 5d04: d7          .
	push	h		;; 5d05: e5          .
	ldx	a,+8		;; 5d06: dd 7e 08    .~.
	push	psw		;; 5d09: f5          .
	ldx	a,-126		;; 5d0a: dd 7e 82    .~.
	push	psw		;; 5d0d: f5          .
	ldx	a,+8		;; 5d0e: dd 7e 08    .~.
	mov	c,a		;; 5d11: 4f          O
	mvi	b,000h		;; 5d12: 06 00       ..
	pop	psw		;; 5d14: f1          .
	mov	l,a		;; 5d15: 6f          o
	mvi	h,000h		;; 5d16: 26 00       &.
	ora	a		;; 5d18: b7          .
	dsbc	b		;; 5d19: ed 42       .B
	inx	h		;; 5d1b: 23          #
	mov	a,l		;; 5d1c: 7d          }
	push	psw		;; 5d1d: f5          .
	call	L8a48		;; 5d1e: cd 48 8a    .H.
	lxi	h,0ffc5h	;; 5d21: 21 c5 ff    ...
	rst	2		;; 5d24: d7          .
	call	L75ea		;; 5d25: cd ea 75    ..u
	lxi	h,L5b74		;; 5d28: 21 74 5b    .t[
	mvi	a,037h		;; 5d2b: 3e 37       >7
	call	L8b81		;; 5d2d: cd 81 8b    ...
	lxi	h,L5b74		;; 5d30: 21 74 5b    .t[
	push	h		;; 5d33: e5          .
	mvi	a,001h		;; 5d34: 3e 01       >.
	push	psw		;; 5d36: f5          .
	ldx	a,+8		;; 5d37: dd 7e 08    .~.
	push	psw		;; 5d3a: f5          .
	call	L8a48		;; 5d3b: cd 48 8a    .H.
L5d3e:	lxi	h,0ff82h	;; 5d3e: 21 82 ff    ...
	rst	2		;; 5d41: d7          .
	call	L75ea		;; 5d42: cd ea 75    ..u
	mvi	a,037h		;; 5d45: 3e 37       >7
	call	L8bb0		;; 5d47: cd b0 8b    ...
	call	L0803		;; 5d4a: cd 03 08    ...
	jmp	L5e1b		;; 5d4d: c3 1b 5e    ..^

L5d50:	ldx	a,+9		;; 5d50: dd 7e 09    .~.
	cpi	03bh		;; 5d53: fe 3b       .;
	jz	L5e1b		;; 5d55: ca 1b 5e    ..^
	ldx	a,+9		;; 5d58: dd 7e 09    .~.
	push	psw		;; 5d5b: f5          .
	call	L0597		;; 5d5c: cd 97 05    ...
	ldx	l,+14		;; 5d5f: dd 6e 0e    .n.
	ldx	h,+15		;; 5d62: dd 66 0f    .f.
	stx	l,+10		;; 5d65: dd 75 0a    .u.
	stx	h,+11		;; 5d68: dd 74 0b    .t.
	ldx	a,+9		;; 5d6b: dd 7e 09    .~.
	push	psw		;; 5d6e: f5          .
	call	L75c9		;; 5d6f: cd c9 75    ..u
	db	0bh,0,0,0,0,0,0,0,0,10h,'@',1
	call	L7450		;; 5d7e: cd 50 74    .Pt
	call	L8c0e		;; 5d81: cd 0e 8c    ...
	push	psw		;; 5d84: f5          .
	lxi	b,00100h	;; 5d85: 01 00 01    ...
	ldx	l,+10		;; 5d88: dd 6e 0a    .n.
	ldx	h,+11		;; 5d8b: dd 66 0b    .f.
	ora	a		;; 5d8e: b7          .
	dsbc	b		;; 5d8f: ed 42       .B
	mvi	a,000h		;; 5d91: 3e 00       >.
	ral			;; 5d93: 17          .
	mov	b,a		;; 5d94: 47          G
	pop	psw		;; 5d95: f1          .
	ana	b		;; 5d96: a0          .
	push	psw		;; 5d97: f5          .
	ldx	a,+9		;; 5d98: dd 7e 09    .~.
	push	psw		;; 5d9b: f5          .
	call	L75c9		;; 5d9c: cd c9 75    ..u
	db	0ch,0,0,0,0,0,0,0,0,0,0,0,3
	call	L7450		;; 5dac: cd 50 74    .Pt
	call	L8c0e		;; 5daf: cd 0e 8c    ...
	push	psw		;; 5db2: f5          .
	lxi	b,0ff80h	;; 5db3: 01 80 ff    ...
	ldx	l,+10		;; 5db6: dd 6e 0a    .n.
	ldx	h,+11		;; 5db9: dd 66 0b    .f.
	ora	a		;; 5dbc: b7          .
	dsbc	b		;; 5dbd: ed 42       .B
	mvi	a,000h		;; 5dbf: 3e 00       >.
	cmc			;; 5dc1: 3f          ?
	ral			;; 5dc2: 17          .
	push	psw		;; 5dc3: f5          .
	lxi	b,00080h	;; 5dc4: 01 80 00    ...
	ldx	l,+10		;; 5dc7: dd 6e 0a    .n.
	ldx	h,+11		;; 5dca: dd 66 0b    .f.
	ora	a		;; 5dcd: b7          .
	dsbc	b		;; 5dce: ed 42       .B
	mvi	a,000h		;; 5dd0: 3e 00       >.
	ral			;; 5dd2: 17          .
	mov	b,a		;; 5dd3: 47          G
	pop	psw		;; 5dd4: f1          .
	ora	b		;; 5dd5: b0          .
	mov	b,a		;; 5dd6: 47          G
	pop	psw		;; 5dd7: f1          .
	ana	b		;; 5dd8: a0          .
	mov	b,a		;; 5dd9: 47          G
	pop	psw		;; 5dda: f1          .
	ora	b		;; 5ddb: b0          .
	rar			;; 5ddc: 1f          .
	jrnc	L5e11		;; 5ddd: 30 32       02
	lxi	b,0ff80h	;; 5ddf: 01 80 ff    ...
	ldx	l,+10		;; 5de2: dd 6e 0a    .n.
	ldx	h,+11		;; 5de5: dd 66 0b    .f.
	ora	a		;; 5de8: b7          .
	dsbc	b		;; 5de9: ed 42       .B
	jrc	L5e08		;; 5deb: 38 1b       8.
	ldx	l,+10		;; 5ded: dd 6e 0a    .n.
	ldx	h,+11		;; 5df0: dd 66 0b    .f.
	rst	4		;; 5df3: e7          .
	db	87h
	push	h		;; 5df5: e5          .
	push	b		;; 5df6: c5          .
	lxi	b,0ff00h	;; 5df7: 01 00 ff    ...
	lxi	h,00000h	;; 5dfa: 21 00 00    ...
	call	L87f6		;; 5dfd: cd f6 87    ...
	mov	h,b		;; 5e00: 60          `
	mov	l,c		;; 5e01: 69          i
	stx	l,+10		;; 5e02: dd 75 0a    .u.
	stx	h,+11		;; 5e05: dd 74 0b    .t.
L5e08:	ldx	a,+10		;; 5e08: dd 7e 0a    .~.
	push	psw		;; 5e0b: f5          .
	call	L5412		;; 5e0c: cd 12 54    ..T
	jr	L5e1b		;; 5e0f: 18 0a       ..

L5e11:	ldx	l,+10		;; 5e11: dd 6e 0a    .n.
	ldx	h,+11		;; 5e14: dd 66 0b    .f.
	push	h		;; 5e17: e5          .
	call	L5428		;; 5e18: cd 28 54    .(T
L5e1b:	jmp	L8d56		;; 5e1b: c3 56 8d    .V.

L5e1e:	call	L8d27		;; 5e1e: cd 27 8d    .'.
	db	0,0ah
	rst	3		;; 5e23: df          .
	db	84h
	push	h		;; 5e25: e5          .
	rst	3		;; 5e26: df          .
	db	82h
	push	h		;; 5e28: e5          .
	lxi	h,00006h	;; 5e29: 21 06 00    ...
	push	h		;; 5e2c: e5          .
	call	L72fe		;; 5e2d: cd fe 72    ..r
	jmp	L8d56		;; 5e30: c3 56 8d    .V.

L5e33:	call	L8d27		;; 5e33: cd 27 8d    .'.
	db	0fah,10h
	rst	3		;; 5e38: df          .
	db	88h
	push	h		;; 5e3a: e5          .
	lxi	h,0ff82h	;; 5e3b: 21 82 ff    ...
	rst	2		;; 5e3e: d7          .
	pop	d		;; 5e3f: d1          .
	xchg			;; 5e40: eb          .
	lxi	b,00006h	;; 5e41: 01 06 00    ...
	ldir			;; 5e44: ed b0       ..
	lbcd	L5b72		;; 5e46: ed 4b 72 5b .Kr[
	rst	3		;; 5e4a: df          .
	db	8ah
	ora	a		;; 5e4c: b7          .
	dsbc	b		;; 5e4d: ed 42       .B
	mvi	a,000h		;; 5e4f: 3e 00       >.
	cmc			;; 5e51: 3f          ?
	ral			;; 5e52: 17          .
	push	psw		;; 5e53: f5          .
	lbcd	L1a2a		;; 5e54: ed 4b 2a 1a .K*.
	rst	3		;; 5e58: df          .
	db	8ah
	ora	a		;; 5e5a: b7          .
	dsbc	b		;; 5e5b: ed 42       .B
	mvi	a,000h		;; 5e5d: 3e 00       >.
	ral			;; 5e5f: 17          .
	mov	b,a		;; 5e60: 47          G
	pop	psw		;; 5e61: f1          .
	ana	b		;; 5e62: a0          .
	rar			;; 5e63: 1f          .
	jrnc	L5e75		;; 5e64: 30 0f       0.
	lxi	h,0ff82h	;; 5e66: 21 82 ff    ...
	rst	2		;; 5e69: d7          .
	push	h		;; 5e6a: e5          .
	rst	3		;; 5e6b: df          .
	db	8ah
	push	h		;; 5e6d: e5          .
	lxi	h,00006h	;; 5e6e: 21 06 00    ...
	push	h		;; 5e71: e5          .
	call	L72fe		;; 5e72: cd fe 72    ..r
L5e75:	jmp	L8d56		;; 5e75: c3 56 8d    .V.

L5e78:	call	L8d27		;; 5e78: cd 27 8d    .'.
	db	0f6h,12h
	lhld	L5b72		;; 5e7d: 2a 72 5b    *r[
	rst	3		;; 5e80: df          .
	db	8
L5e82:	lbcd	L1a2a		;; 5e82: ed 4b 2a 1a .K*.
	rst	3		;; 5e86: df          .
	db	88h
	ora	a		;; 5e88: b7          .
	dsbc	b		;; 5e89: ed 42       .B
	jrz	L5eb1		;; 5e8b: 28 24       ($
	rst	3		;; 5e8d: df          .
	db	88h
	push	h		;; 5e8f: e5          .
	lxi	h,0ff82h	;; 5e90: 21 82 ff    ...
	rst	2		;; 5e93: d7          .
	push	h		;; 5e94: e5          .
	call	L5e1e		;; 5e95: cd 1e 5e    ..^
	ldx	c,-116		;; 5e98: dd 4e 8c    .N.
	ldx	b,-115		;; 5e9b: dd 46 8d    .F.
	rst	3		;; 5e9e: df          .
	db	82h
	ora	a		;; 5ea0: b7          .
	dsbc	b		;; 5ea1: ed 42       .B
	jrc	L5ea7		;; 5ea3: 38 02       8.
	jr	L5eb6		;; 5ea5: 18 0f       ..

L5ea7:	lxi	b,00006h	;; 5ea7: 01 06 00    ...
	rst	3		;; 5eaa: df          .
	db	88h
	dad	b		;; 5eac: 09          .
	rst	3		;; 5ead: df          .
	db	8
	jr	L5e82		;; 5eaf: 18 d1       ..

L5eb1:	lxi	h,00000h	;; 5eb1: 21 00 00    ...
	rst	3		;; 5eb4: df          .
	db	8
L5eb6:	rst	3		;; 5eb6: df          .
	db	88h
	rst	3		;; 5eb8: df          .
	db	0ah
	jmp	L8d56		;; 5eba: c3 56 8d    .V.

L5ebd:	call	L8d27		;; 5ebd: cd 27 8d    .'.
	db	0f6h,12h
	rst	3		;; 5ec2: df          .
	db	8ch
	push	h		;; 5ec4: e5          .
	call	L5e78		;; 5ec5: cd 78 5e    .x^
	rst	3		;; 5ec8: df          .
	db	8
	mov	a,h		;; 5eca: 7c          |
	ora	l		;; 5ecb: b5          .
	jrz	L5efe		;; 5ecc: 28 30       (0
L5ece:	rst	3		;; 5ece: df          .
	db	88h
	push	h		;; 5ed0: e5          .
	lxi	h,0ff82h	;; 5ed1: 21 82 ff    ...
	rst	2		;; 5ed4: d7          .
	push	h		;; 5ed5: e5          .
	call	L5e1e		;; 5ed6: cd 1e 5e    ..^
	ldx	c,-116		;; 5ed9: dd 4e 8c    .N.
	ldx	b,-115		;; 5edc: dd 46 8d    .F.
	rst	3		;; 5edf: df          .
	db	82h
	ora	a		;; 5ee1: b7          .
	dsbc	b		;; 5ee2: ed 42       .B
	jrz	L5ee8		;; 5ee4: 28 02       (.
	jr	L5efe		;; 5ee6: 18 16       ..

L5ee8:	lxi	b,00006h	;; 5ee8: 01 06 00    ...
	rst	3		;; 5eeb: df          .
	db	88h
	dad	b		;; 5eed: 09          .
	rst	3		;; 5eee: df          .
	db	8
	lbcd	L1a2a		;; 5ef0: ed 4b 2a 1a .K*.
	ora	a		;; 5ef4: b7          .
	dsbc	b		;; 5ef5: ed 42       .B
	jrnz	L5ece		;; 5ef7: 20 d5        .
	lxi	h,00000h	;; 5ef9: 21 00 00    ...
	rst	3		;; 5efc: df          .
	db	8
L5efe:	rst	3		;; 5efe: df          .
	db	88h
	rst	3		;; 5f00: df          .
	db	0ah
	jmp	L8d56		;; 5f02: c3 56 8d    .V.

L5f05:	call	L8d27		;; 5f05: cd 27 8d    .'.
	db	0e6h,'"'
	lhld	L5b72		;; 5f0a: 2a 72 5b    *r[
	rst	3		;; 5f0d: df          .
	db	18h
	lbcd	L1a2a		;; 5f0f: ed 4b 2a 1a .K*.
	ora	a		;; 5f13: b7          .
	dsbc	b		;; 5f14: ed 42       .B
	jrnz	L5f1f		;; 5f16: 20 07        .
	lxi	h,00000h	;; 5f18: 21 00 00    ...
	rst	3		;; 5f1b: df          .
	db	18h
	jr	L5f3c		;; 5f1d: 18 1d       ..

L5f1f:	rst	3		;; 5f1f: df          .
	db	98h
	push	h		;; 5f21: e5          .
	lxi	h,0ff90h	;; 5f22: 21 90 ff    ...
	rst	2		;; 5f25: d7          .
	push	h		;; 5f26: e5          .
	call	L5e1e		;; 5f27: cd 1e 5e    ..^
	ldx	c,-100		;; 5f2a: dd 4e 9c    .N.
	ldx	b,-99		;; 5f2d: dd 46 9d    .F.
	rst	3		;; 5f30: df          .
	db	90h
	ora	a		;; 5f32: b7          .
	dsbc	b		;; 5f33: ed 42       .B
	jrc	L5f3c		;; 5f35: 38 05       8.
	lxi	h,00000h	;; 5f37: 21 00 00    ...
	rst	3		;; 5f3a: df          .
	db	18h
L5f3c:	rst	3		;; 5f3c: df          .
	db	98h
	mov	a,h		;; 5f3e: 7c          |
	ora	l		;; 5f3f: b5          .
	jz	L6023		;; 5f40: ca 23 60    .#`
	lxi	h,00000h	;; 5f43: 21 00 00    ...
	rst	3		;; 5f46: df          .
	db	0ch
	lhld	L1a2a		;; 5f48: 2a 2a 1a    **.
	rst	4		;; 5f4b: e7          .
	db	87h
	push	h		;; 5f4d: e5          .
	push	b		;; 5f4e: c5          .
	lhld	L5b72		;; 5f4f: 2a 72 5b    *r[
	rst	4		;; 5f52: e7          .
	db	87h
	call	L87f6		;; 5f54: cd f6 87    ...
	push	h		;; 5f57: e5          .
	push	b		;; 5f58: c5          .
	lxi	b,00006h	;; 5f59: 01 06 00    ...
	lxi	h,00000h	;; 5f5c: 21 00 00    ...
	call	L85d6		;; 5f5f: cd d6 85    ...
	mov	h,b		;; 5f62: 60          `
	mov	l,c		;; 5f63: 69          i
	rst	3		;; 5f64: df          .
	db	8
L5f66:	rst	3		;; 5f66: df          .
	db	88h
	rst	4		;; 5f68: e7          .
	db	87h
	push	h		;; 5f6a: e5          .
	push	b		;; 5f6b: c5          .
	rst	3		;; 5f6c: df          .
	db	8ch
	rst	4		;; 5f6e: e7          .
	db	87h
	call	L87f6		;; 5f70: cd f6 87    ...
	push	h		;; 5f73: e5          .
	push	b		;; 5f74: c5          .
	lxi	b,00002h	;; 5f75: 01 02 00    ...
	lxi	h,00000h	;; 5f78: 21 00 00    ...
	call	L8870		;; 5f7b: cd 70 88    .p.
	jm	L5fd6		;; 5f7e: fa d6 5f    .._
	rst	3		;; 5f81: df          .
	db	88h
	rst	4		;; 5f83: e7          .
	db	87h
	push	h		;; 5f85: e5          .
	push	b		;; 5f86: c5          .
	rst	3		;; 5f87: df          .
	db	8ch
	rst	4		;; 5f89: e7          .
	db	87h
	call	L87f6		;; 5f8b: cd f6 87    ...
	mov	h,b		;; 5f8e: 60          `
	mov	l,c		;; 5f8f: 69          i
	rst	3		;; 5f90: df          .
	db	0eh
	rst	3		;; 5f92: df          .
	db	8eh
	srlr	h		;; 5f94: cb 3c       .<
	rarr	l		;; 5f96: cb 1d       ..
	mov	b,h		;; 5f98: 44          D
	mov	c,l		;; 5f99: 4d          M
	rst	3		;; 5f9a: df          .
	db	8ch
	dad	b		;; 5f9c: 09          .
	rst	3		;; 5f9d: df          .
	db	0ah
	rst	3		;; 5f9f: df          .
	db	8ah
	push	h		;; 5fa1: e5          .
	lxi	h,00006h	;; 5fa2: 21 06 00    ...
	call	L87b7		;; 5fa5: cd b7 87    ...
	push	h		;; 5fa8: e5          .
	push	b		;; 5fa9: c5          .
	lhld	L5b72		;; 5faa: 2a 72 5b    *r[
	rst	4		;; 5fad: e7          .
	db	87h
	call	L87e7		;; 5faf: cd e7 87    ...
	mov	h,b		;; 5fb2: 60          `
	mov	l,c		;; 5fb3: 69          i
	push	h		;; 5fb4: e5          .
	lxi	h,0ff82h	;; 5fb5: 21 82 ff    ...
	rst	2		;; 5fb8: d7          .
	push	h		;; 5fb9: e5          .
	call	L5e1e		;; 5fba: cd 1e 5e    ..^
	ldx	c,-100		;; 5fbd: dd 4e 9c    .N.
	ldx	b,-99		;; 5fc0: dd 46 9d    .F.
	rst	3		;; 5fc3: df          .
	db	82h
	ora	a		;; 5fc5: b7          .
	dsbc	b		;; 5fc6: ed 42       .B
	jrnc	L5fd0		;; 5fc8: 30 06       0.
	rst	3		;; 5fca: df          .
	db	8ah
	rst	3		;; 5fcc: df          .
	db	0ch
	jr	L5fd4		;; 5fce: 18 04       ..

L5fd0:	rst	3		;; 5fd0: df          .
	db	8ah
	rst	3		;; 5fd2: df          .
	db	8
L5fd4:	jr	L5f66		;; 5fd4: 18 90       ..

L5fd6:	rst	3		;; 5fd6: df          .
	db	8ch
	push	h		;; 5fd8: e5          .
	lxi	h,00006h	;; 5fd9: 21 06 00    ...
	call	L87b7		;; 5fdc: cd b7 87    ...
	push	h		;; 5fdf: e5          .
	push	b		;; 5fe0: c5          .
	lhld	L5b72		;; 5fe1: 2a 72 5b    *r[
	rst	4		;; 5fe4: e7          .
	db	87h
	call	L87e7		;; 5fe6: cd e7 87    ...
	mov	h,b		;; 5fe9: 60          `
	mov	l,c		;; 5fea: 69          i
	rst	3		;; 5feb: df          .
	db	18h
L5fed:	lxi	b,00006h	;; 5fed: 01 06 00    ...
	rst	3		;; 5ff0: df          .
	db	98h
	dad	b		;; 5ff2: 09          .
	rst	3		;; 5ff3: df          .
	db	16h
	lbcd	L1a2a		;; 5ff5: ed 4b 2a 1a .K*.
	ora	a		;; 5ff9: b7          .
	dsbc	b		;; 5ffa: ed 42       .B
	jrnz	L6000		;; 5ffc: 20 02        .
	jr	L6023		;; 5ffe: 18 23       .#

L6000:	rst	3		;; 6000: df          .
	db	96h
	push	h		;; 6002: e5          .
	lxi	h,0ff90h	;; 6003: 21 90 ff    ...
	rst	2		;; 6006: d7          .
	push	h		;; 6007: e5          .
	call	L5e1e		;; 6008: cd 1e 5e    ..^
	ldx	c,-100		;; 600b: dd 4e 9c    .N.
	ldx	b,-99		;; 600e: dd 46 9d    .F.
	rst	3		;; 6011: df          .
	db	90h
	ora	a		;; 6013: b7          .
	dsbc	b		;; 6014: ed 42       .B
	jrc	L601a		;; 6016: 38 02       8.
	jr	L6023		;; 6018: 18 09       ..

L601a:	rst	3		;; 601a: df          .
	db	96h
	rst	3		;; 601c: df          .
	db	18h
	mvi	a,000h		;; 601e: 3e 00       >.
	rar			;; 6020: 1f          .
	jrnc	L5fed		;; 6021: 30 ca       0.
L6023:	rst	3		;; 6023: df          .
	db	98h
	rst	3		;; 6025: df          .
	db	1ah
	jmp	L8d56		;; 6027: c3 56 8d    .V.

L602a:	call	L8d27		;; 602a: cd 27 8d    .'.
	db	0f4h,14h
	lbcd	L1a2a		;; 602f: ed 4b 2a 1a .K*.
	lhld	L5b72		;; 6033: 2a 72 5b    *r[
	ora	a		;; 6036: b7          .
	dsbc	b		;; 6037: ed 42       .B
	jrnz	L6042		;; 6039: 20 07        .
	lxi	h,00000h	;; 603b: 21 00 00    ...
	rst	3		;; 603e: df          .
	db	0ch
	jr	L609f		;; 6040: 18 5d       .]

L6042:	lhld	L5b72		;; 6042: 2a 72 5b    *r[
	push	h		;; 6045: e5          .
	lxi	h,0ff82h	;; 6046: 21 82 ff    ...
	rst	2		;; 6049: d7          .
	push	h		;; 604a: e5          .
	call	L5e1e		;; 604b: cd 1e 5e    ..^
	ldx	c,-114		;; 604e: dd 4e 8e    .N.
	ldx	b,-113		;; 6051: dd 46 8f    .F.
	rst	3		;; 6054: df          .
	db	82h
	ora	a		;; 6056: b7          .
	dsbc	b		;; 6057: ed 42       .B
	jrnz	L6062		;; 6059: 20 07        .
	lhld	L5b72		;; 605b: 2a 72 5b    *r[
	rst	3		;; 605e: df          .
	db	0ch
	jr	L609f		;; 6060: 18 3d       .=

L6062:	rst	3		;; 6062: df          .
	db	8eh
	push	h		;; 6064: e5          .
	call	L5f05		;; 6065: cd 05 5f    .._
	rst	3		;; 6068: df          .
	db	0ah
	mov	a,h		;; 606a: 7c          |
	ora	l		;; 606b: b5          .
	jrz	L609b		;; 606c: 28 2d       (-
	lxi	b,00006h	;; 606e: 01 06 00    ...
	rst	3		;; 6071: df          .
	db	8ah
	dad	b		;; 6073: 09          .
	rst	3		;; 6074: df          .
	db	8
	lbcd	L1a2a		;; 6076: ed 4b 2a 1a .K*.
	ora	a		;; 607a: b7          .
	dsbc	b		;; 607b: ed 42       .B
	jrz	L609b		;; 607d: 28 1c       (.
	rst	3		;; 607f: df          .
	db	88h
	push	h		;; 6081: e5          .
	lxi	h,0ff82h	;; 6082: 21 82 ff    ...
	rst	2		;; 6085: d7          .
	push	h		;; 6086: e5          .
	call	L5e1e		;; 6087: cd 1e 5e    ..^
	ldx	c,-114		;; 608a: dd 4e 8e    .N.
	ldx	b,-113		;; 608d: dd 46 8f    .F.
	rst	3		;; 6090: df          .
	db	82h
	ora	a		;; 6092: b7          .
	dsbc	b		;; 6093: ed 42       .B
	jrnz	L609b		;; 6095: 20 04        .
	rst	3		;; 6097: df          .
	db	88h
	rst	3		;; 6099: df          .
	db	0ah
L609b:	rst	3		;; 609b: df          .
	db	8ah
	rst	3		;; 609d: df          .
	db	0ch
L609f:	rst	3		;; 609f: df          .
	db	8ch
	jmp	L8d56		;; 60a1: c3 56 8d    .V.

L60a4:	call	L8d27		;; 60a4: cd 27 8d    .'.
	db	0f4h,14h
	rst	3		;; 60a9: df          .
	db	8eh
	push	h		;; 60ab: e5          .
	call	L602a		;; 60ac: cd 2a 60    .*`
	rst	3		;; 60af: df          .
	db	0ah
	mov	a,h		;; 60b1: 7c          |
	ora	l		;; 60b2: b5          .
	jrz	L60eb		;; 60b3: 28 36       (6
L60b5:	lxi	b,00006h	;; 60b5: 01 06 00    ...
	rst	3		;; 60b8: df          .
	db	8ah
	dad	b		;; 60ba: 09          .
	rst	3		;; 60bb: df          .
	db	8
	lbcd	L1a2a		;; 60bd: ed 4b 2a 1a .K*.
	ora	a		;; 60c1: b7          .
	dsbc	b		;; 60c2: ed 42       .B
	jrnz	L60c8		;; 60c4: 20 02        .
	jr	L60eb		;; 60c6: 18 23       .#

L60c8:	rst	3		;; 60c8: df          .
	db	88h
	push	h		;; 60ca: e5          .
	lxi	h,0ff82h	;; 60cb: 21 82 ff    ...
	rst	2		;; 60ce: d7          .
	push	h		;; 60cf: e5          .
	call	L5e1e		;; 60d0: cd 1e 5e    ..^
	ldx	c,-126		;; 60d3: dd 4e 82    .N.
	ldx	b,-125		;; 60d6: dd 46 83    .F.
	rst	3		;; 60d9: df          .
	db	8eh
	ora	a		;; 60db: b7          .
	dsbc	b		;; 60dc: ed 42       .B
	jrnc	L60e2		;; 60de: 30 02       0.
	jr	L60eb		;; 60e0: 18 09       ..

L60e2:	rst	3		;; 60e2: df          .
	db	88h
	rst	3		;; 60e4: df          .
	db	0ah
	mvi	a,000h		;; 60e6: 3e 00       >.
	rar			;; 60e8: 1f          .
	jrnc	L60b5		;; 60e9: 30 ca       0.
L60eb:	rst	3		;; 60eb: df          .
	db	8ah
	rst	3		;; 60ed: df          .
	db	0ch
	jmp	L8d56		;; 60ef: c3 56 8d    .V.

L60f2:	call	L8d27		;; 60f2: cd 27 8d    .'.
	db	0f7h,'#'
	call	L60fc		;; 60f7: cd fc 60    ..`
	db	'??'
L60fc:	call	L75e5		;; 60fc: cd e5 75    ..u
	db	2
	lxi	h,L1c10		;; 6100: 21 10 1c    ...
	mvi	a,042h		;; 6103: 3e 42       >B
	call	L8b81		;; 6105: cd 81 8b    ...
	rst	3		;; 6108: df          .
	db	9dh
	push	h		;; 610a: e5          .
	call	L602a		;; 610b: cd 2a 60    .*`
	rst	3		;; 610e: df          .
	db	8
	lxi	h,L1c53		;; 6110: 21 53 1c    .S.
	mvi	m,000h		;; 6113: 36 00       6.
	rst	3		;; 6115: df          .
	db	88h
	mov	a,h		;; 6117: 7c          |
	ora	l		;; 6118: b5          .
	call	L8c0e		;; 6119: cd 0e 8c    ...
	stx	a,-118		;; 611c: dd 77 8a    .w.
L611f:	ldx	a,-118		;; 611f: dd 7e 8a    .~.
	rar			;; 6122: 1f          .
	jnc	L61a1		;; 6123: d2 a1 61    ..a
	rst	3		;; 6126: df          .
	db	88h
	push	h		;; 6128: e5          .
	lxi	h,0ff82h	;; 6129: 21 82 ff    ...
	rst	2		;; 612c: d7          .
	push	h		;; 612d: e5          .
	call	L5e1e		;; 612e: cd 1e 5e    ..^
	ldx	c,-99		;; 6131: dd 4e 9d    .N.
	ldx	b,-98		;; 6134: dd 46 9e    .F.
	rst	3		;; 6137: df          .
	db	82h
	ora	a		;; 6139: b7          .
	dsbc	b		;; 613a: ed 42       .B
	call	L8c09		;; 613c: cd 09 8c    ...
	push	psw		;; 613f: f5          .
	ldx	a,-124		;; 6140: dd 7e 84    .~.
	ora	a		;; 6143: b7          .
	call	L8c0e		;; 6144: cd 0e 8c    ...
	mov	b,a		;; 6147: 47          G
	pop	psw		;; 6148: f1          .
	ana	b		;; 6149: a0          .
	rar			;; 614a: 1f          .
	jrnc	L6178		;; 614b: 30 2b       0+
	ldx	a,-124		;; 614d: dd 7e 84    .~.
	push	psw		;; 6150: f5          .
	lxi	h,0ff8dh	;; 6151: 21 8d ff    ...
	rst	2		;; 6154: d7          .
	call	L75be		;; 6155: cd be 75    ..u
	db	10h
	call	L7450		;; 6159: cd 50 74    .Pt
	jrz	L6178		;; 615c: 28 1a       (.
	lxi	h,L1c53		;; 615e: 21 53 1c    .S.
	mvi	m,001h		;; 6161: 36 01       6.
	rst	3		;; 6163: df          .
	db	8bh
	push	h		;; 6165: e5          .
	rst	3		;; 6166: df          .
	db	88h
	rst	4		;; 6168: e7          .
	db	81h
	lxi	h,L1c10		;; 616a: 21 10 1c    ...
	push	h		;; 616d: e5          .
	rst	3		;; 616e: df          .
	db	85h
	push	h		;; 6170: e5          .
	call	L5bac		;; 6171: cd ac 5b    ..[
	mvix	000h,-118	;; 6174: dd 36 8a 00 .6..
L6178:	ldx	c,-126		;; 6178: dd 4e 82    .N.
	ldx	b,-125		;; 617b: dd 46 83    .F.
	rst	3		;; 617e: df          .
	db	9dh
	ora	a		;; 6180: b7          .
	dsbc	b		;; 6181: ed 42       .B
	jrnc	L6189		;; 6183: 30 04       0.
	mvix	000h,-118	;; 6185: dd 36 8a 00 .6..
L6189:	lxi	b,00006h	;; 6189: 01 06 00    ...
	rst	3		;; 618c: df          .
	db	88h
	dad	b		;; 618e: 09          .
	rst	3		;; 618f: df          .
	db	8
	lbcd	L1a2a		;; 6191: ed 4b 2a 1a .K*.
	ora	a		;; 6195: b7          .
	dsbc	b		;; 6196: ed 42       .B
	jrnz	L619e		;; 6198: 20 04        .
	mvix	000h,-118	;; 619a: dd 36 8a 00 .6..
L619e:	jmp	L611f		;; 619e: c3 1f 61    ..a

L61a1:	jmp	L8d56		;; 61a1: c3 56 8d    .V.

L61a4:	call	L8d27		;; 61a4: cd 27 8d    .'.
	db	0fah,0eh
	lxi	b,00006h	;; 61a9: 01 06 00    ...
	lhld	L1a2a		;; 61ac: 2a 2a 1a    **.
	dad	b		;; 61af: 09          .
	rst	3		;; 61b0: df          .
	db	4
	lxi	h,00000h	;; 61b2: 21 00 00    ...
	rst	3		;; 61b5: df          .
	db	6
	ldx	c,-124		;; 61b7: dd 4e 84    .N.
	ldx	b,-123		;; 61ba: dd 46 85    .F.
	lhld	L1a28		;; 61bd: 2a 28 1a    *(.
	ora	a		;; 61c0: b7          .
	dsbc	b		;; 61c1: ed 42       .B
	jrc	L623c		;; 61c3: 38 77       8w
	lhld	L1a2a		;; 61c5: 2a 2a 1a    **.
	rst	4		;; 61c8: e7          .
	db	87h
	push	h		;; 61ca: e5          .
	push	b		;; 61cb: c5          .
	lxi	b,00006h	;; 61cc: 01 06 00    ...
	lxi	h,00000h	;; 61cf: 21 00 00    ...
	call	L87f6		;; 61d2: cd f6 87    ...
	push	h		;; 61d5: e5          .
	push	b		;; 61d6: c5          .
	rst	3		;; 61d7: df          .
	db	88h
	rst	4		;; 61d9: e7          .
	db	87h
	call	L8890		;; 61db: cd 90 88    ...
	jrz	L622a		;; 61de: 28 4a       (J
	rst	3		;; 61e0: df          .
	db	88h
	mov	a,h		;; 61e2: 7c          |
	ora	l		;; 61e3: b5          .
	jrnz	L61fa		;; 61e4: 20 14        .
	lhld	L5b72		;; 61e6: 2a 72 5b    *r[
	rst	4		;; 61e9: e7          .
	db	87h
	push	h		;; 61eb: e5          .
	push	b		;; 61ec: c5          .
	lxi	b,00006h	;; 61ed: 01 06 00    ...
	lxi	h,00000h	;; 61f0: 21 00 00    ...
	call	L87f6		;; 61f3: cd f6 87    ...
	mov	h,b		;; 61f6: 60          `
	mov	l,c		;; 61f7: 69          i
	rst	3		;; 61f8: df          .
	db	8
L61fa:	lhld	L1a2a		;; 61fa: 2a 2a 1a    **.
	rst	4		;; 61fd: e7          .
	db	87h
	push	h		;; 61ff: e5          .
	push	b		;; 6200: c5          .
	rst	3		;; 6201: df          .
	db	88h
	rst	4		;; 6203: e7          .
	db	87h
	call	L87f6		;; 6205: cd f6 87    ...
	push	h		;; 6208: e5          .
	push	b		;; 6209: c5          .
	lxi	b,00006h	;; 620a: 01 06 00    ...
	lxi	h,00000h	;; 620d: 21 00 00    ...
	call	L87f6		;; 6210: cd f6 87    ...
	mov	h,b		;; 6213: 60          `
	mov	l,c		;; 6214: 69          i
	rst	3		;; 6215: df          .
	db	2
	mov	a,h		;; 6217: 7c          |
	ora	l		;; 6218: b5          .
	jrz	L622a		;; 6219: 28 0f       (.
	lhld	L1a2a		;; 621b: 2a 2a 1a    **.
	dcx	h		;; 621e: 2b          +
	push	h		;; 621f: e5          .
	rst	3		;; 6220: df          .
	db	84h
	dcx	h		;; 6222: 2b          +
	push	h		;; 6223: e5          .
	rst	3		;; 6224: df          .
	db	82h
	push	h		;; 6226: e5          .
	call	L7305		;; 6227: cd 05 73    ..s
L622a:	lxi	b,00006h	;; 622a: 01 06 00    ...
	rst	3		;; 622d: df          .
	db	88h
	dad	b		;; 622f: 09          .
	rst	3		;; 6230: df          .
	db	6
	rst	3		;; 6232: df          .
	db	84h
	shld	L1a2a		;; 6234: 22 2a 1a    "*.
	lxi	h,L1c54		;; 6237: 21 54 1c    .T.
	mvi	m,000h		;; 623a: 36 00       6.
L623c:	rst	3		;; 623c: df          .
	db	86h
	jmp	L8d56		;; 623e: c3 56 8d    .V.

L6241:	call	L8d27		;; 6241: cd 27 8d    .'.
	db	0fah,'S'
	rst	3		;; 6246: df          .
	db	0cdh
	push	h		;; 6248: e5          .
	lxi	h,0ff82h	;; 6249: 21 82 ff    ...
	rst	2		;; 624c: d7          .
	pop	d		;; 624d: d1          .
	xchg			;; 624e: eb          .
	lxi	b,00006h	;; 624f: 01 06 00    ...
	ldir			;; 6252: ed b0       ..
	lxi	h,0ff8ah	;; 6254: 21 8a ff    ...
	rst	2		;; 6257: d7          .
	push	h		;; 6258: e5          .
	lxi	h,0ff85h	;; 6259: 21 85 ff    ...
	rst	2		;; 625c: d7          .
	push	h		;; 625d: e5          .
	call	L5bd9		;; 625e: cd d9 5b    ..[
	rst	3		;; 6261: df          .
	db	88h
	push	h		;; 6263: e5          .
	call	L61a4		;; 6264: cd a4 61    ..a
	push	h		;; 6267: e5          .
	lxi	h,0ff82h	;; 6268: 21 82 ff    ...
	rst	2		;; 626b: d7          .
	push	h		;; 626c: e5          .
	call	L5e33		;; 626d: cd 33 5e    .3^
	jmp	L8d56		;; 6270: c3 56 8d    .V.

L6273:	call	L8d27		;; 6273: cd 27 8d    .'.
	db	0f9h,0fh
	rst	3		;; 6278: df          .
	db	89h
	push	h		;; 627a: e5          .
	lxi	h,0ff83h	;; 627b: 21 83 ff    ...
	rst	2		;; 627e: d7          .
	pop	d		;; 627f: d1          .
	xchg			;; 6280: eb          .
	lxi	b,00006h	;; 6281: 01 06 00    ...
	ldir			;; 6284: ed b0       ..
	ldx	a,-122		;; 6286: dd 7e 86    .~.
	push	psw		;; 6289: f5          .
	call	L0597		;; 628a: cd 97 05    ...
	ldx	a,-122		;; 628d: dd 7e 86    .~.
	cpi	04fh		;; 6290: fe 4f       .O
	jrnz	L629c		;; 6292: 20 08        .
	call	L0799		;; 6294: cd 99 07    ...
	call	L0799		;; 6297: cd 99 07    ...
	jr	L62aa		;; 629a: 18 0e       ..

L629c:	ldx	a,-121		;; 629c: dd 7e 87    .~.
	push	psw		;; 629f: f5          .
	call	L0597		;; 62a0: cd 97 05    ...
	ldx	a,-120		;; 62a3: dd 7e 88    .~.
	push	psw		;; 62a6: f5          .
	call	L0597		;; 62a7: cd 97 05    ...
L62aa:	jmp	L8d56		;; 62aa: c3 56 8d    .V.

L62ad:	call	L8d27		;; 62ad: cd 27 8d    .'.
	db	0,0ah
	ldx	a,-123		;; 62b2: dd 7e 85    .~.
	cpi	020h		;; 62b5: fe 20       . 
	jrz	L62c1		;; 62b7: 28 08       (.
	rst	3		;; 62b9: df          .
	db	82h
	push	h		;; 62bb: e5          .
	ldx	a,-123		;; 62bc: dd 7e 85    .~.
	pop	h		;; 62bf: e1          .
	mov	m,a		;; 62c0: 77          w
L62c1:	jmp	L8d56		;; 62c1: c3 56 8d    .V.

L62c4:	call	L8d27		;; 62c4: cd 27 8d    .'.
	db	0fah,0eh
	rst	3		;; 62c9: df          .
	db	88h
	push	h		;; 62cb: e5          .
	lxi	h,0ff82h	;; 62cc: 21 82 ff    ...
	rst	2		;; 62cf: d7          .
	pop	d		;; 62d0: d1          .
	xchg			;; 62d1: eb          .
	lxi	b,00006h	;; 62d2: 01 06 00    ...
	ldir			;; 62d5: ed b0       ..
	ldx	a,-123		;; 62d7: dd 7e 85    .~.
	cpi	04fh		;; 62da: fe 4f       .O
	jrz	L6340		;; 62dc: 28 62       (b
	ldx	a,-123		;; 62de: dd 7e 85    .~.
	cpi	020h		;; 62e1: fe 20       . 
	jrz	L632a		;; 62e3: 28 45       (E
	ldx	a,-123		;; 62e5: dd 7e 85    .~.
	push	psw		;; 62e8: f5          .
	lxi	h,L1c0f		;; 62e9: 21 0f 1c    ...
	push	h		;; 62ec: e5          .
	call	L62ad		;; 62ed: cd ad 62    ..b
	lxi	h,L1d54		;; 62f0: 21 54 1d    .T.
	mvi	m,000h		;; 62f3: 36 00       6.
	lda	L1c0f		;; 62f5: 3a 0f 1c    :..
	call	L6312		;; 62f8: cd 12 63    ..c
L62fb:	lxi	h,L1d54		;; 62fb: 21 54 1d    .T.
	mvi	m,003h		;; 62fe: 36 03       6.
	jr	L6325		;; 6300: 18 23       .#

L6302:	lxi	h,L1d54		;; 6302: 21 54 1d    .T.
	mvi	m,004h		;; 6305: 36 04       6.
	jr	L6325		;; 6307: 18 1c       ..

L6309:	lxi	h,L1d54		;; 6309: 21 54 1d    .T.
	mvi	m,002h		;; 630c: 36 02       6.
	jr	L6325		;; 630e: 18 15       ..

L6310:	jr	L6325		;; 6310: 18 13       ..

L6312:	mvi	b,004h		;; 6312: 06 04       ..
	call	L8ddc		;; 6314: cd dc 8d    ...
	db 'L' ! dw L6309
	db 'Q' ! dw L6302
	db 'T' ! dw L62fb
	db 'W' ! dw L6309
	dw	L6310
L6325:	rst	3		;; 6325: df          .
	db	82h
	shld	L1d52		;; 6327: 22 52 1d    "R.
L632a:	ldx	a,-122		;; 632a: dd 7e 86    .~.
	push	psw		;; 632d: f5          .
	lxi	h,L1c0e		;; 632e: 21 0e 1c    ...
	push	h		;; 6331: e5          .
	call	L62ad		;; 6332: cd ad 62    ..b
	ldx	a,-121		;; 6335: dd 7e 87    .~.
	push	psw		;; 6338: f5          .
	lxi	h,L1c0d		;; 6339: 21 0d 1c    ...
	push	h		;; 633c: e5          .
	call	L62ad		;; 633d: cd ad 62    ..b
L6340:	jmp	L8d56		;; 6340: c3 56 8d    .V.

L6343:	call	L8d27		;; 6343: cd 27 8d    .'.
	db	0f7h,11h
	lxi	h,L1d54		;; 6348: 21 54 1d    .T.
	mvi	m,000h		;; 634b: 36 00       6.
	lxi	h,L1c0f		;; 634d: 21 0f 1c    ...
	mvi	m,049h		;; 6350: 36 49       6I
	lxi	h,L1c0e		;; 6352: 21 0e 1c    ...
	mvi	m,04dh		;; 6355: 36 4d       6M
	lxi	h,L1c0d		;; 6357: 21 0d 1c    ...
	mvi	m,048h		;; 635a: 36 48       6H
	lxi	h,L1c0c		;; 635c: 21 0c 1c    ...
	mvi	m,020h		;; 635f: 36 20       6 
	lxi	h,L1c0b		;; 6361: 21 0b 1c    ...
	mvi	m,020h		;; 6364: 36 20       6 
	lxi	h,L1c0a		;; 6366: 21 0a 1c    ...
	mvi	m,020h		;; 6369: 36 20       6 
	lhld	L5b72		;; 636b: 2a 72 5b    *r[
	rst	3		;; 636e: df          .
	db	9
	lbcd	L1a2a		;; 6370: ed 4b 2a 1a .K*.
	ora	a		;; 6374: b7          .
	dsbc	b		;; 6375: ed 42       .B
	call	L8c0e		;; 6377: cd 0e 8c    ...
	stx	a,-120		;; 637a: dd 77 88    .w.
L637d:	ldx	a,-120		;; 637d: dd 7e 88    .~.
	rar			;; 6380: 1f          .
	jnc	L642c		;; 6381: d2 2c 64    .,d
	rst	3		;; 6384: df          .
	db	89h
	push	h		;; 6386: e5          .
	lxi	h,0ff82h	;; 6387: 21 82 ff    ...
	rst	2		;; 638a: d7          .
	push	h		;; 638b: e5          .
	call	L5e1e		;; 638c: cd 1e 5e    ..^
	ldx	c,-117		;; 638f: dd 4e 8b    .N.
	ldx	b,-116		;; 6392: dd 46 8c    .F.
	rst	3		;; 6395: df          .
	db	82h
	ora	a		;; 6397: b7          .
	dsbc	b		;; 6398: ed 42       .B
	jrc	L63a0		;; 639a: 38 04       8.
	mvix	000h,-120	;; 639c: dd 36 88 00 .6..
L63a0:	ldx	a,-124		;; 63a0: dd 7e 84    .~.
	ora	a		;; 63a3: b7          .
	jrnz	L63e3		;; 63a4: 20 3d        =
	ldx	a,-123		;; 63a6: dd 7e 85    .~.
	cpi	04fh		;; 63a9: fe 4f       .O
	jrz	L63e1		;; 63ab: 28 34       (4
	ldx	c,-117		;; 63ad: dd 4e 8b    .N.
	ldx	b,-116		;; 63b0: dd 46 8c    .F.
	rst	3		;; 63b3: df          .
	db	82h
	ora	a		;; 63b5: b7          .
	dsbc	b		;; 63b6: ed 42       .B
	jrnz	L63cc		;; 63b8: 20 12        .
	ldx	a,-123		;; 63ba: dd 7e 85    .~.
	sta	L1c0c		;; 63bd: 32 0c 1c    2..
	ldx	a,-122		;; 63c0: dd 7e 86    .~.
	sta	L1c0b		;; 63c3: 32 0b 1c    2..
	ldx	a,-121		;; 63c6: dd 7e 87    .~.
	sta	L1c0a		;; 63c9: 32 0a 1c    2..
L63cc:	ldx	c,-126		;; 63cc: dd 4e 82    .N.
	ldx	b,-125		;; 63cf: dd 46 83    .F.
	rst	3		;; 63d2: df          .
	db	8bh
	ora	a		;; 63d4: b7          .
	dsbc	b		;; 63d5: ed 42       .B
	jrc	L63e1		;; 63d7: 38 08       8.
	lxi	h,0ff82h	;; 63d9: 21 82 ff    ...
	rst	2		;; 63dc: d7          .
	push	h		;; 63dd: e5          .
	call	L62c4		;; 63de: cd c4 62    ..b
L63e1:	jr	L6414		;; 63e1: 18 31       .1

L63e3:	lda	L1c0f		;; 63e3: 3a 0f 1c    :..
	cpi	055h		;; 63e6: fe 55       .U
	jrnz	L6414		;; 63e8: 20 2a        *
	ldx	c,-126		;; 63ea: dd 4e 82    .N.
	ldx	b,-125		;; 63ed: dd 46 83    .F.
	rst	3		;; 63f0: df          .
	db	8bh
	ora	a		;; 63f2: b7          .
	dsbc	b		;; 63f3: ed 42       .B
	jrc	L6414		;; 63f5: 38 1d       8.
	ldx	a,-124		;; 63f7: dd 7e 84    .~.
	push	psw		;; 63fa: f5          .
	call	L75c9		;; 63fb: cd c9 75    ..u
	db	0bh,0,0,0,0,0,0,0,0,8,10h,4
	call	L7450		;; 640a: cd 50 74    .Pt
	jrz	L6414		;; 640d: 28 05       (.
	lxi	h,L1c0f		;; 640f: 21 0f 1c    ...
	mvi	m,049h		;; 6412: 36 49       6I
L6414:	lxi	b,00006h	;; 6414: 01 06 00    ...
	rst	3		;; 6417: df          .
	db	89h
	dad	b		;; 6419: 09          .
	rst	3		;; 641a: df          .
	db	9
	lbcd	L1a2a		;; 641c: ed 4b 2a 1a .K*.
	ora	a		;; 6420: b7          .
	dsbc	b		;; 6421: ed 42       .B
	jrnz	L6429		;; 6423: 20 04        .
	mvix	000h,-120	;; 6425: dd 36 88 00 .6..
L6429:	jmp	L637d		;; 6429: c3 7d 63    .}c

L642c:	jmp	L8d56		;; 642c: c3 56 8d    .V.

L642f:	call	L8d27		;; 642f: cd 27 8d    .'.
	db	0f9h,11h
	rst	3		;; 6434: df          .
	db	8bh
	push	h		;; 6436: e5          .
	lxi	h,0ff82h	;; 6437: 21 82 ff    ...
	rst	2		;; 643a: d7          .
	push	h		;; 643b: e5          .
	call	L5e1e		;; 643c: cd 1e 5e    ..^
	rst	3		;; 643f: df          .
	db	8bh
	mov	a,h		;; 6441: 7c          |
	ora	l		;; 6442: b5          .
	call	L8c0e		;; 6443: cd 0e 8c    ...
	push	psw		;; 6446: f5          .
	ldx	c,-119		;; 6447: dd 4e 89    .N.
	ldx	b,-118		;; 644a: dd 46 8a    .F.
	rst	3		;; 644d: df          .
	db	82h
	ora	a		;; 644f: b7          .
	dsbc	b		;; 6450: ed 42       .B
	call	L8c09		;; 6452: cd 09 8c    ...
	mov	b,a		;; 6455: 47          G
	pop	psw		;; 6456: f1          .
	ana	b		;; 6457: a0          .
	push	psw		;; 6458: f5          .
	ldx	a,-124		;; 6459: dd 7e 84    .~.
	ora	a		;; 645c: b7          .
	call	L8c09		;; 645d: cd 09 8c    ...
	mov	b,a		;; 6460: 47          G
	pop	psw		;; 6461: f1          .
	ana	b		;; 6462: a0          .
	push	psw		;; 6463: f5          .
	ldx	a,-123		;; 6464: dd 7e 85    .~.
	cpi	04fh		;; 6467: fe 4f       .O
	call	L8c0e		;; 6469: cd 0e 8c    ...
	mov	b,a		;; 646c: 47          G
	pop	psw		;; 646d: f1          .
	ana	b		;; 646e: a0          .
	stx	a,-120		;; 646f: dd 77 88    .w.
	jmp	L8d56		;; 6472: c3 56 8d    .V.

L6475:	call	L8d27		;; 6475: cd 27 8d    .'.
	db	0f1h,1bh
	lbcd	L316b		;; 647a: ed 4b 6b 31 .Kk1
	rst	3		;; 647e: df          .
	db	95h
	ora	a		;; 6480: b7          .
	dsbc	b		;; 6481: ed 42       .B
	mvi	a,000h		;; 6483: 3e 00       >.
	ral			;; 6485: 17          .
	push	psw		;; 6486: f5          .
	lbcd	L316d		;; 6487: ed 4b 6d 31 .Km1
	rst	3		;; 648b: df          .
	db	95h
	ora	a		;; 648d: b7          .
	dsbc	b		;; 648e: ed 42       .B
	mvi	a,000h		;; 6490: 3e 00       >.
	ral			;; 6492: 17          .
	mov	b,a		;; 6493: 47          G
	pop	psw		;; 6494: f1          .
	ana	b		;; 6495: a0          .
	rar			;; 6496: 1f          .
	jrnc	L649e		;; 6497: 30 05       0.
	rst	3		;; 6499: df          .
	db	95h
	shld	L316d		;; 649b: 22 6d 31    "m1
L649e:	mvix	000h,-118	;; 649e: dd 36 8a 00 .6..
	rst	3		;; 64a2: df          .
	db	91h
	rst	3		;; 64a4: df          .
	db	0dh
	mov	a,h		;; 64a6: 7c          |
	ora	l		;; 64a7: b5          .
	jrnz	L64b1		;; 64a8: 20 07        .
	lhld	L5b72		;; 64aa: 2a 72 5b    *r[
	rst	3		;; 64ad: df          .
	db	0bh
	jr	L64b9		;; 64af: 18 08       ..

L64b1:	lxi	b,00006h	;; 64b1: 01 06 00    ...
	rst	3		;; 64b4: df          .
	db	8dh
	dad	b		;; 64b6: 09          .
	rst	3		;; 64b7: df          .
	db	0bh
L64b9:	lbcd	L1a2a		;; 64b9: ed 4b 2a 1a .K*.
	rst	3		;; 64bd: df          .
	db	8bh
	ora	a		;; 64bf: b7          .
	dsbc	b		;; 64c0: ed 42       .B
	jrnc	L64d8		;; 64c2: 30 14       0.
	rst	3		;; 64c4: df          .
	db	8bh
	push	h		;; 64c6: e5          .
	rst	3		;; 64c7: df          .
	db	95h
	push	h		;; 64c9: e5          .
	call	L642f		;; 64ca: cd 2f 64    ./d
	rar			;; 64cd: 1f          .
	jrnc	L64d8		;; 64ce: 30 08       0.
	mvix	001h,-118	;; 64d0: dd 36 8a 01 .6..
	rst	3		;; 64d4: df          .
	db	8bh
	rst	3		;; 64d6: df          .
	db	8
L64d8:	rst	3		;; 64d8: df          .
	db	8dh
	push	h		;; 64da: e5          .
	rst	3		;; 64db: df          .
	db	95h
	push	h		;; 64dd: e5          .
	call	L642f		;; 64de: cd 2f 64    ./d
	rar			;; 64e1: 1f          .
	jrnc	L64ec		;; 64e2: 30 08       0.
	mvix	001h,-118	;; 64e4: dd 36 8a 01 .6..
	rst	3		;; 64e8: df          .
	db	8dh
	rst	3		;; 64ea: df          .
	db	8
L64ec:	ldx	a,-118		;; 64ec: dd 7e 8a    .~.
	rar			;; 64ef: 1f          .
	jrnc	L64ff		;; 64f0: 30 0d       0.
	rst	3		;; 64f2: df          .
	db	88h
	push	h		;; 64f4: e5          .
	lxi	h,0ff82h	;; 64f5: 21 82 ff    ...
	rst	2		;; 64f8: d7          .
	push	h		;; 64f9: e5          .
	call	L5e1e		;; 64fa: cd 1e 5e    ..^
	jr	L6521		;; 64fd: 18 22       ."

L64ff:	mvix	000h,-124	;; 64ff: dd 36 84 00 .6..
	rst	3		;; 6503: df          .
	db	95h
	rst	3		;; 6505: df          .
	db	2
	mvix	020h,-123	;; 6507: dd 36 85 20 .6. 
	mvix	020h,-122	;; 650b: dd 36 86 20 .6. 
	mvix	020h,-121	;; 650f: dd 36 87 20 .6. 
	rst	3		;; 6513: df          .
	db	8dh
	push	h		;; 6515: e5          .
	call	L61a4		;; 6516: cd a4 61    ..a
	rst	3		;; 6519: df          .
	db	8
	mov	a,h		;; 651b: 7c          |
	ora	l		;; 651c: b5          .
	jrnz	L6521		;; 651d: 20 02        .
	jr	L6570		;; 651f: 18 4f       .O

L6521:	ldx	a,-108		;; 6521: dd 7e 94    .~.
	push	psw		;; 6524: f5          .
	call	L75c9		;; 6525: cd c9 75    ..u
	db	0ah,0,0,0,0,0,0,0,0,0,'`'
	call	L7450		;; 6533: cd 50 74    .Pt
	jrz	L6540		;; 6536: 28 08       (.
	ldx	a,-108		;; 6538: dd 7e 94    .~.
	stx	a,-122		;; 653b: dd 77 86    .w.
	jr	L6565		;; 653e: 18 25       .%

L6540:	ldx	a,-108		;; 6540: dd 7e 94    .~.
	push	psw		;; 6543: f5          .
	call	L75c9		;; 6544: cd c9 75    ..u
	db	0ah,0,0,0,0,0,0,4,0,10h,1
	call	L7450		;; 6552: cd 50 74    .Pt
	jrz	L655f		;; 6555: 28 08       (.
	ldx	a,-108		;; 6557: dd 7e 94    .~.
	stx	a,-121		;; 655a: dd 77 87    .w.
	jr	L6565		;; 655d: 18 06       ..

L655f:	ldx	a,-108		;; 655f: dd 7e 94    .~.
	stx	a,-123		;; 6562: dd 77 85    .w.
L6565:	rst	3		;; 6565: df          .
	db	88h
	push	h		;; 6567: e5          .
	lxi	h,0ff82h	;; 6568: 21 82 ff    ...
	rst	2		;; 656b: d7          .
	push	h		;; 656c: e5          .
	call	L5e33		;; 656d: cd 33 5e    .3^
L6570:	lxi	h,L1c54		;; 6570: 21 54 1c    .T.
	mvi	m,000h		;; 6573: 36 00       6.
	rst	3		;; 6575: df          .
	db	88h
	rst	3		;; 6577: df          .
	db	0fh
	jmp	L8d56		;; 6579: c3 56 8d    .V.

L657c:	call	L8d27		;; 657c: cd 27 8d    .'.
	db	0f8h,10h
	rst	3		;; 6581: df          .
	db	8ah
	push	h		;; 6583: e5          .
	lxi	h,0ff84h	;; 6584: 21 84 ff    ...
	rst	2		;; 6587: d7          .
	push	h		;; 6588: e5          .
	call	L5e1e		;; 6589: cd 1e 5e    ..^
	lbcd	L5b72		;; 658c: ed 4b 72 5b .Kr[
	rst	3		;; 6590: df          .
	db	8ah
	ora	a		;; 6592: b7          .
	dsbc	b		;; 6593: ed 42       .B
	mvi	a,000h		;; 6595: 3e 00       >.
	cmc			;; 6597: 3f          ?
	ral			;; 6598: 17          .
	push	psw		;; 6599: f5          .
	lbcd	L1a2a		;; 659a: ed 4b 2a 1a .K*.
	rst	3		;; 659e: df          .
	db	8ah
	ora	a		;; 65a0: b7          .
	dsbc	b		;; 65a1: ed 42       .B
	mvi	a,000h		;; 65a3: 3e 00       >.
	ral			;; 65a5: 17          .
	mov	b,a		;; 65a6: 47          G
	pop	psw		;; 65a7: f1          .
	ana	b		;; 65a8: a0          .
	rar			;; 65a9: 1f          .
	jrnc	L65f2		;; 65aa: 30 46       0F
	lhld	L1a2a		;; 65ac: 2a 2a 1a    **.
	rst	4		;; 65af: e7          .
	db	87h
	push	h		;; 65b1: e5          .
	push	b		;; 65b2: c5          .
	rst	3		;; 65b3: df          .
	db	8ah
	rst	4		;; 65b5: e7          .
	db	87h
	call	L87f6		;; 65b7: cd f6 87    ...
	push	h		;; 65ba: e5          .
	push	b		;; 65bb: c5          .
	lxi	b,00006h	;; 65bc: 01 06 00    ...
	lxi	h,00000h	;; 65bf: 21 00 00    ...
	call	L87f6		;; 65c2: cd f6 87    ...
	mov	h,b		;; 65c5: 60          `
	mov	l,c		;; 65c6: 69          i
	rst	3		;; 65c7: df          .
	db	2
	mov	a,h		;; 65c9: 7c          |
	ora	l		;; 65ca: b5          .
	jrz	L65dd		;; 65cb: 28 10       (.
	lxi	b,00006h	;; 65cd: 01 06 00    ...
	rst	3		;; 65d0: df          .
	db	8ah
	dad	b		;; 65d2: 09          .
	push	h		;; 65d3: e5          .
	rst	3		;; 65d4: df          .
	db	8ah
	push	h		;; 65d6: e5          .
	rst	3		;; 65d7: df          .
	db	82h
	push	h		;; 65d9: e5          .
	call	L72fe		;; 65da: cd fe 72    ..r
L65dd:	lhld	L1a2a		;; 65dd: 2a 2a 1a    **.
	rst	4		;; 65e0: e7          .
	db	87h
	push	h		;; 65e2: e5          .
	push	b		;; 65e3: c5          .
	lxi	b,00006h	;; 65e4: 01 06 00    ...
	lxi	h,00000h	;; 65e7: 21 00 00    ...
	call	L87f6		;; 65ea: cd f6 87    ...
	mov	h,b		;; 65ed: 60          `
	mov	l,c		;; 65ee: 69          i
	shld	L1a2a		;; 65ef: 22 2a 1a    "*.
L65f2:	jmp	L8d56		;; 65f2: c3 56 8d    .V.

L65f5:	call	L8d27		;; 65f5: cd 27 8d    .'.
	db	0eeh,1ah
	lda	L02ec		;; 65fa: 3a ec 02    :..
	push	psw		;; 65fd: f5          .
	call	L0953		;; 65fe: cd 53 09    .S.
	lhld	L5b72		;; 6601: 2a 72 5b    *r[
	rst	3		;; 6604: df          .
	db	12h
L6606:	lbcd	L1a2a		;; 6606: ed 4b 2a 1a .K*.
	rst	3		;; 660a: df          .
	db	92h
	ora	a		;; 660c: b7          .
	dsbc	b		;; 660d: ed 42       .B
	call	L8c0e		;; 660f: cd 0e 8c    ...
	push	psw		;; 6612: f5          .
	lda	L02eb		;; 6613: 3a eb 02    :..
	lxi	h,L02e3		;; 6616: 21 e3 02    ...
	cmp	m		;; 6619: be          .
	mvi	a,000h		;; 661a: 3e 00       >.
	cmc			;; 661c: 3f          ?
	ral			;; 661d: 17          .
	mov	b,a		;; 661e: 47          G
	pop	psw		;; 661f: f1          .
	ana	b		;; 6620: a0          .
	rar			;; 6621: 1f          .
	jnc	L66c2		;; 6622: d2 c2 66    ..f
	lda	L1c5b		;; 6625: 3a 5b 1c    :[.
	lxi	h,L02e3		;; 6628: 21 e3 02    ...
	cmp	m		;; 662b: be          .
	jrnz	L6635		;; 662c: 20 07        .
	lda	L1c5b		;; 662e: 3a 5b 1c    :[.
	dcr	a		;; 6631: 3d          =
	sta	L1c5b		;; 6632: 32 5b 1c    2[.
L6635:	lxi	b,00006h	;; 6635: 01 06 00    ...
	rst	3		;; 6638: df          .
	db	92h
	dad	b		;; 663a: 09          .
	rst	3		;; 663b: df          .
	db	10h
	rst	3		;; 663d: df          .
	db	92h
	push	h		;; 663f: e5          .
	lxi	h,0ff88h	;; 6640: 21 88 ff    ...
	rst	2		;; 6643: d7          .
	push	h		;; 6644: e5          .
	call	L5e1e		;; 6645: cd 1e 5e    ..^
	ldx	a,-118		;; 6648: dd 7e 8a    .~.
	ora	a		;; 664b: b7          .
	jrnz	L66bb		;; 664c: 20 6d        m
	rst	3		;; 664e: df          .
	db	94h
	rst	3		;; 6650: df          .
	db	0eh
	lbcd	L1a2a		;; 6652: ed 4b 2a 1a .K*.
	rst	3		;; 6656: df          .
	db	90h
	ora	a		;; 6658: b7          .
	dsbc	b		;; 6659: ed 42       .B
	jrz	L666c		;; 665b: 28 0f       (.
	rst	3		;; 665d: df          .
	db	90h
	push	h		;; 665f: e5          .
	lxi	h,0ff82h	;; 6660: 21 82 ff    ...
	rst	2		;; 6663: d7          .
	push	h		;; 6664: e5          .
	call	L5e1e		;; 6665: cd 1e 5e    ..^
	rst	3		;; 6668: df          .
	db	82h
	rst	3		;; 666a: df          .
	db	0eh
L666c:	ldx	c,-108		;; 666c: dd 4e 94    .N.
	ldx	b,-107		;; 666f: dd 46 95    .F.
	rst	3		;; 6672: df          .
	db	8eh
	ora	a		;; 6674: b7          .
	dsbc	b		;; 6675: ed 42       .B
	jrc	L66bb		;; 6677: 38 42       8B
	mvi	a,02fh		;; 6679: 3e 2f       >/
	push	psw		;; 667b: f5          .
	call	L0597		;; 667c: cd 97 05    ...
	call	L0799		;; 667f: cd 99 07    ...
	rst	3		;; 6682: df          .
	db	88h
	push	h		;; 6684: e5          .
	call	L5428		;; 6685: cd 28 54    .(T
	call	L0799		;; 6688: cd 99 07    ...
	lxi	h,0ff88h	;; 668b: 21 88 ff    ...
	rst	2		;; 668e: d7          .
	push	h		;; 668f: e5          .
	call	L6273		;; 6690: cd 73 62    .sb
	call	L0799		;; 6693: cd 99 07    ...
	lxi	b,0fff6h	;; 6696: 01 f6 ff    ...
	lda	L02ef		;; 6699: 3a ef 02    :..
	mov	l,a		;; 669c: 6f          o
	mvi	h,000h		;; 669d: 26 00       &.
	dad	b		;; 669f: 09          .
	mov	b,h		;; 66a0: 44          D
	mov	c,l		;; 66a1: 4d          M
	lda	L02ee		;; 66a2: 3a ee 02    :..
	mov	l,a		;; 66a5: 6f          o
	mvi	h,000h		;; 66a6: 26 00       &.
	rst	4		;; 66a8: e7          .
	db	85h
	cpe	L8c01		;; 66aa: ec 01 8c    ...
	jp	L66bb		;; 66ad: f2 bb 66    ..f
	call	L0977		;; 66b0: cd 77 09    .w.
	lda	L02e3		;; 66b3: 3a e3 02    :..
	inr	a		;; 66b6: 3c          <
	push	psw		;; 66b7: f5          .
	call	L0953		;; 66b8: cd 53 09    .S.
L66bb:	rst	3		;; 66bb: df          .
	db	90h
	rst	3		;; 66bd: df          .
	db	12h
	jmp	L6606		;; 66bf: c3 06 66    ..f

L66c2:	lda	L02eb		;; 66c2: 3a eb 02    :..
	lxi	h,L02e3		;; 66c5: 21 e3 02    ...
	cmp	m		;; 66c8: be          .
	jrc	L66ce		;; 66c9: 38 03       8.
	call	L0977		;; 66cb: cd 77 09    .w.
L66ce:	jmp	L8d56		;; 66ce: c3 56 8d    .V.

L66d1:	call	L8d27		;; 66d1: cd 27 8d    .'.
	db	0f8h,0eh
	lhld	L5b72		;; 66d6: 2a 72 5b    *r[
	rst	3		;; 66d9: df          .
	db	8
L66db:	lbcd	L1a2a		;; 66db: ed 4b 2a 1a .K*.
	rst	3		;; 66df: df          .
	db	88h
	ora	a		;; 66e1: b7          .
	dsbc	b		;; 66e2: ed 42       .B
	jrz	L6719		;; 66e4: 28 33       (3
	rst	3		;; 66e6: df          .
	db	88h
	push	h		;; 66e8: e5          .
	lxi	h,0ff82h	;; 66e9: 21 82 ff    ...
	rst	2		;; 66ec: d7          .
	push	h		;; 66ed: e5          .
	call	L5e1e		;; 66ee: cd 1e 5e    ..^
	ldx	a,-124		;; 66f1: dd 7e 84    .~.
	ora	a		;; 66f4: b7          .
	call	L8c09		;; 66f5: cd 09 8c    ...
	push	psw		;; 66f8: f5          .
	ldx	a,-123		;; 66f9: dd 7e 85    .~.
	cpi	04fh		;; 66fc: fe 4f       .O
	call	L8c09		;; 66fe: cd 09 8c    ...
	mov	b,a		;; 6701: 47          G
	pop	psw		;; 6702: f1          .
	ana	b		;; 6703: a0          .
	rar			;; 6704: 1f          .
	jrnc	L670f		;; 6705: 30 08       0.
	rst	3		;; 6707: df          .
	db	88h
	push	h		;; 6709: e5          .
	call	L657c		;; 670a: cd 7c 65    .|e
	jr	L66db		;; 670d: 18 cc       ..

L670f:	lxi	b,00006h	;; 670f: 01 06 00    ...
	rst	3		;; 6712: df          .
	db	88h
	dad	b		;; 6714: 09          .
	rst	3		;; 6715: df          .
	db	8
	jr	L66db		;; 6717: 18 c2       ..

L6719:	jmp	L8d56		;; 6719: c3 56 8d    .V.

L671c:	call	L8d27		;; 671c: cd 27 8d    .'.
	db	0fah,10h
	mvix	000h,-124	;; 6721: dd 36 84 00 .6..
	rst	3		;; 6725: df          .
	db	8ah
	rst	3		;; 6727: df          .
	db	2
	mvix	04fh,-123	;; 6729: dd 36 85 4f .6.O
	rst	3		;; 672d: df          .
	db	88h
	rst	3		;; 672f: df          .
	db	6
	rst	3		;; 6731: df          .
	db	8ah
	push	h		;; 6733: e5          .
	call	L5f05		;; 6734: cd 05 5f    .._
	push	h		;; 6737: e5          .
	call	L61a4		;; 6738: cd a4 61    ..a
	push	h		;; 673b: e5          .
	lxi	h,0ff82h	;; 673c: 21 82 ff    ...
	rst	2		;; 673f: d7          .
	push	h		;; 6740: e5          .
	call	L5e33		;; 6741: cd 33 5e    .3^
	jmp	L8d56		;; 6744: c3 56 8d    .V.

L6747:	call	L8d27		;; 6747: cd 27 8d    .'.
	db	0,0ah
	rst	3		;; 674c: df          .
	db	84h
	push	h		;; 674e: e5          .
	rst	3		;; 674f: df          .
	db	82h
	push	h		;; 6751: e5          .
	call	L132e		;; 6752: cd 2e 13    ...
	xri	001h		;; 6755: ee 01       ..
	rar			;; 6757: 1f          .
	jrnc	L675d		;; 6758: 30 03       0.
	call	L0a8f		;; 675a: cd 8f 0a    ...
L675d:	jmp	L8d56		;; 675d: c3 56 8d    .V.

L6760:	call	L8d27		;; 6760: cd 27 8d    .'.
	db	0feh,0ah
	rst	3		;; 6765: df          .
	db	84h
	shld	L1d41		;; 6767: 22 41 1d    "A.
	mov	a,h		;; 676a: 7c          |
	ora	l		;; 676b: b5          .
	call	L8c0e		;; 676c: cd 0e 8c    ...
	sta	L1d40		;; 676f: 32 40 1d    2@.
	rar			;; 6772: 1f          .
	jrnc	L67a3		;; 6773: 30 2e       0.
	lhld	L1d41		;; 6775: 2a 41 1d    *A.
	push	h		;; 6778: e5          .
	lxi	h,L1d43		;; 6779: 21 43 1d    .C.
	push	h		;; 677c: e5          .
	call	L5e1e		;; 677d: cd 1e 5e    ..^
	lxi	b,00006h	;; 6780: 01 06 00    ...
	lhld	L1d41		;; 6783: 2a 41 1d    *A.
	dad	b		;; 6786: 09          .
	rst	3		;; 6787: df          .
	db	2
	lbcd	L1a2a		;; 6789: ed 4b 2a 1a .K*.
	ora	a		;; 678d: b7          .
	dsbc	b		;; 678e: ed 42       .B
	call	L8c0e		;; 6790: cd 0e 8c    ...
	sta	L1d49		;; 6793: 32 49 1d    2I.
	rar			;; 6796: 1f          .
	jrnc	L67a3		;; 6797: 30 0a       0.
	rst	3		;; 6799: df          .
	db	82h
	push	h		;; 679b: e5          .
	lxi	h,L1d4a		;; 679c: 21 4a 1d    .J.
	push	h		;; 679f: e5          .
	call	L5e1e		;; 67a0: cd 1e 5e    ..^
L67a3:	jmp	L8d56		;; 67a3: c3 56 8d    .V.

L67a6:	call	L8d27		;; 67a6: cd 27 8d    .'.
	db	0feh,8
	lxi	b,00006h	;; 67ab: 01 06 00    ...
	lhld	L1d41		;; 67ae: 2a 41 1d    *A.
	dad	b		;; 67b1: 09          .
	rst	3		;; 67b2: df          .
	db	2
	lbcd	L1a2a		;; 67b4: ed 4b 2a 1a .K*.
	ora	a		;; 67b8: b7          .
	dsbc	b		;; 67b9: ed 42       .B
	jrnz	L67c2		;; 67bb: 20 05        .
	lxi	h,00000h	;; 67bd: 21 00 00    ...
	rst	3		;; 67c0: df          .
	db	2
L67c2:	rst	3		;; 67c2: df          .
	db	82h
	push	h		;; 67c4: e5          .
	call	L6760		;; 67c5: cd 60 67    .`g
	jmp	L8d56		;; 67c8: c3 56 8d    .V.

L67cb:	call	L8d27		;; 67cb: cd 27 8d    .'.
	db	0fbh,0bh
	lxi	h,00000h	;; 67d0: 21 00 00    ...
	rst	3		;; 67d3: df          .
	db	3
L67d5:	lhld	L02f3		;; 67d5: 2a f3 02    *..
	push	h		;; 67d8: e5          .
	call	L7bb7		;; 67d9: cd b7 7b    ..{
	rar			;; 67dc: 1f          .
	jrnc	L67e1		;; 67dd: 30 02       0.
	jr	L6857		;; 67df: 18 76       .v

L67e1:	call	L763d		;; 67e1: cd 3d 76    .=v
	lhld	L02f3		;; 67e4: 2a f3 02    *..
	push	h		;; 67e7: e5          .
	call	L7682		;; 67e8: cd 82 76    ..v
	call	L7bf4		;; 67eb: cd f4 7b    ..{
	mov	a,m		;; 67ee: 7e          ~
	rst	4		;; 67ef: e7          .
	db	8ah
	sty	a,-42		;; 67f1: fd 77 d6    .w.
	call	L7aed		;; 67f4: cd ed 7a    ..z
	call	L768c		;; 67f7: cd 8c 76    ..v
	rst	4		;; 67fa: e7          .
	db	8ah
	ldy	a,-42		;; 67fc: fd 7e d6    .~.
	cpi	020h		;; 67ff: fe 20       . 
	jrnz	L6805		;; 6801: 20 02        .
	jr	L67d5		;; 6803: 18 d0       ..

L6805:	jr	L682c		;; 6805: 18 25       .%

L6807:	lhld	L02f3		;; 6807: 2a f3 02    *..
	push	h		;; 680a: e5          .
	call	L7bb7		;; 680b: cd b7 7b    ..{
	rar			;; 680e: 1f          .
	jrnc	L6813		;; 680f: 30 02       0.
	jr	L6857		;; 6811: 18 44       .D

L6813:	call	L763d		;; 6813: cd 3d 76    .=v
	lhld	L02f3		;; 6816: 2a f3 02    *..
	push	h		;; 6819: e5          .
	call	L7682		;; 681a: cd 82 76    ..v
	call	L7bf4		;; 681d: cd f4 7b    ..{
	mov	a,m		;; 6820: 7e          ~
	rst	4		;; 6821: e7          .
	db	8ah
	sty	a,-42		;; 6823: fd 77 d6    .w.
	call	L7aed		;; 6826: cd ed 7a    ..z
	call	L768c		;; 6829: cd 8c 76    ..v
L682c:	rst	4		;; 682c: e7          .
	db	8ah
	ldy	a,-42		;; 682e: fd 7e d6    .~.
	push	psw		;; 6831: f5          .
	lxi	h,0ff82h	;; 6832: 21 82 ff    ...
	rst	2		;; 6835: d7          .
	push	h		;; 6836: e5          .
	call	L19c8		;; 6837: cd c8 19    ...
	rar			;; 683a: 1f          .
	jrnc	L6857		;; 683b: 30 1a       0.
	rst	3		;; 683d: df          .
	db	83h
	push	h		;; 683f: e5          .
	lxi	h,00010h	;; 6840: 21 10 00    ...
	call	L87b7		;; 6843: cd b7 87    ...
	push	h		;; 6846: e5          .
	push	b		;; 6847: c5          .
	ldx	a,-126		;; 6848: dd 7e 82    .~.
	call	L8807		;; 684b: cd 07 88    ...
	call	L87e7		;; 684e: cd e7 87    ...
	mov	h,b		;; 6851: 60          `
	mov	l,c		;; 6852: 69          i
	rst	3		;; 6853: df          .
	db	3
	jr	L6807		;; 6855: 18 b0       ..

L6857:	rst	3		;; 6857: df          .
	db	83h
	rst	3		;; 6859: df          .
	db	5
	jmp	L8d56		;; 685b: c3 56 8d    .V.

L685e:	call	L8d27		;; 685e: cd 27 8d    .'.
	db	80h,86h
	lxi	h,L1098		;; 6863: 21 98 10    ...
	call	L75ea		;; 6866: cd ea 75    ..u
	lxi	h,0ff88h	;; 6869: 21 88 ff    ...
	rst	2		;; 686c: d7          .
	mvi	a,004h		;; 686d: 3e 04       >.
	call	L8b81		;; 686f: cd 81 8b    ...
	lda	L1785		;; 6872: 3a 85 17    :..
	cpi	047h		;; 6875: fe 47       .G
	jrnz	L688d		;; 6877: 20 14        .
	call	L6880		;; 6879: cd 80 68    ..h
	db	'.BRK'
L6880:	call	L75e5		;; 6880: cd e5 75    ..u
	db	4
	lxi	h,0ff88h	;; 6884: 21 88 ff    ...
	rst	2		;; 6887: d7          .
	mvi	a,004h		;; 6888: 3e 04       >.
	call	L8b81		;; 688a: cd 81 8b    ...
L688d:	lxi	h,L1074		;; 688d: 21 74 10    .t.
	call	L75ea		;; 6890: cd ea 75    ..u
	lxi	h,0ff88h	;; 6893: 21 88 ff    ...
	rst	2		;; 6896: d7          .
	call	L75ea		;; 6897: cd ea 75    ..u
	call	L8b20		;; 689a: cd 20 8b    . .
	lxi	h,0ffd7h	;; 689d: 21 d7 ff    ...
	rst	2		;; 68a0: d7          .
	mvi	a,028h		;; 68a1: 3e 28       >(
	call	L8b81		;; 68a3: cd 81 8b    ...
	mvix	000h,-111	;; 68a6: dd 36 91 00 .6..
	lxi	h,0ffd7h	;; 68aa: 21 d7 ff    ...
	rst	2		;; 68ad: d7          .
	call	L75ea		;; 68ae: cd ea 75    ..u
	call	L793e		;; 68b1: cd 3e 79    .>y
	rar			;; 68b4: 1f          .
	jnc	L6b5d		;; 68b5: d2 5d 6b    .]k
	lxi	h,L02f3		;; 68b8: 21 f3 02    ...
	push	h		;; 68bb: e5          .
	lxi	h,00000h	;; 68bc: 21 00 00    ...
	push	h		;; 68bf: e5          .
	lxi	h,0ffd7h	;; 68c0: 21 d7 ff    ...
	rst	2		;; 68c3: d7          .
	call	L75ea		;; 68c4: cd ea 75    ..u
	call	L7995		;; 68c7: cd 95 79    ..y
	lxi	h,L02f3		;; 68ca: 21 f3 02    ...
	push	h		;; 68cd: e5          .
	lxi	h,00000h	;; 68ce: 21 00 00    ...
	push	h		;; 68d1: e5          .
	call	L78b6		;; 68d2: cd b6 78    ..x
L68d5:	lhld	L02f3		;; 68d5: 2a f3 02    *..
	push	h		;; 68d8: e5          .
	call	L7ba1		;; 68d9: cd a1 7b    ..{
	xri	001h		;; 68dc: ee 01       ..
	rar			;; 68de: 1f          .
	jnc	L6b54		;; 68df: d2 54 6b    .Tk
	call	L0496		;; 68e2: cd 96 04    ...
	rar			;; 68e5: 1f          .
	jrnc	L68eb		;; 68e6: 30 03       0.
	jmp	L6b54		;; 68e8: c3 54 6b    .Tk

L68eb:	lhld	L02f3		;; 68eb: 2a f3 02    *..
	push	h		;; 68ee: e5          .
	call	L7bb7		;; 68ef: cd b7 7b    ..{
	rar			;; 68f2: 1f          .
	jrnc	L6904		;; 68f3: 30 0f       0.
	call	L7649		;; 68f5: cd 49 76    .Iv
	lhld	L02f3		;; 68f8: 2a f3 02    *..
	push	h		;; 68fb: e5          .
	call	L7682		;; 68fc: cd 82 76    ..v
	call	L768c		;; 68ff: cd 8c 76    ..v
	jr	L68d5		;; 6902: 18 d1       ..

L6904:	call	L763d		;; 6904: cd 3d 76    .=v
	lhld	L02f3		;; 6907: 2a f3 02    *..
	push	h		;; 690a: e5          .
	call	L7682		;; 690b: cd 82 76    ..v
	call	L7bf4		;; 690e: cd f4 7b    ..{
	mov	a,m		;; 6911: 7e          ~
	stx	a,-110		;; 6912: dd 77 92    .w.
	call	L7aed		;; 6915: cd ed 7a    ..z
	call	L768c		;; 6918: cd 8c 76    ..v
	rst	4		;; 691b: e7          .
	db	82h
	call	L67cb		;; 691d: cd cb 67    ..g
	stx	l,+0		;; 6920: dd 75 00    .u.
	stx	h,+1		;; 6923: dd 74 01    .t.
	push	h		;; 6926: e5          .
	call	L60a4		;; 6927: cd a4 60    ..`
	rst	3		;; 692a: df          .
	db	0fh
	lda	L1785		;; 692c: 3a 85 17    :..
	cpi	047h		;; 692f: fe 47       .G
	jrnz	L6949		;; 6931: 20 16        .
	ldx	l,+0		;; 6933: dd 6e 00    .n.
	ldx	h,+1		;; 6936: dd 66 01    .f.
	push	h		;; 6939: e5          .
	ldx	a,-110		;; 693a: dd 7e 92    .~.
	push	psw		;; 693d: f5          .
	rst	3		;; 693e: df          .
	db	8fh
	push	h		;; 6940: e5          .
	call	L6475		;; 6941: cd 75 64    .ud
	rst	3		;; 6944: df          .
	db	0fh
	jmp	L6b18		;; 6946: c3 18 6b    ..k

L6949:	ldx	a,-110		;; 6949: dd 7e 92    .~.
	call	L6b0b		;; 694c: cd 0b 6b    ..k
L694f:	jmp	L6b18		;; 694f: c3 18 6b    ..k

L6952:	lhld	L02f3		;; 6952: 2a f3 02    *..
	push	h		;; 6955: e5          .
	call	L7ba1		;; 6956: cd a1 7b    ..{
	push	psw		;; 6959: f5          .
	lhld	L02f3		;; 695a: 2a f3 02    *..
	push	h		;; 695d: e5          .
	call	L7bb7		;; 695e: cd b7 7b    ..{
	mov	b,a		;; 6961: 47          G
	pop	psw		;; 6962: f1          .
	ora	b		;; 6963: b0          .
	xri	001h		;; 6964: ee 01       ..
	rar			;; 6966: 1f          .
	jnc	L69f2		;; 6967: d2 f2 69    ..i
	call	L763d		;; 696a: cd 3d 76    .=v
	lhld	L02f3		;; 696d: 2a f3 02    *..
	push	h		;; 6970: e5          .
	call	L7682		;; 6971: cd 82 76    ..v
	call	L7bf4		;; 6974: cd f4 7b    ..{
	mov	a,m		;; 6977: 7e          ~
	stx	a,-42		;; 6978: dd 77 d6    .w.
	call	L7aed		;; 697b: cd ed 7a    ..z
	call	L768c		;; 697e: cd 8c 76    ..v
	ldx	a,-42		;; 6981: dd 7e d6    .~.
	cpi	04fh		;; 6984: fe 4f       .O
	jrnz	L699a		;; 6986: 20 12        .
	ldx	l,+0		;; 6988: dd 6e 00    .n.
	ldx	h,+1		;; 698b: dd 66 01    .f.
	push	h		;; 698e: e5          .
	rst	4		;; 698f: e7          .
	db	82h
	call	L67cb		;; 6991: cd cb 67    ..g
	push	h		;; 6994: e5          .
	call	L6747		;; 6995: cd 47 67    .Gg
	jr	L69ef		;; 6998: 18 55       .U

L699a:	ldx	a,-42		;; 699a: dd 7e d6    .~.
	cpi	021h		;; 699d: fe 21       ..
	jrnz	L69bb		;; 699f: 20 1a        .
	ldx	l,+0		;; 69a1: dd 6e 00    .n.
	ldx	h,+1		;; 69a4: dd 66 01    .f.
	push	h		;; 69a7: e5          .
	rst	4		;; 69a8: e7          .
	db	82h
	call	L67cb		;; 69aa: cd cb 67    ..g
	push	h		;; 69ad: e5          .
	call	L1230		;; 69ae: cd 30 12    .0.
	xri	001h		;; 69b1: ee 01       ..
	rar			;; 69b3: 1f          .
	jrnc	L69b9		;; 69b4: 30 03       0.
	call	L0a8f		;; 69b6: cd 8f 0a    ...
L69b9:	jr	L69ef		;; 69b9: 18 34       .4

L69bb:	ldx	a,-42		;; 69bb: dd 7e d6    .~.
	push	psw		;; 69be: f5          .
	call	L75c9		;; 69bf: cd c9 75    ..u
	db	0ch,0,0,0,0,0,80h,0,0,0feh,0ffh,0ffh,7
	call	L7450		;; 69cf: cd 50 74    .Pt
	jrz	L69ef		;; 69d2: 28 1b       (.
	ldx	l,+0		;; 69d4: dd 6e 00    .n.
	ldx	h,+1		;; 69d7: dd 66 01    .f.
	push	h		;; 69da: e5          .
	ldx	a,-42		;; 69db: dd 7e d6    .~.
	push	psw		;; 69de: f5          .
	ldx	l,+0		;; 69df: dd 6e 00    .n.
	ldx	h,+1		;; 69e2: dd 66 01    .f.
	push	h		;; 69e5: e5          .
	call	L5f05		;; 69e6: cd 05 5f    .._
	push	h		;; 69e9: e5          .
	call	L6475		;; 69ea: cd 75 64    .ud
	rst	3		;; 69ed: df          .
	db	0fh
L69ef:	jmp	L6952		;; 69ef: c3 52 69    .Ri

L69f2:	jmp	L6b18		;; 69f2: c3 18 6b    ..k

L69f5:	mvix	000h,-109	;; 69f5: dd 36 93 00 .6..
	mvix	000h,-121	;; 69f9: dd 36 87 00 .6..
	ldx	a,-42		;; 69fd: dd 7e d6    .~.
	cpi	02ch		;; 6a00: fe 2c       .,
	jrnz	L6a32		;; 6a02: 20 2e        .
	call	L763d		;; 6a04: cd 3d 76    .=v
	lhld	L02f3		;; 6a07: 2a f3 02    *..
	push	h		;; 6a0a: e5          .
	call	L7682		;; 6a0b: cd 82 76    ..v
	call	L7bf4		;; 6a0e: cd f4 7b    ..{
	mov	a,m		;; 6a11: 7e          ~
	stx	a,-121		;; 6a12: dd 77 87    .w.
	call	L7aed		;; 6a15: cd ed 7a    ..z
	call	L768c		;; 6a18: cd 8c 76    ..v
	call	L763d		;; 6a1b: cd 3d 76    .=v
	lhld	L02f3		;; 6a1e: 2a f3 02    *..
	push	h		;; 6a21: e5          .
	call	L7682		;; 6a22: cd 82 76    ..v
	call	L7bf4		;; 6a25: cd f4 7b    ..{
	mov	a,m		;; 6a28: 7e          ~
	stx	a,-42		;; 6a29: dd 77 d6    .w.
	call	L7aed		;; 6a2c: cd ed 7a    ..z
	call	L768c		;; 6a2f: cd 8c 76    ..v
L6a32:	lhld	L02f3		;; 6a32: 2a f3 02    *..
	push	h		;; 6a35: e5          .
	call	L7bb7		;; 6a36: cd b7 7b    ..{
	xri	001h		;; 6a39: ee 01       ..
	rar			;; 6a3b: 1f          .
	jrnc	L6a75		;; 6a3c: 30 37       07
	call	L763d		;; 6a3e: cd 3d 76    .=v
	lhld	L02f3		;; 6a41: 2a f3 02    *..
	push	h		;; 6a44: e5          .
	call	L7682		;; 6a45: cd 82 76    ..v
	call	L7bf4		;; 6a48: cd f4 7b    ..{
	mov	a,m		;; 6a4b: 7e          ~
	stx	a,-42		;; 6a4c: dd 77 d6    .w.
	call	L7aed		;; 6a4f: cd ed 7a    ..z
	call	L768c		;; 6a52: cd 8c 76    ..v
	ldx	a,-109		;; 6a55: dd 7e 93    .~.
	cpi	042h		;; 6a58: fe 42       .B
	jrnc	L6a73		;; 6a5a: 30 17       0.
	ldx	a,-42		;; 6a5c: dd 7e d6    .~.
	mov	b,a		;; 6a5f: 47          G
	mvi	c,001h		;; 6a60: 0e 01       ..
	push	b		;; 6a62: c5          .
	lxi	h,0ff93h	;; 6a63: 21 93 ff    ...
	rst	2		;; 6a66: d7          .
	push	h		;; 6a67: e5          .
	mvi	a,042h		;; 6a68: 3e 42       >B
	push	psw		;; 6a6a: f5          .
	ldx	a,-109		;; 6a6b: dd 7e 93    .~.
	inr	a		;; 6a6e: 3c          <
	push	psw		;; 6a6f: f5          .
	call	L8a7e		;; 6a70: cd 7e 8a    .~.
L6a73:	jr	L6a32		;; 6a73: 18 bd       ..

L6a75:	ldx	l,+0		;; 6a75: dd 6e 00    .n.
	ldx	h,+1		;; 6a78: dd 66 01    .f.
	rst	3		;; 6a7b: df          .
	db	2
	ldx	a,-110		;; 6a7d: dd 7e 92    .~.
	stx	a,-124		;; 6a80: dd 77 84    .w.
	lxi	h,L1c53		;; 6a83: 21 53 1c    .S.
	mvi	m,000h		;; 6a86: 36 00       6.
	ldx	a,-110		;; 6a88: dd 7e 92    .~.
	cpi	03fh		;; 6a8b: fe 3f       .?
	jrz	L6adf		;; 6a8d: 28 50       (P
	ldx	l,+0		;; 6a8f: dd 6e 00    .n.
	ldx	h,+1		;; 6a92: dd 66 01    .f.
	push	h		;; 6a95: e5          .
	ldx	l,-110		;; 6a96: dd 6e 92    .n.
	mvi	h,000h		;; 6a99: 26 00       &.
	lxi	b,00001h	;; 6a9b: 01 01 00    ...
	push	b		;; 6a9e: c5          .
	push	h		;; 6a9f: e5          .
	call	L73c9		;; 6aa0: cd c9 73    ..s
	call	L7397		;; 6aa3: cd 97 73    ..s
	db	10h
	lxi	h,0ff8dh	;; 6aa7: 21 8d ff    ...
	rst	2		;; 6aaa: d7          .
	push	h		;; 6aab: e5          .
	call	L60f2		;; 6aac: cd f2 60    ..`
	lda	L1c10		;; 6aaf: 3a 10 1c    :..
	ora	a		;; 6ab2: b7          .
	call	L8c09		;; 6ab3: cd 09 8c    ...
	lxi	h,L1c53		;; 6ab6: 21 53 1c    .S.
	ana	m		;; 6ab9: a6          .
	push	psw		;; 6aba: f5          .
	ldx	a,-109		;; 6abb: dd 7e 93    .~.
	ora	a		;; 6abe: b7          .
	call	L8c0e		;; 6abf: cd 0e 8c    ...
	mov	b,a		;; 6ac2: 47          G
	pop	psw		;; 6ac3: f1          .
	ana	b		;; 6ac4: a0          .
	rar			;; 6ac5: 1f          .
	jrnc	L6adf		;; 6ac6: 30 17       0.
	rst	3		;; 6ac8: df          .
	db	8dh
	push	h		;; 6aca: e5          .
	call	L657c		;; 6acb: cd 7c 65    .|e
	ldx	l,+0		;; 6ace: dd 6e 00    .n.
	ldx	h,+1		;; 6ad1: dd 66 01    .f.
	push	h		;; 6ad4: e5          .
	call	L60a4		;; 6ad5: cd a4 60    ..`
	rst	3		;; 6ad8: df          .
	db	0fh
	lxi	h,L1c53		;; 6ada: 21 53 1c    .S.
	mvi	m,000h		;; 6add: 36 00       6.
L6adf:	lda	L1c53		;; 6adf: 3a 53 1c    :S.
	xri	001h		;; 6ae2: ee 01       ..
	push	psw		;; 6ae4: f5          .
	ldx	a,-109		;; 6ae5: dd 7e 93    .~.
	ora	a		;; 6ae8: b7          .
	call	L8c0e		;; 6ae9: cd 0e 8c    ...
	mov	b,a		;; 6aec: 47          G
	pop	psw		;; 6aed: f1          .
	ora	b		;; 6aee: b0          .
	rar			;; 6aef: 1f          .
	jrnc	L6b09		;; 6af0: 30 17       0.
	lxi	h,0ff82h	;; 6af2: 21 82 ff    ...
	rst	2		;; 6af5: d7          .
	push	h		;; 6af6: e5          .
	lxi	h,0ff93h	;; 6af7: 21 93 ff    ...
	rst	2		;; 6afa: d7          .
	call	L75ea		;; 6afb: cd ea 75    ..u
	mvi	a,042h		;; 6afe: 3e 42       >B
	call	L8bb0		;; 6b00: cd b0 8b    ...
	rst	3		;; 6b03: df          .
	db	8fh
	push	h		;; 6b05: e5          .
	call	L6241		;; 6b06: cd 41 62    .Ab
L6b09:	jr	L6b18		;; 6b09: 18 0d       ..

L6b0b:	mvi	b,002h		;; 6b0b: 06 02       ..
	call	L8ddc		;; 6b0d: cd dc 8d    ...
	db '-' ! dw L6952
	db '{' ! dw L694f
	dw	L69f5
L6b18:	ldx	a,-111		;; 6b18: dd 7e 91    .~.
	ora	a		;; 6b1b: b7          .
	jrnz	L6b31		;; 6b1c: 20 13        .
	ldx	l,+0		;; 6b1e: dd 6e 00    .n.
	ldx	h,+1		;; 6b21: dd 66 01    .f.
	shld	L1787		;; 6b24: 22 87 17    "..
	call	L1ace		;; 6b27: cd ce 1a    ...
	call	L1ae6		;; 6b2a: cd e6 1a    ...
	mvix	008h,-111	;; 6b2d: dd 36 91 08 .6..
L6b31:	ldx	a,-111		;; 6b31: dd 7e 91    .~.
	dcr	a		;; 6b34: 3d          =
	stx	a,-111		;; 6b35: dd 77 91    .w.
	lhld	L02f3		;; 6b38: 2a f3 02    *..
	push	h		;; 6b3b: e5          .
	call	L7ba1		;; 6b3c: cd a1 7b    ..{
	xri	001h		;; 6b3f: ee 01       ..
	rar			;; 6b41: 1f          .
	jrnc	L6b51		;; 6b42: 30 0d       0.
	call	L7649		;; 6b44: cd 49 76    .Iv
	lhld	L02f3		;; 6b47: 2a f3 02    *..
	push	h		;; 6b4a: e5          .
	call	L7682		;; 6b4b: cd 82 76    ..v
	call	L768c		;; 6b4e: cd 8c 76    ..v
L6b51:	jmp	L68d5		;; 6b51: c3 d5 68    ..h

L6b54:	lhld	L02f3		;; 6b54: 2a f3 02    *..
	push	h		;; 6b57: e5          .
	call	L78e7		;; 6b58: cd e7 78    ..x
	jr	L6b75		;; 6b5b: 18 18       ..

L6b5d:	lxi	h,0ffd7h	;; 6b5d: 21 d7 ff    ...
	rst	2		;; 6b60: d7          .
	call	L75ea		;; 6b61: cd ea 75    ..u
	mvi	a,037h		;; 6b64: 3e 37       >7
	call	L8bb0		;; 6b66: cd b0 8b    ...
	call	L0803		;; 6b69: cd 03 08    ...
	mvi	a,03fh		;; 6b6c: 3e 3f       >?
	push	psw		;; 6b6e: f5          .
	call	L0597		;; 6b6f: cd 97 05    ...
	call	L0977		;; 6b72: cd 77 09    .w.
L6b75:	jmp	L8d56		;; 6b75: c3 56 8d    .V.

L6b78:	call	L8d27		;; 6b78: cd 27 8d    .'.
	db	'm',99h
	call	L0965		;; 6b7d: cd 65 09    .e.
	lda	L02f2		;; 6b80: 3a f2 02    :..
	stx	a,+18		;; 6b83: dd 77 12    .w.
	lxi	h,L02f2		;; 6b86: 21 f2 02    ...
	mvi	m,001h		;; 6b89: 36 01       6.
	lxi	h,L1074		;; 6b8b: 21 74 10    .t.
	call	L75ea		;; 6b8e: cd ea 75    ..u
	lxi	h,L1098		;; 6b91: 21 98 10    ...
	call	L75ea		;; 6b94: cd ea 75    ..u
	call	L8b20		;; 6b97: cd 20 8b    . .
	lxi	h,0ffd1h	;; 6b9a: 21 d1 ff    ...
	rst	2		;; 6b9d: d7          .
	mvi	a,014h		;; 6b9e: 3e 14       >.
	call	L8b81		;; 6ba0: cd 81 8b    ...
	lxi	h,0ffd1h	;; 6ba3: 21 d1 ff    ...
	rst	2		;; 6ba6: d7          .
	call	L75ea		;; 6ba7: cd ea 75    ..u
	lxi	b,04201h	;; 6baa: 01 01 42    ..B
	push	b		;; 6bad: c5          .
	call	L8b20		;; 6bae: cd 20 8b    . .
	lxi	h,0fffbh	;; 6bb1: 21 fb ff    ...
	rst	2		;; 6bb4: d7          .
	mvi	a,014h		;; 6bb5: 3e 14       >.
	call	L8b81		;; 6bb7: cd 81 8b    ...
	lxi	h,L1074		;; 6bba: 21 74 10    .t.
	call	L75ea		;; 6bbd: cd ea 75    ..u
	call	L6bc7		;; 6bc0: cd c7 6b    ..k
	db	'.$$$'
L6bc7:	call	L75e5		;; 6bc7: cd e5 75    ..u
	db	4
	call	L8b20		;; 6bcb: cd 20 8b    . .
	lxi	h,0ffe6h	;; 6bce: 21 e6 ff    ...
	rst	2		;; 6bd1: d7          .
	mvi	a,014h		;; 6bd2: 3e 14       >.
	call	L8b81		;; 6bd4: cd 81 8b    ...
	lxi	h,0fffbh	;; 6bd7: 21 fb ff    ...
	rst	2		;; 6bda: d7          .
	call	L75ea		;; 6bdb: cd ea 75    ..u
	call	L793e		;; 6bde: cd 3e 79    .>y
	rar			;; 6be1: 1f          .
	jrnc	L6bfd		;; 6be2: 30 19       0.
	lxi	h,L02f3		;; 6be4: 21 f3 02    ...
	push	h		;; 6be7: e5          .
	lxi	h,00000h	;; 6be8: 21 00 00    ...
	push	h		;; 6beb: e5          .
	lxi	h,0fffbh	;; 6bec: 21 fb ff    ...
	rst	2		;; 6bef: d7          .
	call	L75ea		;; 6bf0: cd ea 75    ..u
	call	L7995		;; 6bf3: cd 95 79    ..y
	lhld	L02f3		;; 6bf6: 2a f3 02    *..
	push	h		;; 6bf9: e5          .
	call	L78ea		;; 6bfa: cd ea 78    ..x
L6bfd:	lxi	h,L02f3		;; 6bfd: 21 f3 02    ...
	push	h		;; 6c00: e5          .
	lxi	h,00000h	;; 6c01: 21 00 00    ...
	push	h		;; 6c04: e5          .
	lxi	h,0ffe6h	;; 6c05: 21 e6 ff    ...
	rst	2		;; 6c08: d7          .
	call	L75ea		;; 6c09: cd ea 75    ..u
	call	L7995		;; 6c0c: cd 95 79    ..y
	lxi	h,L02f3		;; 6c0f: 21 f3 02    ...
	push	h		;; 6c12: e5          .
	lxi	h,00000h	;; 6c13: 21 00 00    ...
	push	h		;; 6c16: e5          .
	call	L78ba		;; 6c17: cd ba 78    ..x
L6c1a:	lxi	h,0ff84h	;; 6c1a: 21 84 ff    ...
	rst	2		;; 6c1d: d7          .
	push	h		;; 6c1e: e5          .
	lxi	h,0ff82h	;; 6c1f: 21 82 ff    ...
	rst	2		;; 6c22: d7          .
	push	h		;; 6c23: e5          .
	call	L11e0		;; 6c24: cd e0 11    ...
	rar			;; 6c27: 1f          .
	jrnc	L6c6c		;; 6c28: 30 42       0B
	rst	3		;; 6c2a: df          .
	db	84h
	mov	a,h		;; 6c2c: 7c          |
	ora	l		;; 6c2d: b5          .
	call	L8c0e		;; 6c2e: cd 0e 8c    ...
	push	psw		;; 6c31: f5          .
	lxi	b,00100h	;; 6c32: 01 00 01    ...
	rst	3		;; 6c35: df          .
	db	82h
	ora	a		;; 6c37: b7          .
	dsbc	b		;; 6c38: ed 42       .B
	call	L8c0e		;; 6c3a: cd 0e 8c    ...
	mov	b,a		;; 6c3d: 47          G
	pop	psw		;; 6c3e: f1          .
	ora	b		;; 6c3f: b0          .
	rar			;; 6c40: 1f          .
	jrnc	L6c6a		;; 6c41: 30 27       0'
	mvi	a,02dh		;; 6c43: 3e 2d       >-
	push	psw		;; 6c45: f5          .
	call	L0597		;; 6c46: cd 97 05    ...
	rst	3		;; 6c49: df          .
	db	84h
	push	h		;; 6c4b: e5          .
	call	L5428		;; 6c4c: cd 28 54    .(T
	call	L6c55		;; 6c4f: cd 55 6c    .Ul
	db	',',21h,' '
L6c55:	call	L75e5		;; 6c55: cd e5 75    ..u
	db	3
	mvi	a,037h		;; 6c59: 3e 37       >7
	call	L8bb0		;; 6c5b: cd b0 8b    ...
	call	L0803		;; 6c5e: cd 03 08    ...
	rst	3		;; 6c61: df          .
	db	82h
	push	h		;; 6c63: e5          .
	call	L5428		;; 6c64: cd 28 54    .(T
	call	L0c91		;; 6c67: cd 91 0c    ...
L6c6a:	jr	L6c1a		;; 6c6a: 18 ae       ..

L6c6c:	lhld	L5b72		;; 6c6c: 2a 72 5b    *r[
	stx	l,+19		;; 6c6f: dd 75 13    .u.
	stx	h,+20		;; 6c72: dd 74 14    .t.
L6c75:	lbcd	L1a2a		;; 6c75: ed 4b 2a 1a .K*.
	ldx	l,+19		;; 6c79: dd 6e 13    .n.
	ldx	h,+20		;; 6c7c: dd 66 14    .f.
	ora	a		;; 6c7f: b7          .
	dsbc	b		;; 6c80: ed 42       .B
	call	L8c0e		;; 6c82: cd 0e 8c    ...
	push	psw		;; 6c85: f5          .
	lda	L02f0		;; 6c86: 3a f0 02    :..
	xri	001h		;; 6c89: ee 01       ..
	mov	b,a		;; 6c8b: 47          G
	pop	psw		;; 6c8c: f1          .
	ana	b		;; 6c8d: a0          .
	rar			;; 6c8e: 1f          .
	jnc	L6d28		;; 6c8f: d2 28 6d    .(m
	ldx	l,+19		;; 6c92: dd 6e 13    .n.
	ldx	h,+20		;; 6c95: dd 66 14    .f.
	push	h		;; 6c98: e5          .
	lxi	h,0ff86h	;; 6c99: 21 86 ff    ...
	rst	2		;; 6c9c: d7          .
	push	h		;; 6c9d: e5          .
	call	L5e1e		;; 6c9e: cd 1e 5e    ..^
	ldx	a,-120		;; 6ca1: dd 7e 88    .~.
	ora	a		;; 6ca4: b7          .
	jrnz	L6cca		;; 6ca5: 20 23        #
	ldx	a,-119		;; 6ca7: dd 7e 89    .~.
	cpi	04fh		;; 6caa: fe 4f       .O
	jrz	L6cc8		;; 6cac: 28 1a       (.
	mvi	a,02dh		;; 6cae: 3e 2d       >-
	push	psw		;; 6cb0: f5          .
	call	L0597		;; 6cb1: cd 97 05    ...
	rst	3		;; 6cb4: df          .
	db	86h
	push	h		;; 6cb6: e5          .
	call	L5428		;; 6cb7: cd 28 54    .(T
	mvi	a,02ch		;; 6cba: 3e 2c       >,
	push	psw		;; 6cbc: f5          .
	call	L0597		;; 6cbd: cd 97 05    ...
	lxi	h,0ff86h	;; 6cc0: 21 86 ff    ...
	rst	2		;; 6cc3: d7          .
	push	h		;; 6cc4: e5          .
	call	L6273		;; 6cc5: cd 73 62    .sb
L6cc8:	jr	L6d12		;; 6cc8: 18 48       .H

L6cca:	ldx	a,-120		;; 6cca: dd 7e 88    .~.
	push	psw		;; 6ccd: f5          .
	call	L0597		;; 6cce: cd 97 05    ...
	rst	3		;; 6cd1: df          .
	db	86h
	push	h		;; 6cd3: e5          .
	call	L5428		;; 6cd4: cd 28 54    .(T
	ldx	a,-117		;; 6cd7: dd 7e 8b    .~.
	ora	a		;; 6cda: b7          .
	jrz	L6cea		;; 6cdb: 28 0d       (.
	mvi	a,02ch		;; 6cdd: 3e 2c       >,
	push	psw		;; 6cdf: f5          .
	call	L0597		;; 6ce0: cd 97 05    ...
	ldx	a,-117		;; 6ce3: dd 7e 8b    .~.
	push	psw		;; 6ce6: f5          .
	call	L0597		;; 6ce7: cd 97 05    ...
L6cea:	call	L0799		;; 6cea: cd 99 07    ...
	lxi	h,0ff8ch	;; 6ced: 21 8c ff    ...
	rst	2		;; 6cf0: d7          .
	push	h		;; 6cf1: e5          .
	rst	3		;; 6cf2: df          .
	db	89h
	push	h		;; 6cf4: e5          .
	call	L5bac		;; 6cf5: cd ac 5b    ..[
	call	L7643		;; 6cf8: cd 43 76    .Cv
	lhld	L02f3		;; 6cfb: 2a f3 02    *..
	push	h		;; 6cfe: e5          .
	call	L7682		;; 6cff: cd 82 76    ..v
	lxi	h,0ff8ch	;; 6d02: 21 8c ff    ...
	rst	2		;; 6d05: d7          .
	call	L75ea		;; 6d06: cd ea 75    ..u
	mvi	a,000h		;; 6d09: 3e 00       >.
	push	psw		;; 6d0b: f5          .
	call	L77c3		;; 6d0c: cd c3 77    ..w
	call	L768c		;; 6d0f: cd 8c 76    ..v
L6d12:	call	L0c91		;; 6d12: cd 91 0c    ...
	lxi	b,00006h	;; 6d15: 01 06 00    ...
	ldx	l,+19		;; 6d18: dd 6e 13    .n.
	ldx	h,+20		;; 6d1b: dd 66 14    .f.
	dad	b		;; 6d1e: 09          .
	stx	l,+19		;; 6d1f: dd 75 13    .u.
	stx	h,+20		;; 6d22: dd 74 14    .t.
	jmp	L6c75		;; 6d25: c3 75 6c    .ul

L6d28:	lda	L02f0		;; 6d28: 3a f0 02    :..
	xri	001h		;; 6d2b: ee 01       ..
	rar			;; 6d2d: 1f          .
	jrnc	L6da3		;; 6d2e: 30 73       0s
	lxi	h,0ffd1h	;; 6d30: 21 d1 ff    ...
	rst	2		;; 6d33: d7          .
	call	L75ea		;; 6d34: cd ea 75    ..u
	call	L793e		;; 6d37: cd 3e 79    .>y
	rar			;; 6d3a: 1f          .
	jrnc	L6d91		;; 6d3b: 30 54       0T
	lxi	h,L1c54		;; 6d3d: 21 54 1c    .T.
	mvi	m,001h		;; 6d40: 36 01       6.
	lhld	L02f3		;; 6d42: 2a f3 02    *..
	push	h		;; 6d45: e5          .
	call	L78e7		;; 6d46: cd e7 78    ..x
	lxi	h,L02f3		;; 6d49: 21 f3 02    ...
	push	h		;; 6d4c: e5          .
	lxi	h,00000h	;; 6d4d: 21 00 00    ...
	push	h		;; 6d50: e5          .
	lxi	h,0ffd1h	;; 6d51: 21 d1 ff    ...
	rst	2		;; 6d54: d7          .
	call	L75ea		;; 6d55: cd ea 75    ..u
	call	L7995		;; 6d58: cd 95 79    ..y
	lxi	h,L02f3		;; 6d5b: 21 f3 02    ...
	push	h		;; 6d5e: e5          .
	lxi	h,00000h	;; 6d5f: 21 00 00    ...
	push	h		;; 6d62: e5          .
	lxi	h,0fffbh	;; 6d63: 21 fb ff    ...
	rst	2		;; 6d66: d7          .
	call	L75ea		;; 6d67: cd ea 75    ..u
	call	L7820		;; 6d6a: cd 20 78    . x
	lhld	L02f3		;; 6d6d: 2a f3 02    *..
	push	h		;; 6d70: e5          .
	call	L78e7		;; 6d71: cd e7 78    ..x
	lxi	h,L02f3		;; 6d74: 21 f3 02    ...
	push	h		;; 6d77: e5          .
	lxi	h,00000h	;; 6d78: 21 00 00    ...
	push	h		;; 6d7b: e5          .
	lxi	h,0ffe6h	;; 6d7c: 21 e6 ff    ...
	rst	2		;; 6d7f: d7          .
	call	L75ea		;; 6d80: cd ea 75    ..u
	call	L7995		;; 6d83: cd 95 79    ..y
	lxi	h,L02f3		;; 6d86: 21 f3 02    ...
	push	h		;; 6d89: e5          .
	lxi	h,00000h	;; 6d8a: 21 00 00    ...
	push	h		;; 6d8d: e5          .
	call	L78b6		;; 6d8e: cd b6 78    ..x
L6d91:	lxi	h,L02f3		;; 6d91: 21 f3 02    ...
	push	h		;; 6d94: e5          .
	lxi	h,00000h	;; 6d95: 21 00 00    ...
	push	h		;; 6d98: e5          .
	lxi	h,0ffd1h	;; 6d99: 21 d1 ff    ...
	rst	2		;; 6d9c: d7          .
	call	L75ea		;; 6d9d: cd ea 75    ..u
	call	L7820		;; 6da0: cd 20 78    . x
L6da3:	lhld	L02f3		;; 6da3: 2a f3 02    *..
	push	h		;; 6da6: e5          .
	call	L78e7		;; 6da7: cd e7 78    ..x
	ldx	a,+18		;; 6daa: dd 7e 12    .~.
	sta	L02f2		;; 6dad: 32 f2 02    2..
	jmp	L8d56		;; 6db0: c3 56 8d    .V.

L6db3:	call	L8d27		;; 6db3: cd 27 8d    .'.
	db	0feh,8
	lxi	h,L1c54		;; 6db8: 21 54 1c    .T.
	mvi	m,001h		;; 6dbb: 36 01       6.
	call	L7611		;; 6dbd: cd 11 76    ..v
	push	h		;; 6dc0: e5          .
	push	b		;; 6dc1: c5          .
	lhld	L01dd		;; 6dc2: 2a dd 01    *..
	rst	4		;; 6dc5: e7          .
	db	87h
	call	L87f6		;; 6dc7: cd f6 87    ...
	mov	h,b		;; 6dca: 60          `
	mov	l,c		;; 6dcb: 69          i
	rst	3		;; 6dcc: df          .
	db	2
	lxi	h,L5b72		;; 6dce: 21 72 5b    .r[
	push	h		;; 6dd1: e5          .
	rst	3		;; 6dd2: df          .
	db	82h
	push	h		;; 6dd4: e5          .
	call	L7391		;; 6dd5: cd 91 73    ..s
	lhld	L5b72		;; 6dd8: 2a 72 5b    *r[
	shld	L1a2a		;; 6ddb: 22 2a 1a    "*.
	ldx	c,-126		;; 6dde: dd 4e 82    .N.
	ldx	b,-125		;; 6de1: dd 46 83    .F.
	dad	b		;; 6de4: 09          .
	shld	L5b70		;; 6de5: 22 70 5b    "p[
	shld	L1a28		;; 6de8: 22 28 1a    "(.
	jmp	L8d56		;; 6deb: c3 56 8d    .V.

L6dee:	db	0,0
L6df0:	db	0,0
L6df2:	db	0
L6df3:	db	0,0
L6df5:	db	0,0
L6df7:	db	0,0
L6df9:	db	0
L6dfa:	db	0,0
L6dfc:	db	0,0
L6dfe:	db	0
L6dff:	db	0
L6e00:	db	0
L6e01:	db	0
L6e02:	db	0,0
L6e04:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L6e14:	call	L8d27		;; 6e14: cd 27 8d    .'.
	db	0,8
	ldx	a,-125		;; 6e19: dd 7e 83    .~.
	sta	L6e01		;; 6e1c: 32 01 6e    2.n
	lhld	L6df0		;; 6e1f: 2a f0 6d    *.m
	inx	h		;; 6e22: 23          #
	push	h		;; 6e23: e5          .
	call	L1355		;; 6e24: cd 55 13    .U.
	sta	L6e00		;; 6e27: 32 00 6e    2.n
	cpi	080h		;; 6e2a: fe 80       ..
	jrc	L6e3c		;; 6e2c: 38 0e       8.
	lxi	b,0ff00h	;; 6e2e: 01 00 ff    ...
	lda	L6e00		;; 6e31: 3a 00 6e    :.n
	mov	l,a		;; 6e34: 6f          o
	mvi	h,000h		;; 6e35: 26 00       &.
	dad	b		;; 6e37: 09          .
	mov	a,l		;; 6e38: 7d          }
	sta	L6e00		;; 6e39: 32 00 6e    2.n
L6e3c:	jmp	L8d56		;; 6e3c: c3 56 8d    .V.

L6e3f:	call	L8d27		;; 6e3f: cd 27 8d    .'.
	db	0,6
	mvi	a,049h		;; 6e44: 3e 49       >I
	push	psw		;; 6e46: f5          .
	call	L0597		;; 6e47: cd 97 05    ...
	lda	L6e01		;; 6e4a: 3a 01 6e    :.n
	push	psw		;; 6e4d: f5          .
	call	L0597		;; 6e4e: cd 97 05    ...
	jmp	L8d56		;; 6e51: c3 56 8d    .V.

L6e54:	call	L8d27		;; 6e54: cd 27 8d    .'.
	db	0feh,0ah
	lxi	h,00000h	;; 6e59: 21 00 00    ...
	shld	L6e02		;; 6e5c: 22 02 6e    ".n
	rst	3		;; 6e5f: df          .
	db	84h
	lxi	d,L54a2		;; 6e61: 11 a2 54    ..T
	dad	d		;; 6e64: 19          .
	mov	a,m		;; 6e65: 7e          ~
	ani	07fh		;; 6e66: e6 7f       ..
	call	L7165		;; 6e68: cd 65 71    .eq
L6e6b:	rst	3		;; 6e6b: df          .
	db	84h
	inx	h		;; 6e6d: 23          #
	lxi	d,L54a2		;; 6e6e: 11 a2 54    ..T
	dad	d		;; 6e71: 19          .
	mov	a,m		;; 6e72: 7e          ~
	ani	07fh		;; 6e73: e6 7f       ..
	sta	L6dff		;; 6e75: 32 ff 6d    2.m
	lda	L6dff		;; 6e78: 3a ff 6d    :.m
	mov	l,a		;; 6e7b: 6f          o
	mvi	h,000h		;; 6e7c: 26 00       &.
	dad	h		;; 6e7e: 29          )
	lxi	d,L53d8		;; 6e7f: 11 d8 53    ..S
	dad	d		;; 6e82: 19          .
	rst	4		;; 6e83: e7          .
	db	80h
	shld	L6e02		;; 6e85: 22 02 6e    ".n
	lda	L6dff		;; 6e88: 3a ff 6d    :.m
	call	L6ea8		;; 6e8b: cd a8 6e    ..n
L6e8e:	mvi	a,058h		;; 6e8e: 3e 58       >X
	push	psw		;; 6e90: f5          .
	call	L6e14		;; 6e91: cd 14 6e    ..n
	jr	L6eba		;; 6e94: 18 24       .$

L6e96:	mvi	a,059h		;; 6e96: 3e 59       >Y
	push	psw		;; 6e98: f5          .
	call	L6e14		;; 6e99: cd 14 6e    ..n
	jr	L6eba		;; 6e9c: 18 1c       ..

L6e9e:	jr	L6eba		;; 6e9e: 18 1a       ..

L6ea0:	mvi	a,061h		;; 6ea0: 3e 61       >a
	push	psw		;; 6ea2: f5          .
	call	L0597		;; 6ea3: cd 97 05    ...
	jr	L6eba		;; 6ea6: 18 12       ..

L6ea8:	lxi	b,03005h	;; 6ea8: 01 05 30    ..0
	call	L8d90		;; 6eab: cd 90 8d    ...
	dw	L6e9e
	dw	L6e8e
	dw	L6e96
	dw	L6e9e
	dw	L6e9e
	dw	L6ea0
L6eba:	jmp	L7172		;; 6eba: c3 72 71    .rq

L6ebd:	mvi	a,062h		;; 6ebd: 3e 62       >b
	push	psw		;; 6ebf: f5          .
	call	L0597		;; 6ec0: cd 97 05    ...
	lhld	L6dee		;; 6ec3: 2a ee 6d    *.m
	shld	L6df0		;; 6ec6: 22 f0 6d    ".m
	jmp	L7172		;; 6ec9: c3 72 71    .rq

L6ecc:	rst	3		;; 6ecc: df          .
	db	84h
	lxi	d,L54a2		;; 6ece: 11 a2 54    ..T
	dad	d		;; 6ed1: 19          .
	mov	a,m		;; 6ed2: 7e          ~
	sta	L6dfe		;; 6ed3: 32 fe 6d    2.m
	ani	07fh		;; 6ed6: e6 7f       ..
	sta	L6dff		;; 6ed8: 32 ff 6d    2.m
	cpi	05bh		;; 6edb: fe 5b       .[
	jc	L712a		;; 6edd: da 2a 71    .*q
	lda	L6dff		;; 6ee0: 3a ff 6d    :.m
	mov	l,a		;; 6ee3: 6f          o
	mvi	h,000h		;; 6ee4: 26 00       &.
	lxi	d,L53e7		;; 6ee6: 11 e7 53    ..S
	dad	d		;; 6ee9: 19          .
	mov	a,m		;; 6eea: 7e          ~
	sta	L6df9		;; 6eeb: 32 f9 6d    2.m
	ora	a		;; 6eee: b7          .
	jnz	L7089		;; 6eef: c2 89 70    ..p
	lda	L6dff		;; 6ef2: 3a ff 6d    :.m
	call	L706a		;; 6ef5: cd 6a 70    .jp
L6ef8:	lxi	h,L1c5a		;; 6ef8: 21 5a 1c    .Z.
	mvi	m,001h		;; 6efb: 36 01       6.
	jmp	L7086		;; 6efd: c3 86 70    ..p

L6f00:	mvi	a,028h		;; 6f00: 3e 28       >(
	push	psw		;; 6f02: f5          .
	call	L0597		;; 6f03: cd 97 05    ...
	call	L6e3f		;; 6f06: cd 3f 6e    .?n
	mvi	a,02bh		;; 6f09: 3e 2b       >+
	push	psw		;; 6f0b: f5          .
	call	L0597		;; 6f0c: cd 97 05    ...
	lda	L6e00		;; 6f0f: 3a 00 6e    :.n
	mov	l,a		;; 6f12: 6f          o
	mvi	h,000h		;; 6f13: 26 00       &.
	push	h		;; 6f15: e5          .
	lda	L6e01		;; 6f16: 3a 01 6e    :.n
	push	psw		;; 6f19: f5          .
	call	L57cd		;; 6f1a: cd cd 57    ..W
	lda	L6e01		;; 6f1d: 3a 01 6e    :.n
	sta	L1c55		;; 6f20: 32 55 1c    2U.
	lda	L6e00		;; 6f23: 3a 00 6e    :.n
	mov	l,a		;; 6f26: 6f          o
	mvi	h,000h		;; 6f27: 26 00       &.
	shld	L1c56		;; 6f29: 22 56 1c    "V.
	mvi	a,029h		;; 6f2c: 3e 29       >)
	push	psw		;; 6f2e: f5          .
	call	L0597		;; 6f2f: cd 97 05    ...
	lhld	L6df0		;; 6f32: 2a f0 6d    *.m
	inx	h		;; 6f35: 23          #
	shld	L6df0		;; 6f36: 22 f0 6d    ".m
	jmp	L7086		;; 6f39: c3 86 70    ..p

L6f3c:	lxi	h,L6e04		;; 6f3c: 21 04 6e    ..n
	call	L75be		;; 6f3f: cd be 75    ..u
	db	10h
	call	L75c9		;; 6f43: cd c9 75    ..u
	db	10h,0,0,0,0,0,0,0,0,0,0,0,0,0
	lxi	b,0027ch	;; 6f54: 01 7c 02    .|.
	call	L74e3		;; 6f57: cd e3 74    ..t
	lxi	b,00001h	;; 6f5a: 01 01 00    ...
	push	b		;; 6f5d: c5          .
	call	L74d1		;; 6f5e: cd d1 74    ..t
	jrz	L6f9c		;; 6f61: 28 39       (9
	mvi	a,028h		;; 6f63: 3e 28       >(
	push	psw		;; 6f65: f5          .
	lxi	h,L6e04		;; 6f66: 21 04 6e    ..n
	call	L75be		;; 6f69: cd be 75    ..u
	db	10h
	call	L7450		;; 6f6d: cd 50 74    .Pt
	jrz	L6f95		;; 6f70: 28 23       (#
	lda	L6df2		;; 6f72: 3a f2 6d    :.m
	call	L6f86		;; 6f75: cd 86 6f    ..o
L6f78:	lxi	h,L1c55		;; 6f78: 21 55 1c    .U.
	mvi	m,042h		;; 6f7b: 36 42       6B
	jr	L6f93		;; 6f7d: 18 14       ..

L6f7f:	lxi	h,L1c55		;; 6f7f: 21 55 1c    .U.
	mvi	m,057h		;; 6f82: 36 57       6W
	jr	L6f93		;; 6f84: 18 0d       ..

L6f86:	mvi	b,002h		;; 6f86: 06 02       ..
	call	L8ddc		;; 6f88: cd dc 8d    ...
	db '2' ! dw L6f78
	db ':' ! dw L6f78
	dw	L6f7f
L6f93:	jr	L6f9a		;; 6f93: 18 05       ..

L6f95:	lxi	h,L1c55		;; 6f95: 21 55 1c    .U.
	mvi	m,054h		;; 6f98: 36 54       6T
L6f9a:	jr	L6fb8		;; 6f9a: 18 1c       ..

L6f9c:	lxi	b,00002h	;; 6f9c: 01 02 00    ...
	lhld	L6df7		;; 6f9f: 2a f7 6d    *.m
	dad	b		;; 6fa2: 09          .
	lxi	d,L54a2		;; 6fa3: 11 a2 54    ..T
	dad	d		;; 6fa6: 19          .
	mov	a,m		;; 6fa7: 7e          ~
	cpi	043h		;; 6fa8: fe 43       .C
	jrnz	L6fb3		;; 6faa: 20 07        .
	lxi	h,L1c55		;; 6fac: 21 55 1c    .U.
	mvi	m,043h		;; 6faf: 36 43       6C
	jr	L6fb8		;; 6fb1: 18 05       ..

L6fb3:	lxi	h,L1c55		;; 6fb3: 21 55 1c    .U.
	mvi	m,04ch		;; 6fb6: 36 4c       6L
L6fb8:	lhld	L6df0		;; 6fb8: 2a f0 6d    *.m
	push	h		;; 6fbb: e5          .
	call	L14b1		;; 6fbc: cd b1 14    ...
	shld	L1c56		;; 6fbf: 22 56 1c    "V.
	push	h		;; 6fc2: e5          .
	lda	L1c55		;; 6fc3: 3a 55 1c    :U.
	push	psw		;; 6fc6: f5          .
	call	L57cd		;; 6fc7: cd cd 57    ..W
	lxi	b,00002h	;; 6fca: 01 02 00    ...
	lhld	L6df0		;; 6fcd: 2a f0 6d    *.m
	dad	b		;; 6fd0: 09          .
	shld	L6df0		;; 6fd1: 22 f0 6d    ".m
	jmp	L7086		;; 6fd4: c3 86 70    ..p

L6fd7:	lxi	b,0ffe0h	;; 6fd7: 01 e0 ff    ...
	lda	L6dff		;; 6fda: 3a ff 6d    :.m
	mov	l,a		;; 6fdd: 6f          o
	mvi	h,000h		;; 6fde: 26 00       &.
	dad	b		;; 6fe0: 09          .
	mov	a,l		;; 6fe1: 7d          }
	sta	L1c55		;; 6fe2: 32 55 1c    2U.
	lhld	L6df0		;; 6fe5: 2a f0 6d    *.m
	push	h		;; 6fe8: e5          .
	call	L1355		;; 6fe9: cd 55 13    .U.
	mov	l,a		;; 6fec: 6f          o
	mvi	h,000h		;; 6fed: 26 00       &.
	shld	L1c56		;; 6fef: 22 56 1c    "V.
	push	h		;; 6ff2: e5          .
	lda	L1c55		;; 6ff3: 3a 55 1c    :U.
	push	psw		;; 6ff6: f5          .
	call	L57cd		;; 6ff7: cd cd 57    ..W
	lhld	L6df0		;; 6ffa: 2a f0 6d    *.m
	inx	h		;; 6ffd: 23          #
	shld	L6df0		;; 6ffe: 22 f0 6d    ".m
	jmp	L7086		;; 7001: c3 86 70    ..p

L7004:	lhld	L6df0		;; 7004: 2a f0 6d    *.m
	push	h		;; 7007: e5          .
	call	L1355		;; 7008: cd 55 13    .U.
	stx	a,-126		;; 700b: dd 77 82    .w.
	lbcd	L6df0		;; 700e: ed 4b f0 6d .K.m
	mov	l,a		;; 7012: 6f          o
	mvi	h,000h		;; 7013: 26 00       &.
	dad	b		;; 7015: 09          .
	inx	h		;; 7016: 23          #
	shld	L6dfc		;; 7017: 22 fc 6d    ".m
	mvi	a,07fh		;; 701a: 3e 7f       >.
	cmpx	-126		;; 701c: dd be 82    ...
	jrnc	L7036		;; 701f: 30 15       0.
	lhld	L6dfc		;; 7021: 2a fc 6d    *.m
	rst	4		;; 7024: e7          .
	db	87h
	push	h		;; 7026: e5          .
	push	b		;; 7027: c5          .
	lxi	b,00100h	;; 7028: 01 00 01    ...
	lxi	h,00000h	;; 702b: 21 00 00    ...
	call	L87f6		;; 702e: cd f6 87    ...
	mov	h,b		;; 7031: 60          `
	mov	l,c		;; 7032: 69          i
	shld	L6dfc		;; 7033: 22 fc 6d    ".m
L7036:	lxi	h,L1c55		;; 7036: 21 55 1c    .U.
	mvi	m,052h		;; 7039: 36 52       6R
	lhld	L6dfc		;; 703b: 2a fc 6d    *.m
	shld	L1c56		;; 703e: 22 56 1c    "V.
	push	h		;; 7041: e5          .
	lda	L1c55		;; 7042: 3a 55 1c    :U.
	push	psw		;; 7045: f5          .
	call	L57cd		;; 7046: cd cd 57    ..W
	lhld	L6df0		;; 7049: 2a f0 6d    *.m
	push	h		;; 704c: e5          .
	ldx	a,-126		;; 704d: dd 7e 82    .~.
	push	psw		;; 7050: f5          .
	call	L5b04		;; 7051: cd 04 5b    ..[
	lhld	L6df0		;; 7054: 2a f0 6d    *.m
	inx	h		;; 7057: 23          #
	shld	L6df0		;; 7058: 22 f0 6d    ".m
	jr	L7086		;; 705b: 18 29       .)

L705d:	call	L6e3f		;; 705d: cd 3f 6e    .?n
	jr	L7086		;; 7060: 18 24       .$

L7062:	mvi	a,05ch		;; 7062: 3e 5c       >\
	push	psw		;; 7064: f5          .
	call	L0597		;; 7065: cd 97 05    ...
	jr	L7086		;; 7068: 18 1c       ..

L706a:	mvi	b,007h		;; 706a: 06 07       ..
	call	L8ddc		;; 706c: cd dc 8d    ...
	db '[' ! dw L6ef8
	db 'd' ! dw L6f00
	db 'l' ! dw L6f3c
	db 'n' ! dw L6fd7
	db 'p' ! dw L6fd7
	db 'x' ! dw L7004
	db 'y' ! dw L705d
	dw	L7062
L7086:	jmp	L7128		;; 7086: c3 28 71    .(q

L7089:	lda	L6dff		;; 7089: 3a ff 6d    :.m
	cpi	077h		;; 708c: fe 77       .w
	jrnz	L70b0		;; 708e: 20 20         
	lxi	h,L1c55		;; 7090: 21 55 1c    .U.
	mvi	m,043h		;; 7093: 36 43       6C
	lda	L6df2		;; 7095: 3a f2 6d    :.m
	push	psw		;; 7098: f5          .
	mvi	a,038h		;; 7099: 3e 38       >8
	push	psw		;; 709b: f5          .
	call	L72f2		;; 709c: cd f2 72    ..r
	mov	l,a		;; 709f: 6f          o
	mvi	h,000h		;; 70a0: 26 00       &.
	shld	L1c56		;; 70a2: 22 56 1c    "V.
	push	h		;; 70a5: e5          .
	lda	L1c55		;; 70a6: 3a 55 1c    :U.
	push	psw		;; 70a9: f5          .
	call	L57cd		;; 70aa: cd cd 57    ..W
	jmp	L7128		;; 70ad: c3 28 71    .(q

L70b0:	lda	L6df2		;; 70b0: 3a f2 6d    :.m
	push	psw		;; 70b3: f5          .
	lda	L6df9		;; 70b4: 3a f9 6d    :.m
	push	psw		;; 70b7: f5          .
	call	L72f2		;; 70b8: cd f2 72    ..r
	sta	L6df3		;; 70bb: 32 f3 6d    2.m
L70be:	lda	L6df9		;; 70be: 3a f9 6d    :.m
	ani	001h		;; 70c1: e6 01       ..
	ora	a		;; 70c3: b7          .
	jrnz	L70d8		;; 70c4: 20 12        .
	lda	L6df9		;; 70c6: 3a f9 6d    :.m
	srlr	a		;; 70c9: cb 3f       .?
	sta	L6df9		;; 70cb: 32 f9 6d    2.m
	lda	L6df3		;; 70ce: 3a f3 6d    :.m
	srlr	a		;; 70d1: cb 3f       .?
	sta	L6df3		;; 70d3: 32 f3 6d    2.m
	jr	L70be		;; 70d6: 18 e6       ..

L70d8:	lda	L6dff		;; 70d8: 3a ff 6d    :.m
	mov	l,a		;; 70db: 6f          o
	mvi	h,000h		;; 70dc: 26 00       &.
	dad	h		;; 70de: 29          )
	lxi	d,L53ac		;; 70df: 11 ac 53    ..S
	dad	d		;; 70e2: 19          .
	rst	4		;; 70e3: e7          .
	db	80h
	shld	L6dfa		;; 70e5: 22 fa 6d    ".m
L70e8:	lda	L6df3		;; 70e8: 3a f3 6d    :.m
	ora	a		;; 70eb: b7          .
	jrz	L7113		;; 70ec: 28 25       (%
	lda	L6df3		;; 70ee: 3a f3 6d    :.m
	dcr	a		;; 70f1: 3d          =
	sta	L6df3		;; 70f2: 32 f3 6d    2.m
L70f5:	lhld	L6dfa		;; 70f5: 2a fa 6d    *.m
	lxi	d,L54a2		;; 70f8: 11 a2 54    ..T
	dad	d		;; 70fb: 19          .
	mov	a,m		;; 70fc: 7e          ~
	cpi	080h		;; 70fd: fe 80       ..
	jrnc	L710a		;; 70ff: 30 09       0.
	lhld	L6dfa		;; 7101: 2a fa 6d    *.m
	inx	h		;; 7104: 23          #
	shld	L6dfa		;; 7105: 22 fa 6d    ".m
	jr	L70f5		;; 7108: 18 eb       ..

L710a:	lhld	L6dfa		;; 710a: 2a fa 6d    *.m
	inx	h		;; 710d: 23          #
	shld	L6dfa		;; 710e: 22 fa 6d    ".m
	jr	L70e8		;; 7111: 18 d5       ..

L7113:	lda	L6dfe		;; 7113: 3a fe 6d    :.m
	stx	a,-125		;; 7116: dd 77 83    .w.
	lhld	L6dfa		;; 7119: 2a fa 6d    *.m
	push	h		;; 711c: e5          .
	rst	4		;; 711d: e7          .
	db	8ah
	call	L6e54		;; 711f: cd 54 6e    .Tn
	ldx	a,-125		;; 7122: dd 7e 83    .~.
	sta	L6dfe		;; 7125: 32 fe 6d    2.m
L7128:	jr	L7140		;; 7128: 18 16       ..

L712a:	lda	L6dff		;; 712a: 3a ff 6d    :.m
	cpi	020h		;; 712d: fe 20       . 
	jrnz	L7139		;; 712f: 20 08        .
	mvi	a,002h		;; 7131: 3e 02       >.
	push	psw		;; 7133: f5          .
	call	L0d9b		;; 7134: cd 9b 0d    ...
	jr	L7140		;; 7137: 18 07       ..

L7139:	lda	L6dff		;; 7139: 3a ff 6d    :.m
	push	psw		;; 713c: f5          .
	call	L0597		;; 713d: cd 97 05    ...
L7140:	rst	3		;; 7140: df          .
	db	84h
	inx	h		;; 7142: 23          #
	rst	3		;; 7143: df          .
	db	4
	lda	L6dfe		;; 7145: 3a fe 6d    :.m
	cpi	080h		;; 7148: fe 80       ..
	mvi	a,000h		;; 714a: 3e 00       >.
	cmc			;; 714c: 3f          ?
	ral			;; 714d: 17          .
	push	psw		;; 714e: f5          .
	lbcd	L6dee		;; 714f: ed 4b ee 6d .K.m
	lhld	L6df0		;; 7153: 2a f0 6d    *.m
	ora	a		;; 7156: b7          .
	dsbc	b		;; 7157: ed 42       .B
	call	L8c09		;; 7159: cd 09 8c    ...
	mov	b,a		;; 715c: 47          G
	pop	psw		;; 715d: f1          .
	ora	b		;; 715e: b0          .
	rar			;; 715f: 1f          .
	jnc	L6ecc		;; 7160: d2 cc 6e    ..n
	jr	L7172		;; 7163: 18 0d       ..

L7165:	mvi	b,002h		;; 7165: 06 02       ..
	call	L8ddc		;; 7167: cd dc 8d    ...
	db '*' ! dw L6e6b
	db '?' ! dw L6ebd
	dw	L6ecc
L7172:	jmp	L8d56		;; 7172: c3 56 8d    .V.

L7175:	call	L8d27		;; 7175: cd 27 8d    .'.
	db	0ffh,9
	lxi	h,L3170		;; 717a: 21 70 31    .p1
	mvi	m,000h		;; 717d: 36 00       6.
	rst	3		;; 717f: df          .
	db	83h
	shld	L6df0		;; 7181: 22 f0 6d    ".m
	shld	L6dee		;; 7184: 22 ee 6d    ".m
	lxi	h,00000h	;; 7187: 21 00 00    ...
	shld	L6df5		;; 718a: 22 f5 6d    ".m
L718d:	lhld	L6df0		;; 718d: 2a f0 6d    *.m
	push	h		;; 7190: e5          .
	call	L1355		;; 7191: cd 55 13    .U.
	sta	L6df2		;; 7194: 32 f2 6d    2.m
	cpi	0cdh		;; 7197: fe cd       ..
	jrnz	L71a2		;; 7199: 20 07        .
	lxi	h,L3170		;; 719b: 21 70 31    .p1
	mvi	m,001h		;; 719e: 36 01       6.
	jr	L71b5		;; 71a0: 18 13       ..

L71a2:	lda	L6df2		;; 71a2: 3a f2 6d    :.m
	push	psw		;; 71a5: f5          .
	mvi	a,0c7h		;; 71a6: 3e c7       >.
	push	psw		;; 71a8: f5          .
	call	L72f2		;; 71a9: cd f2 72    ..r
	cpi	0c7h		;; 71ac: fe c7       ..
	jrnz	L71b5		;; 71ae: 20 05        .
	lxi	h,L3170		;; 71b0: 21 70 31    .p1
	mvi	m,001h		;; 71b3: 36 01       6.
L71b5:	lhld	L6df0		;; 71b5: 2a f0 6d    *.m
	inx	h		;; 71b8: 23          #
	shld	L6df0		;; 71b9: 22 f0 6d    ".m
	lbcd	L5440		;; 71bc: ed 4b 40 54 .K@T
	lhld	L6df5		;; 71c0: 2a f5 6d    *.m
	ora	a		;; 71c3: b7          .
	dsbc	b		;; 71c4: ed 42       .B
	jrnz	L71d2		;; 71c6: 20 0a        .
	lhld	L6df0		;; 71c8: 2a f0 6d    *.m
	push	h		;; 71cb: e5          .
	call	L1355		;; 71cc: cd 55 13    .U.
	sta	L6df2		;; 71cf: 32 f2 6d    2.m
L71d2:	lhld	L6df5		;; 71d2: 2a f5 6d    *.m
	shld	L6df7		;; 71d5: 22 f7 6d    ".m
	lxi	h,L6df3		;; 71d8: 21 f3 6d    ..m
	mvi	m,000h		;; 71db: 36 00       6.
	lhld	L6df5		;; 71dd: 2a f5 6d    *.m
	inx	h		;; 71e0: 23          #
	shld	L6df5		;; 71e1: 22 f5 6d    ".m
L71e4:	lhld	L6df5		;; 71e4: 2a f5 6d    *.m
	inx	h		;; 71e7: 23          #
	shld	L6df5		;; 71e8: 22 f5 6d    ".m
	lhld	L6df5		;; 71eb: 2a f5 6d    *.m
	lxi	d,L54a2		;; 71ee: 11 a2 54    ..T
	dad	d		;; 71f1: 19          .
	mov	a,m		;; 71f2: 7e          ~
	sta	L6dfe		;; 71f3: 32 fe 6d    2.m
	cpi	080h		;; 71f6: fe 80       ..
	jrc	L71e4		;; 71f8: 38 ea       8.
	lhld	L6df7		;; 71fa: 2a f7 6d    *.m
	inx	h		;; 71fd: 23          #
	lxi	d,L54a2		;; 71fe: 11 a2 54    ..T
	dad	d		;; 7201: 19          .
	mov	a,m		;; 7202: 7e          ~
	push	psw		;; 7203: f5          .
	lda	L6df2		;; 7204: 3a f2 6d    :.m
	push	psw		;; 7207: f5          .
	call	L72f2		;; 7208: cd f2 72    ..r
	push	psw		;; 720b: f5          .
	lhld	L6df7		;; 720c: 2a f7 6d    *.m
	lxi	d,L54a2		;; 720f: 11 a2 54    ..T
	dad	d		;; 7212: 19          .
	pop	psw		;; 7213: f1          .
	cmp	m		;; 7214: be          .
	jnz	L729e		;; 7215: c2 9e 72    ..r
	lhld	L6df7		;; 7218: 2a f7 6d    *.m
	inx	h		;; 721b: 23          #
	shld	L6df5		;; 721c: 22 f5 6d    ".m
	lxi	h,L6df3		;; 721f: 21 f3 6d    ..m
	mvi	m,000h		;; 7222: 36 00       6.
	lxi	h,L6e04		;; 7224: 21 04 6e    ..n
	push	h		;; 7227: e5          .
	lxi	b,00001h	;; 7228: 01 01 00    ...
	push	b		;; 722b: c5          .
	call	L7546		;; 722c: cd 46 75    .Fu
	db	10h
L7230:	lhld	L6df5		;; 7230: 2a f5 6d    *.m
	inx	h		;; 7233: 23          #
	shld	L6df5		;; 7234: 22 f5 6d    ".m
	lhld	L6df5		;; 7237: 2a f5 6d    *.m
	lxi	d,L54a2		;; 723a: 11 a2 54    ..T
	dad	d		;; 723d: 19          .
	mov	a,m		;; 723e: 7e          ~
	sta	L6dfe		;; 723f: 32 fe 6d    2.m
	lxi	h,L6e04		;; 7242: 21 04 6e    ..n
	push	h		;; 7245: e5          .
	lxi	h,L6e04		;; 7246: 21 04 6e    ..n
	call	L75be		;; 7249: cd be 75    ..u
	db	10h
	lda	L6dfe		;; 724d: 3a fe 6d    :.m
	ani	07fh		;; 7250: e6 7f       ..
	mov	l,a		;; 7252: 6f          o
	mvi	h,000h		;; 7253: 26 00       &.
	lxi	b,00001h	;; 7255: 01 01 00    ...
	push	b		;; 7258: c5          .
	push	h		;; 7259: e5          .
	call	L73c9		;; 725a: cd c9 73    ..s
	call	L7514		;; 725d: cd 14 75    ..u
	call	L7546		;; 7260: cd 46 75    .Fu
	db	10h
	lda	L6dfe		;; 7264: 3a fe 6d    :.m
	cpi	080h		;; 7267: fe 80       ..
	jrc	L7230		;; 7269: 38 c5       8.
	lxi	b,00002h	;; 726b: 01 02 00    ...
	lhld	L6df7		;; 726e: 2a f7 6d    *.m
	dad	b		;; 7271: 09          .
	push	h		;; 7272: e5          .
	rst	4		;; 7273: e7          .
	db	82h
	call	L6e54		;; 7275: cd 54 6e    .Tn
	lhld	L6e02		;; 7278: 2a 02 6e    *.n
	shld	L6df5		;; 727b: 22 f5 6d    ".m
	lhld	L6df0		;; 727e: 2a f0 6d    *.m
	rst	4		;; 7281: e7          .
	db	87h
	push	h		;; 7283: e5          .
	push	b		;; 7284: c5          .
	lhld	L6dee		;; 7285: 2a ee 6d    *.m
	rst	4		;; 7288: e7          .
	db	87h
	call	L87f6		;; 728a: cd f6 87    ...
	mov	a,c		;; 728d: 79          y
	sta	L1c58		;; 728e: 32 58 1c    2X.
	ora	a		;; 7291: b7          .
	jrnz	L729a		;; 7292: 20 06        .
	mvi	a,063h		;; 7294: 3e 63       >c
	push	psw		;; 7296: f5          .
	call	L0597		;; 7297: cd 97 05    ...
L729a:	jr	L72ca		;; 729a: 18 2e       ..

	jr	L72c7		;; 729c: 18 29       .)

L729e:	lhld	L6df5		;; 729e: 2a f5 6d    *.m
	inx	h		;; 72a1: 23          #
	shld	L6df5		;; 72a2: 22 f5 6d    ".m
	lxi	b,00002h	;; 72a5: 01 02 00    ...
	lhld	L6df5		;; 72a8: 2a f5 6d    *.m
	dad	b		;; 72ab: 09          .
	lxi	d,L54a2		;; 72ac: 11 a2 54    ..T
	dad	d		;; 72af: 19          .
	mov	a,m		;; 72b0: 7e          ~
	ora	a		;; 72b1: b7          .
	jrnz	L72c7		;; 72b2: 20 13        .
	lxi	h,L1c58		;; 72b4: 21 58 1c    .X.
	mvi	m,000h		;; 72b7: 36 00       6.
	lxi	h,00000h	;; 72b9: 21 00 00    ...
	shld	L6e02		;; 72bc: 22 02 6e    ".n
	mvi	a,064h		;; 72bf: 3e 64       >d
	push	psw		;; 72c1: f5          .
	call	L0597		;; 72c2: cd 97 05    ...
	jr	L72ca		;; 72c5: 18 03       ..

L72c7:	jmp	L71d2		;; 72c7: c3 d2 71    ..q

L72ca:	lhld	L6e02		;; 72ca: 2a 02 6e    *.n
	mov	a,h		;; 72cd: 7c          |
	ora	l		;; 72ce: b5          .
	jnz	L718d		;; 72cf: c2 8d 71    ..q
	jmp	L8d56		;; 72d2: c3 56 8d    .V.

L72d5:	pop	h		;call BIOS
	pop	psw		;; 72d6: f1          .
	mov	c,a		;; 72d7: 4f          O
	pop	psw		;; 72d8: f1          .
	push	h		;; 72d9: e5          .
	pushix			;; 72da: dd e5       ..
	lxi	h,L72e5		;; 72dc: 21 e5 72    ..r
	push	h		;; 72df: e5          .
	lhld	00001h		;; 72e0: 2a 01 00    *..
	mov	l,a		;; 72e3: 6f          o
	pchl			;; 72e4: e9          .

L72e5:	popix			;; 72e5: dd e1       ..
	ret			;; 72e7: c9          .

L72e8:	pop	d		;; 72e8: d1          .
	pop	h		;; 72e9: e1          .
	push	d		;; 72ea: d5          .
	pchl			;; 72eb: e9          .

	pop	h		;; 72ec: e1          .
	pop	d		;; 72ed: d1          .
	pop	b		;; 72ee: c1          .
	mov	a,b		;; 72ef: 78          x
	ora	d		;; 72f0: b2          .
	pchl			;; 72f1: e9          .

L72f2:	pop	h		;; 72f2: e1          .
	pop	d		;; 72f3: d1          .
	pop	b		;; 72f4: c1          .
	mov	a,b		;; 72f5: 78          x
	ana	d		;; 72f6: a2          .
	pchl			;; 72f7: e9          .

	pop	h		;; 72f8: e1          .
	pop	d		;; 72f9: d1          .
	pop	b		;; 72fa: c1          .
	mov	a,b		;; 72fb: 78          x
	xra	d		;; 72fc: aa          .
	pchl			;; 72fd: e9          .

L72fe:	pop	h		;; 72fe: e1          .
	pop	b		;; 72ff: c1          .
	pop	d		;; 7300: d1          .
	xthl			;; 7301: e3          .
	ldir			;; 7302: ed b0       ..
	ret			;; 7304: c9          .

L7305:	pop	h		;; 7305: e1          .
	pop	b		;; 7306: c1          .
	pop	d		;; 7307: d1          .
	xthl			;; 7308: e3          .
	lddr			;; 7309: ed b8       ..
	ret			;; 730b: c9          .

L730c:	pushix			;; 730c: dd e5       ..
L730e:	lxi	h,L737c		;; 730e: 21 7c 73    .|s
	lxi	d,L737d		;; 7311: 11 7d 73    .}s
	lxi	b,00014h	;; 7314: 01 14 00    ...
	mvi	m,000h		;; 7317: 36 00       6.
	ldir			;; 7319: ed b0       ..
	lxi	d,L7370		;; 731b: 11 70 73    .ps
	push	d		;; 731e: d5          .
	mvi	c,00fh		;; 731f: 0e 0f       ..
	call	00005h		;; 7321: cd 05 00    ...
	pop	d		;; 7324: d1          .
	inr	a		;; 7325: 3c          <
	jrnz	L7330		;; 7326: 20 08        .
	mvi	c,016h		;; 7328: 0e 16       ..
	call	00005h		;; 732a: cd 05 00    ...
	inr	a		;; 732d: 3c          <
	jrnz	L733d		;; 732e: 20 0d        .
L7330:	lda	L737b		;; 7330: 3a 7b 73    :{s
	cpi	039h		;; 7333: fe 39       .9
	jrnc	L736d		;; 7335: 30 36       06
	inr	a		;; 7337: 3c          <
	sta	L737b		;; 7338: 32 7b 73    2{s
	jr	L730e		;; 733b: 18 d1       ..

L733d:	lxi	h,L1234		;; 733d: 21 34 12    .4.
	push	h		;; 7340: e5          .
	dad	h		;; 7341: 29          )
	push	h		;; 7342: e5          .
	lxi	d,00000h	;; 7343: 11 00 00    ...
L7346:	push	d		;; 7346: d5          .
	mvi	c,01ah		;; 7347: 0e 1a       ..
	call	00005h		;; 7349: cd 05 00    ...
	mvi	c,015h		;; 734c: 0e 15       ..
	lxi	d,L7370		;; 734e: 11 70 73    .ps
	call	00005h		;; 7351: cd 05 00    ...
	pop	d		;; 7354: d1          .
	ora	a		;; 7355: b7          .
	jrnz	L7363		;; 7356: 20 0b        .
	lxi	h,00080h	;; 7358: 21 80 00    ...
	dad	d		;; 735b: 19          .
	xchg			;; 735c: eb          .
	lda	00002h		;; 735d: 3a 02 00    :..
	cmp	d		;; 7360: ba          .
	jrnz	L7346		;; 7361: 20 e3        .
L7363:	pop	h		;; 7363: e1          .
	pop	h		;; 7364: e1          .
	mvi	c,010h		;; 7365: 0e 10       ..
	lxi	d,L7370		;; 7367: 11 70 73    .ps
	call	00005h		;; 736a: cd 05 00    ...
L736d:	popix			;; 736d: dd e1       ..
	ret			;; 736f: c9          .

L7370:	db	0,'DZ-BUG  00'
L737b:	db	'1'
L737c:	db	0
L737d:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0
L7391:	jmp	L9016		;; 7391: c3 16 90    ...

	jmp	L90d9		;; 7394: c3 d9 90    ...

L7397:	call	L7569		;; 7397: cd 69 75    .iu
	popiy			;; 739a: fd e1       ..
	mov	a,c		;; 739c: 79          y
	sub	b		;; 739d: 90          .
	jrz	L73af		;; 739e: 28 0f       (.
	jrc	L73b2		;; 73a0: 38 10       8.
	dcx	h		;; 73a2: 2b          +
	xchg			;; 73a3: eb          .
	mvi	h,000h		;; 73a4: 26 00       &.
	mov	l,b		;; 73a6: 68          h
	dad	sp		;; 73a7: 39          9
	mov	c,b		;; 73a8: 48          H
	mvi	b,000h		;; 73a9: 06 00       ..
	lddr			;; 73ab: ed b8       ..
	xchg			;; 73ad: eb          .
	sphl			;; 73ae: f9          .
L73af:	inx	sp		;; 73af: 33          3
	pciy			;; 73b0: fd e9       ..

L73b2:	mvi	h,0ffh		;; 73b2: 26 ff       &.
	mov	l,a		;; 73b4: 6f          o
	inx	h		;; 73b5: 23          #
	dad	sp		;; 73b6: 39          9
	sphl			;; 73b7: f9          .
	xchg			;; 73b8: eb          .
	mvi	b,000h		;; 73b9: 06 00       ..
	ldir			;; 73bb: ed b0       ..
	xchg			;; 73bd: eb          .
L73be:	mvi	m,000h		;; 73be: 36 00       6.
	inx	h		;; 73c0: 23          #
	inr	a		;; 73c1: 3c          <
	jrnz	L73be		;; 73c2: 20 fa        .
	pushiy			;; 73c4: fd e5       ..
	jmp	L8d49		;; 73c6: c3 49 8d    .I.

L73c9:	pop	h		;; 73c9: e1          .
	pop	b		;; 73ca: c1          .
	push	b		;; 73cb: c5          .
	push	b		;; 73cc: c5          .
	push	h		;; 73cd: e5          .
	pop	h		;; 73ce: e1          .
	pop	b		;; 73cf: c1          .
	pop	d		;; 73d0: d1          .
	push	h		;; 73d1: e5          .
	mov	h,b		;; 73d2: 60          `
	mov	l,c		;; 73d3: 69          i
	ora	a		;; 73d4: b7          .
	dsbc	d		;; 73d5: ed 52       .R
	rm			;; 73d7: f8          .
	inx	h		;; 73d8: 23          #
	push	h		;; 73d9: e5          .
	mov	a,b		;; 73da: 78          x
	ora	d		;; 73db: b2          .
	jm	L743b		;; 73dc: fa 3b 74    .;t
	lxi	h,0f808h	;; 73df: 21 08 f8    ...
	dad	b		;; 73e2: 09          .
	jrc	L743b		;; 73e3: 38 56       8V
	push	d		;; 73e5: d5          .
	lxi	h,00006h	;; 73e6: 21 06 00    ...
	dad	sp		;; 73e9: 39          9
	mov	a,m		;; 73ea: 7e          ~
	mov	d,b		;; 73eb: 50          P
	mov	e,c		;; 73ec: 59          Y
	call	L742e		;; 73ed: cd 2e 74    ..t
	inx	d		;; 73f0: 13          .
	mov	c,a		;; 73f1: 4f          O
	sub	e		;; 73f2: 93          .
	jrnc	L7412		;; 73f3: 30 1d       0.
	mov	m,e		;; 73f5: 73          s
	mvi	b,000h		;; 73f6: 06 00       ..
	lxi	h,00007h	;; 73f8: 21 07 00    ...
	dad	b		;; 73fb: 09          .
	mov	b,h		;; 73fc: 44          D
	mov	c,l		;; 73fd: 4d          M
	lxi	h,00000h	;; 73fe: 21 00 00    ...
	dad	sp		;; 7401: 39          9
	xchg			;; 7402: eb          .
	mvi	h,0ffh		;; 7403: 26 ff       &.
	mov	l,a		;; 7405: 6f          o
	dad	sp		;; 7406: 39          9
	sphl			;; 7407: f9          .
	xchg			;; 7408: eb          .
	ldir			;; 7409: ed b0       ..
	xchg			;; 740b: eb          .
L740c:	mvi	m,000h		;; 740c: 36 00       6.
	inx	h		;; 740e: 23          #
	inr	a		;; 740f: 3c          <
	jrnz	L740c		;; 7410: 20 fa        .
L7412:	pop	d		;; 7412: d1          .
	pop	b		;; 7413: c1          .
	call	L8d49		;; 7414: cd 49 8d    .I.
L7417:	mov	a,e		;; 7417: 7b          {
	call	L75b4		;; 7418: cd b4 75    ..u
	push	d		;; 741b: d5          .
	call	L742e		;; 741c: cd 2e 74    ..t
	lxi	h,00005h	;; 741f: 21 05 00    ...
	dad	d		;; 7422: 19          .
	dad	sp		;; 7423: 39          9
	ora	m		;; 7424: b6          .
	mov	m,a		;; 7425: 77          w
	pop	d		;; 7426: d1          .
	inx	d		;; 7427: 13          .
	dcx	b		;; 7428: 0b          .
	mov	a,b		;; 7429: 78          x
	ora	c		;; 742a: b1          .
	jrnz	L7417		;; 742b: 20 ea        .
	ret			;; 742d: c9          .

L742e:	srlr	d		;; 742e: cb 3a       .:
	rarr	e		;; 7430: cb 1b       ..
	srlr	d		;; 7432: cb 3a       .:
	rarr	e		;; 7434: cb 1b       ..
	srlr	d		;; 7436: cb 3a       .:
	rarr	e		;; 7438: cb 1b       ..
	ret			;; 743a: c9          .

L743b:	pop	d		;; 743b: d1          .
	mvi	a,056h		;; 743c: 3e 56       >V
	mvi	c,002h		;; 743e: 0e 02       ..
	call	L921e		;; 7440: cd 1e 92    ...
	ret			;; 7443: c9          .

	call	L7598		;; 7444: cd 98 75    ..u
	inx	h		;; 7447: 23          #
	mov	a,m		;; 7448: 7e          ~
	inx	h		;; 7449: 23          #
	mov	e,a		;; 744a: 5f          _
	ral			;; 744b: 17          .
	sub	a		;; 744c: 97          .
	mov	d,a		;; 744d: 57          W
	jr	L7470		;; 744e: 18 20       . 

L7450:	call	L7598		;; 7450: cd 98 75    ..u
	inx	h		;; 7453: 23          #
	mov	e,m		;; 7454: 5e          ^
	inx	h		;; 7455: 23          #
	mvi	d,000h		;; 7456: 16 00       ..
	jr	L7470		;; 7458: 18 16       ..

	call	L7598		;; 745a: cd 98 75    ..u
	mov	e,m		;; 745d: 5e          ^
	inx	h		;; 745e: 23          #
	mov	d,m		;; 745f: 56          V
	inx	h		;; 7460: 23          #
	jr	L7470		;; 7461: 18 0d       ..

	call	L7598		;; 7463: cd 98 75    ..u
	mov	e,m		;; 7466: 5e          ^
	inx	h		;; 7467: 23          #
	mov	d,m		;; 7468: 56          V
	inx	h		;; 7469: 23          #
	mov	a,m		;; 746a: 7e          ~
	inx	h		;; 746b: 23          #
	ora	m		;; 746c: b6          .
	inx	h		;; 746d: 23          #
	jrnz	L7490		;; 746e: 20 20         
L7470:	push	h		;; 7470: e5          .
	mov	a,e		;; 7471: 7b          {
	call	L75b4		;; 7472: cd b4 75    ..u
	mvi	b,003h		;; 7475: 06 03       ..
L7477:	srlr	d		;; 7477: cb 3a       .:
	rarr	e		;; 7479: cb 1b       ..
	djnz	L7477		;; 747b: 10 fa       ..
	mvi	h,000h		;; 747d: 26 00       &.
	mov	l,c		;; 747f: 69          i
	dcx	h		;; 7480: 2b          +
	ora	a		;; 7481: b7          .
	dsbc	d		;; 7482: ed 52       .R
	jrc	L748f		;; 7484: 38 09       8.
	lxi	h,00005h	;; 7486: 21 05 00    ...
	dad	sp		;; 7489: 39          9
	dad	d		;; 748a: 19          .
	ana	m		;; 748b: a6          .
	pop	h		;; 748c: e1          .
	jr	L7491		;; 748d: 18 02       ..

L748f:	pop	h		;; 748f: e1          .
L7490:	xra	a		;; 7490: af          .
L7491:	popiy			;; 7491: fd e1       ..
	sphl			;; 7493: f9          .
	pciy			;; 7494: fd e9       ..

L7496:	mov	a,b		;; 7496: 78          x
	sub	c		;; 7497: 91          .
	push	psw		;; 7498: f5          .
	jrc	L749c		;; 7499: 38 01       8.
	mov	b,c		;; 749b: 41          A
L749c:	mvi	c,000h		;; 749c: 0e 00       ..
L749e:	ldax	d		;; 749e: 1a          .
	cma			;; 749f: 2f          /
	ana	m		;; 74a0: a6          .
	jrnz	L74c8		;; 74a1: 20 25        %
	ldax	d		;; 74a3: 1a          .
	xra	m		;; 74a4: ae          .
	jrz	L74a9		;; 74a5: 28 02       (.
	mvi	c,001h		;; 74a7: 0e 01       ..
L74a9:	inx	d		;; 74a9: 13          .
	inx	h		;; 74aa: 23          #
	djnz	L749e		;; 74ab: 10 f1       ..
	pop	psw		;; 74ad: f1          .
	rz			;; 74ae: c8          .
	jrc	L74ba		;; 74af: 38 09       8.
	mov	b,a		;; 74b1: 47          G
L74b2:	ldax	d		;; 74b2: 1a          .
	ora	a		;; 74b3: b7          .
	jrnz	L74c5		;; 74b4: 20 0f        .
	inx	d		;; 74b6: 13          .
	djnz	L74b2		;; 74b7: 10 f9       ..
	ret			;; 74b9: c9          .

L74ba:	neg			;; 74ba: ed 44       .D
	mov	b,a		;; 74bc: 47          G
L74bd:	mov	a,m		;; 74bd: 7e          ~
	ora	a		;; 74be: b7          .
	jrnz	L74c9		;; 74bf: 20 08        .
	inx	h		;; 74c1: 23          #
	djnz	L74bd		;; 74c2: 10 f9       ..
	ret			;; 74c4: c9          .

L74c5:	mvi	c,001h		;; 74c5: 0e 01       ..
	ret			;; 74c7: c9          .

L74c8:	pop	d		;; 74c8: d1          .
L74c9:	mvi	c,0ffh		;; 74c9: 0e ff       ..
	ret			;; 74cb: c9          .

	call	L75a4		;; 74cc: cd a4 75    ..u
	jr	L74d8		;; 74cf: 18 07       ..

L74d1:	call	L75a4		;; 74d1: cd a4 75    ..u
	xchg			;; 74d4: eb          .
	mov	a,b		;; 74d5: 78          x
	mov	b,c		;; 74d6: 41          A
	mov	c,a		;; 74d7: 4f          O
L74d8:	call	L7496		;; 74d8: cd 96 74    ..t
	pop	h		;; 74db: e1          .
	popiy			;; 74dc: fd e1       ..
	sphl			;; 74de: f9          .
	mov	a,c		;; 74df: 79          y
	ora	a		;; 74e0: b7          .
	pciy			;; 74e1: fd e9       ..

L74e3:	call	L75a4		;; 74e3: cd a4 75    ..u
	mov	a,c		;; 74e6: 79          y
	cmp	b		;; 74e7: b8          .
	jrc	L74f7		;; 74e8: 38 0d       8.
	xchg			;; 74ea: eb          .
	push	h		;; 74eb: e5          .
L74ec:	ldax	d		;; 74ec: 1a          .
	ana	m		;; 74ed: a6          .
	mov	m,a		;; 74ee: 77          w
	inx	d		;; 74ef: 13          .
	inx	h		;; 74f0: 23          #
	djnz	L74ec		;; 74f1: 10 f9       ..
	pop	h		;; 74f3: e1          .
	dcx	h		;; 74f4: 2b          +
	jr	L750e		;; 74f5: 18 17       ..

L74f7:	push	b		;; 74f7: c5          .
L74f8:	ldax	d		;; 74f8: 1a          .
	ana	m		;; 74f9: a6          .
	mov	m,a		;; 74fa: 77          w
	inx	d		;; 74fb: 13          .
	inx	h		;; 74fc: 23          #
	dcr	b		;; 74fd: 05          .
	dcr	c		;; 74fe: 0d          .
	jrnz	L74f8		;; 74ff: 20 f7        .
L7501:	inx	d		;; 7501: 13          .
	djnz	L7501		;; 7502: 10 fd       ..
	pop	b		;; 7504: c1          .
	mvi	b,000h		;; 7505: 06 00       ..
	inx	b		;; 7507: 03          .
	dcx	d		;; 7508: 1b          .
	dcx	h		;; 7509: 2b          +
	lddr			;; 750a: ed b8       ..
	xchg			;; 750c: eb          .
	inx	h		;; 750d: 23          #
L750e:	pop	d		;; 750e: d1          .
	popiy			;; 750f: fd e1       ..
	sphl			;; 7511: f9          .
	pciy			;; 7512: fd e9       ..

L7514:	call	L75a4		;; 7514: cd a4 75    ..u
	mov	a,b		;; 7517: 78          x
	cmp	c		;; 7518: b9          .
	jrc	L7529		;; 7519: 38 0e       8.
	push	d		;; 751b: d5          .
	xchg			;; 751c: eb          .
	mov	b,c		;; 751d: 41          A
L751e:	ldax	d		;; 751e: 1a          .
	ora	m		;; 751f: b6          .
	mov	m,a		;; 7520: 77          w
	inx	d		;; 7521: 13          .
	inx	h		;; 7522: 23          #
	djnz	L751e		;; 7523: 10 f9       ..
	pop	h		;; 7525: e1          .
	dcx	h		;; 7526: 2b          +
	jr	L7540		;; 7527: 18 17       ..

L7529:	push	b		;; 7529: c5          .
L752a:	ldax	d		;; 752a: 1a          .
	ora	m		;; 752b: b6          .
	mov	m,a		;; 752c: 77          w
	inx	d		;; 752d: 13          .
	inx	h		;; 752e: 23          #
	dcr	c		;; 752f: 0d          .
	djnz	L752a		;; 7530: 10 f8       ..
L7532:	inx	h		;; 7532: 23          #
	dcr	c		;; 7533: 0d          .
	jrnz	L7532		;; 7534: 20 fc        .
	pop	b		;; 7536: c1          .
	mvi	b,000h		;; 7537: 06 00       ..
	inx	b		;; 7539: 03          .
	dcx	d		;; 753a: 1b          .
	dcx	h		;; 753b: 2b          +
	lddr			;; 753c: ed b8       ..
	xchg			;; 753e: eb          .
	inx	h		;; 753f: 23          #
L7540:	pop	d		;; 7540: d1          .
	popiy			;; 7541: fd e1       ..
	sphl			;; 7543: f9          .
	pciy			;; 7544: fd e9       ..

L7546:	call	L7569		;; 7546: cd 69 75    .iu
	popiy			;; 7549: fd e1       ..
	push	d		;; 754b: d5          .
	mov	e,m		;; 754c: 5e          ^
	inx	h		;; 754d: 23          #
	mov	d,m		;; 754e: 56          V
	inx	h		;; 754f: 23          #
	xthl			;; 7550: e3          .
	mov	a,b		;; 7551: 78          x
	sub	c		;; 7552: 91          .
	jrnc	L7557		;; 7553: 30 02       0.
	mov	c,b		;; 7555: 48          H
	xra	a		;; 7556: af          .
L7557:	mvi	b,000h		;; 7557: 06 00       ..
	ldir			;; 7559: ed b0       ..
	ora	a		;; 755b: b7          .
	jrz	L7565		;; 755c: 28 07       (.
	xchg			;; 755e: eb          .
	mov	b,a		;; 755f: 47          G
L7560:	mvi	m,000h		;; 7560: 36 00       6.
	inx	h		;; 7562: 23          #
	djnz	L7560		;; 7563: 10 fb       ..
L7565:	pop	h		;; 7565: e1          .
	sphl			;; 7566: f9          .
	pciy			;; 7567: fd e9       ..

L7569:	popiy			;; 7569: fd e1       ..
	call	L7598		;; 756b: cd 98 75    ..u
	xthl			;; 756e: e3          .
	mov	b,m		;; 756f: 46          F
	inx	h		;; 7570: 23          #
	xthl			;; 7571: e3          .
	mov	a,b		;; 7572: 78          x
	cmp	c		;; 7573: b9          .
	jrnc	L7596		;; 7574: 30 20       0 
	mov	a,c		;; 7576: 79          y
	sub	b		;; 7577: 90          .
	mov	b,a		;; 7578: 47          G
	xra	a		;; 7579: af          .
L757a:	dcx	h		;; 757a: 2b          +
	ora	m		;; 757b: b6          .
	djnz	L757a		;; 757c: 10 fc       ..
	xtiy			;; 757e: fd e3       ..
	ora	a		;; 7580: b7          .
	jrz	L758e		;; 7581: 28 0b       (.
	pushiy			;; 7583: fd e5       ..
	mvi	a,056h		;; 7585: 3e 56       >V
	mvi	c,002h		;; 7587: 0e 02       ..
	call	L921e		;; 7589: cd 1e 92    ...
	popiy			;; 758c: fd e1       ..
L758e:	call	L7598		;; 758e: cd 98 75    ..u
	ldy	b,-1		;; 7591: fd 46 ff    .F.
	xtiy			;; 7594: fd e3       ..
L7596:	pciy			;; 7596: fd e9       ..

L7598:	lxi	h,00004h	;; 7598: 21 04 00    ...
	dad	sp		;; 759b: 39          9
	mvi	b,000h		;; 759c: 06 00       ..
	mov	c,m		;; 759e: 4e          N
	inx	h		;; 759f: 23          #
	mov	d,h		;; 75a0: 54          T
	mov	e,l		;; 75a1: 5d          ]
	dad	b		;; 75a2: 09          .
	ret			;; 75a3: c9          .

L75a4:	popiy			;; 75a4: fd e1       ..
	call	L7598		;; 75a6: cd 98 75    ..u
	push	d		;; 75a9: d5          .
	mov	b,m		;; 75aa: 46          F
	inx	h		;; 75ab: 23          #
	xchg			;; 75ac: eb          .
	mvi	h,000h		;; 75ad: 26 00       &.
	mov	l,b		;; 75af: 68          h
	dad	d		;; 75b0: 19          .
	xthl			;; 75b1: e3          .
	pciy			;; 75b2: fd e9       ..

L75b4:	ani	007h		;; 75b4: e6 07       ..
	inr	a		;; 75b6: 3c          <
	mov	b,a		;; 75b7: 47          G
	xra	a		;; 75b8: af          .
	stc			;; 75b9: 37          7
L75ba:	ral			;; 75ba: 17          .
	djnz	L75ba		;; 75bb: 10 fd       ..
	ret			;; 75bd: c9          .

L75be:	popiy			;; 75be: fd e1       ..
L75c0:	mvi	b,000h		;; 75c0: 06 00       ..
	ldy	c,+0		;; 75c2: fd 4e 00    .N.
	inxiy			;; 75c5: fd 23       .#
	jr	L75d3		;; 75c7: 18 0a       ..

L75c9:	pop	h		;; 75c9: e1          .
	mvi	b,000h		;; 75ca: 06 00       ..
	mov	c,m		;; 75cc: 4e          N
	inx	h		;; 75cd: 23          #
	push	h		;; 75ce: e5          .
	popiy			;; 75cf: fd e1       ..
	dady	b		;; 75d1: fd 09       ..
L75d3:	xchg			;; 75d3: eb          .
	mvi	h,0ffh		;; 75d4: 26 ff       &.
	mov	a,c		;; 75d6: 79          y
	cma			;; 75d7: 2f          /
	mov	l,a		;; 75d8: 6f          o
	dad	sp		;; 75d9: 39          9
	sphl			;; 75da: f9          .
	mov	m,c		;; 75db: 71          q
	inx	h		;; 75dc: 23          #
	xchg			;; 75dd: eb          .
	ldir			;; 75de: ed b0       ..
	pushiy			;; 75e0: fd e5       ..
	jmp	L8d49		;; 75e2: c3 49 8d    .I.

L75e5:	popiy			;; 75e5: fd e1       ..
	pop	h		;; 75e7: e1          .
	jr	L75c0		;; 75e8: 18 d6       ..

L75ea:	popiy			;; 75ea: fd e1       ..
	mov	a,m		;; 75ec: 7e          ~
	inx	h		;; 75ed: 23          #
	mvi	b,000h		;; 75ee: 06 00       ..
	mov	c,a		;; 75f0: 4f          O
	ora	a		;; 75f1: b7          .
	jrnz	L75d3		;; 75f2: 20 df        .
	push	psw		;; 75f4: f5          .
	inx	sp		;; 75f5: 33          3
	pciy			;; 75f6: fd e9       ..

L75f8:	popiy			;; 75f8: fd e1       ..
	pop	h		;; 75fa: e1          .
	pop	d		;; 75fb: d1          .
	mov	a,m		;; 75fc: 7e          ~
	mov	c,a		;; 75fd: 4f          O
	mvi	b,000h		;; 75fe: 06 00       ..
	mov	h,b		;; 7600: 60          `
	mov	l,b		;; 7601: 68          h
	pciy			;; 7602: fd e9       ..

L7604:	pop	h		;; 7604: e1          .
	pop	b		;; 7605: c1          .
	xthl			;; 7606: e3          .
	xchg			;; 7607: eb          .
	lxi	h,00080h	;; 7608: 21 80 00    ...
	mov	c,b		;; 760b: 48          H
	mvi	b,000h		;; 760c: 06 00       ..
	ldir			;; 760e: ed b0       ..
	ret			;; 7610: c9          .

L7611:	call	L8d27		;; 7611: cd 27 8d    .'.
	db	0fch,0ah
	call	L7620		;; 7616: cd 20 76    . v
	call	L8c3a		;; 7619: cd 3a 8c    .:.
	db	82h
	jmp	L8d56		;; 761d: c3 56 8d    .V.

L7620:	popiy			;; 7620: fd e1       ..
	lhld	L91b9		;; 7622: 2a b9 91    *..
	dad	sp		;; 7625: 39          9
	mov	c,l		;; 7626: 4d          M
	mov	b,h		;; 7627: 44          D
	lxi	h,00000h	;; 7628: 21 00 00    ...
	pciy			;; 762b: fd e9       ..

L762d:	db	0
L762e:	db	0,0
L7630:	db	0
L7631:	db	0,0,0,0,0,0,0,0,0,0,0,0
L763d:	lhld	L0103		;; 763d: 2a 03 01    *..
	xra	a		;; 7640: af          .
	jr	L7655		;; 7641: 18 12       ..

L7643:	lhld	L0105		;; 7643: 2a 05 01    *..
	xra	a		;; 7646: af          .
	jr	L7655		;; 7647: 18 0c       ..

L7649:	lhld	L0103		;; 7649: 2a 03 01    *..
	mvi	a,001h		;; 764c: 3e 01       >.
	jr	L7655		;; 764e: 18 05       ..

L7650:	lhld	L0105		;; 7650: 2a 05 01    *..
	mvi	a,002h		;; 7653: 3e 02       >.
L7655:	pop	d		;; 7655: d1          .
	sded	L91bd		;; 7656: ed 53 bd 91 .S..
	push	d		;; 765a: d5          .
	push	h		;; 765b: e5          .
	push	psw		;; 765c: f5          .
	lda	L762d		;; 765d: 3a 2d 76    :-v
	ora	a		;; 7660: b7          .
	jrz	L7675		;; 7661: 28 12       (.
	cpi	004h		;; 7663: fe 04       ..
	jrz	L76ad		;; 7665: 28 46       (F
	lxi	b,0000ch	;; 7667: 01 0c 00    ...
	lxi	h,L7630		;; 766a: 21 30 76    .0v
	dad	b		;; 766d: 09          .
	xchg			;; 766e: eb          .
	lxi	h,0fffdh	;; 766f: 21 fd ff    ...
	dad	d		;; 7672: 19          .
	lddr			;; 7673: ed b8       ..
L7675:	inr	a		;; 7675: 3c          <
	sta	L762d		;; 7676: 32 2d 76    2-v
	pop	psw		;; 7679: f1          .
	pop	h		;; 767a: e1          .
	shld	L762e		;; 767b: 22 2e 76    ".v
	sta	L7630		;; 767e: 32 30 76    20v
	ret			;; 7681: c9          .

L7682:	call	L7c4b		;; 7682: cd 4b 7c    .K|
	sixd	L762e		;; 7685: dd 22 2e 76 .".v
	popix			;; 7689: dd e1       ..
	ret			;; 768b: c9          .

L768c:	lda	L7630		;; 768c: 3a 30 76    :0v
	cpi	001h		;; 768f: fe 01       ..
	cz	L7c0b		;; 7691: cc 0b 7c    ..|
	lda	L7630		;; 7694: 3a 30 76    :0v
	cpi	002h		;; 7697: fe 02       ..
	cz	L7c29		;; 7699: cc 29 7c    .)|
	lxi	h,L762d		;; 769c: 21 2d 76    .-v
	dcr	m		;; 769f: 35          5
	rz			;; 76a0: c8          .
	lxi	h,L7631		;; 76a1: 21 31 76    .1v
	lxi	d,L762e		;; 76a4: 11 2e 76    ..v
	lxi	b,0000ch	;; 76a7: 01 0c 00    ...
	ldir			;; 76aa: ed b0       ..
	ret			;; 76ac: c9          .

L76ad:	mvi	a,046h		;; 76ad: 3e 46       >F
	mvi	b,01bh		;; 76af: 06 1b       ..
	mvi	c,005h		;; 76b1: 0e 05       ..
	lxi	d,L76b9		;; 76b3: 11 b9 76    ..v
	call	L921e		;; 76b6: cd 1e 92    ...
L76b9:	db	'Read/write nesti'
	db	'ng too deep'
L76d4:	db	0,0
L76d6:	pop	h		;; 76d6: e1          .
	shld	L91bd		;; 76d7: 22 bd 91    "..
	push	h		;; 76da: e5          .
	pushix			;; 76db: dd e5       ..
	pop	h		;; 76dd: e1          .
	lxi	d,0ff7ah	;; 76de: 11 7a ff    .z.
	dad	d		;; 76e1: 19          .
	mov	c,m		;; 76e2: 4e          N
	inx	h		;; 76e3: 23          #
	mov	b,m		;; 76e4: 46          F
	pushix			;; 76e5: dd e5       ..
L76e7:	lixd	L91bb		;; 76e7: dd 2a bb 91 .*..
	ldx	l,+14		;; 76eb: dd 6e 0e    .n.
	ldx	h,+15		;; 76ee: dd 66 0f    .f.
	push	h		;; 76f1: e5          .
	ora	a		;; 76f2: b7          .
	dsbc	sp		;; 76f3: ed 72       .r
	pop	h		;; 76f5: e1          .
	jrc	L7709		;; 76f6: 38 11       8.
	dsbc	b		;; 76f8: ed 42       .B
	jrnc	L7709		;; 76fa: 30 0d       0.
	call	L7736		;; 76fc: cd 36 77    .6w
	shld	L91bb		;; 76ff: 22 bb 91    "..
	mov	a,h		;; 7702: 7c          |
	ora	l		;; 7703: b5          .
	jrnz	L76e7		;; 7704: 20 e1        .
L7706:	popix			;; 7706: dd e1       ..
	ret			;; 7708: c9          .

L7709:	ldx	l,+2		;; 7709: dd 6e 02    .n.
	ldx	h,+3		;; 770c: dd 66 03    .f.
	mov	a,h		;; 770f: 7c          |
	ora	l		;; 7710: b5          .
	jrz	L7706		;; 7711: 28 f3       (.
	push	h		;; 7713: e5          .
	xtix			;; 7714: dd e3       ..
	pop	d		;; 7716: d1          .
	ldx	l,+14		;; 7717: dd 6e 0e    .n.
	ldx	h,+15		;; 771a: dd 66 0f    .f.
	push	h		;; 771d: e5          .
	ora	a		;; 771e: b7          .
	dsbc	sp		;; 771f: ed 72       .r
	pop	h		;; 7721: e1          .
	jrc	L7709		;; 7722: 38 e5       8.
	dsbc	b		;; 7724: ed 42       .B
	jrnc	L7709		;; 7726: 30 e1       0.
	push	d		;; 7728: d5          .
	call	L7736		;; 7729: cd 36 77    .6w
	popix			;; 772c: dd e1       ..
	stx	l,+2		;; 772e: dd 75 02    .u.
	stx	h,+3		;; 7731: dd 74 03    .t.
	jr	L7709		;; 7734: 18 d3       ..

L7736:	push	b		;; 7736: c5          .
	xra	a		;; 7737: af          .
	call	L92ea		;; 7738: cd ea 92    ...
	bitx	5,+4		;; 773b: dd cb 04 6e ...n
	jrnz	L775f		;; 773f: 20 1e        .
	ldx	l,+18		;; 7741: dd 6e 12    .n.
	ldx	h,+19		;; 7744: dd 66 13    .f.
	mov	a,h		;; 7747: 7c          |
	ora	l		;; 7748: b5          .
	jrz	L775f		;; 7749: 28 14       (.
	shld	L76d4		;; 774b: 22 d4 76    ".v
	lxi	h,L76d4		;; 774e: 21 d4 76    ..v
	push	h		;; 7751: e5          .
	ldx	h,+20		;; 7752: dd 66 14    .f.
	mvi	l,000h		;; 7755: 2e 00       ..
	srlr	h		;; 7757: cb 3c       .<
	rarr	l		;; 7759: cb 1d       ..
	push	h		;; 775b: e5          .
	call	L90d9		;; 775c: cd d9 90    ...
L775f:	ldx	l,+2		;; 775f: dd 6e 02    .n.
	ldx	h,+3		;; 7762: dd 66 03    .f.
	push	h		;; 7765: e5          .
	ldx	l,+14		;; 7766: dd 6e 0e    .n.
	ldx	h,+15		;; 7769: dd 66 0f    .f.
	push	h		;; 776c: e5          .
	lxi	h,00048h	;; 776d: 21 48 00    .H.
	push	h		;; 7770: e5          .
	call	L90d9		;; 7771: cd d9 90    ...
	pop	h		;; 7774: e1          .
	pop	b		;; 7775: c1          .
	ret			;; 7776: c9          .

L7777:	pop	h		;; 7777: e1          .
	pop	b		;; 7778: c1          .
	xthl			;; 7779: e3          .
	push	h		;; 777a: e5          .
	mvi	m,000h		;; 777b: 36 00       6.
L777d:	push	h		;; 777d: e5          .
	push	b		;; 777e: c5          .
	call	L7aed		;; 777f: cd ed 7a    ..z
	pop	b		;; 7782: c1          .
	pop	h		;; 7783: e1          .
	liyd	L762e		;; 7784: fd 2a 2e 76 .*.v
	resy	4,+5		;; 7788: fd cb 05 a6 ....
	bity	1,+5		;; 778c: fd cb 05 4e ...N
	jrnz	L77a0		;; 7790: 20 0e        .
	ldy	a,+23		;; 7792: fd 7e 17    .~.
	inx	h		;; 7795: 23          #
	mov	m,a		;; 7796: 77          w
	xthl			;; 7797: e3          .
	inr	m		;; 7798: 34          4
	xthl			;; 7799: e3          .
	sety	4,+5		;; 779a: fd cb 05 e6 ....
	djnz	L777d		;; 779e: 10 dd       ..
L77a0:	pop	h		;; 77a0: e1          .
	ret			;; 77a1: c9          .

L77a2:	pop	h		;; 77a2: e1          .
	pop	psw		;; 77a3: f1          .
	ora	a		;; 77a4: b7          .
	jrz	L77ad		;; 77a5: 28 06       (.
	pop	b		;; 77a7: c1          .
	mvi	c,001h		;; 77a8: 0e 01       ..
	push	b		;; 77aa: c5          .
	jr	L77cb		;; 77ab: 18 1e       ..

L77ad:	mvi	a,001h		;; 77ad: 3e 01       >.
	push	psw		;; 77af: f5          .
	push	h		;; 77b0: e5          .
	mvi	a,057h		;; 77b1: 3e 57       >W
	mvi	c,002h		;; 77b3: 0e 02       ..
	call	L921e		;; 77b5: cd 1e 92    ...
	jr	L77a2		;; 77b8: 18 e8       ..

	pop	h		;; 77ba: e1          .
	pop	b		;; 77bb: c1          .
	mvi	c,001h		;; 77bc: 0e 01       ..
	push	b		;; 77be: c5          .
	mvi	a,001h		;; 77bf: 3e 01       >.
	jr	L77cb		;; 77c1: 18 08       ..

L77c3:	pop	h		;; 77c3: e1          .
	pop	psw		;; 77c4: f1          .
	pop	b		;; 77c5: c1          .
	push	b		;; 77c6: c5          .
	ora	a		;; 77c7: b7          .
	jrnz	L77cb		;; 77c8: 20 01        .
	mov	a,c		;; 77ca: 79          y
L77cb:	mov	b,a		;; 77cb: 47          G
	call	L7808		;; 77cc: cd 08 78    ..x
	push	h		;; 77cf: e5          .
	lxi	h,00002h	;; 77d0: 21 02 00    ...
	dad	sp		;; 77d3: 39          9
	mov	a,m		;; 77d4: 7e          ~
	ora	a		;; 77d5: b7          .
	jrz	L77e1		;; 77d6: 28 09       (.
L77d8:	inx	h		;; 77d8: 23          #
	mov	a,m		;; 77d9: 7e          ~
	call	L77f9		;; 77da: cd f9 77    ..w
	dcr	c		;; 77dd: 0d          .
	djnz	L77d8		;; 77de: 10 f8       ..
	dad	b		;; 77e0: 09          .
L77e1:	inx	h		;; 77e1: 23          #
	pop	d		;; 77e2: d1          .
	sphl			;; 77e3: f9          .
	xchg			;; 77e4: eb          .
	pchl			;; 77e5: e9          .

	pop	h		;; 77e6: e1          .
	pop	psw		;; 77e7: f1          .
	xthl			;; 77e8: e3          .
	mov	c,m		;; 77e9: 4e          N
	mov	b,a		;; 77ea: 47          G
	mov	a,m		;; 77eb: 7e          ~
	ora	a		;; 77ec: b7          .
	rz			;; 77ed: c8          .
	call	L7808		;; 77ee: cd 08 78    ..x
L77f1:	inx	h		;; 77f1: 23          #
	mov	a,m		;; 77f2: 7e          ~
	call	L77f9		;; 77f3: cd f9 77    ..w
	djnz	L77f1		;; 77f6: 10 f9       ..
	ret			;; 77f8: c9          .

L77f9:	push	h		;; 77f9: e5          .
	push	b		;; 77fa: c5          .
	liyd	L762e		;; 77fb: fd 2a 2e 76 .*.v
	sty	a,+23		;; 77ff: fd 77 17    .w.
	call	L7b7b		;; 7802: cd 7b 7b    .{{
	pop	b		;; 7805: c1          .
	pop	h		;; 7806: e1          .
	ret			;; 7807: c9          .

L7808:	mov	a,c		;; 7808: 79          y
	cmp	b		;; 7809: b8          .
	rnc			;; 780a: d0          .
	mvi	a,020h		;; 780b: 3e 20       > 
	call	L77f9		;; 780d: cd f9 77    ..w
	dcr	b		;; 7810: 05          .
	jr	L7808		;; 7811: 18 f5       ..

L7813:	pop	h		;; 7813: e1          .
	pop	b		;; 7814: c1          .
	pop	d		;; 7815: d1          .
	push	h		;; 7816: e5          .
	call	L7c4b		;; 7817: cd 4b 7c    .K|
	call	L7eb9		;; 781a: cd b9 7e    ..~
	popix			;; 781d: dd e1       ..
	ret			;; 781f: c9          .

L7820:	pop	h		;; 7820: e1          .
	shld	L91bd		;; 7821: 22 bd 91    "..
	mvi	a,003h		;; 7824: 3e 03       >.
	call	L8062		;; 7826: cd 62 80    .b.
	call	L8f18		;; 7829: cd 18 8f    ...
	push	h		;; 782c: e5          .
	xtix			;; 782d: dd e3       ..
	mvi	a,001h		;; 782f: 3e 01       >.
	call	L92ea		;; 7831: cd ea 92    ...
	setx	4,+4		;; 7834: dd cb 04 e6 ....
	pushix			;; 7838: dd e5       ..
	pop	h		;; 783a: e1          .
	lxi	d,00024h	;; 783b: 11 24 00    .$.
	dad	d		;; 783e: 19          .
	lda	0005ch		;; 783f: 3a 5c 00    :\.
	ora	a		;; 7842: b7          .
	jrz	L785c		;; 7843: 28 17       (.
	cmp	m		;; 7845: be          .
	jrz	L7860		;; 7846: 28 18       (.
	mov	d,a		;; 7848: 57          W
	mov	a,m		;; 7849: 7e          ~
	ora	a		;; 784a: b7          .
	jrnz	L789a		;; 784b: 20 4d        M
	push	d		;; 784d: d5          .
	push	h		;; 784e: e5          .
	mvi	c,019h		;; 784f: 0e 19       ..
	call	L91c3		;; 7851: cd c3 91    ...
	pop	h		;; 7854: e1          .
	pop	d		;; 7855: d1          .
	inr	a		;; 7856: 3c          <
	cmp	d		;; 7857: ba          .
	jrnz	L789a		;; 7858: 20 40        @
	jr	L7860		;; 785a: 18 04       ..

L785c:	mov	a,m		;; 785c: 7e          ~
	sta	0005ch		;; 785d: 32 5c 00    2\.
L7860:	push	h		;; 7860: e5          .
	lxi	d,0005ch	;; 7861: 11 5c 00    .\.
	mvi	c,013h		;; 7864: 0e 13       ..
	call	L91c3		;; 7866: cd c3 91    ...
	lxi	h,0005ch	;; 7869: 21 5c 00    .\.
	lxi	d,0006ch	;; 786c: 11 6c 00    .l.
	mvi	b,00ch		;; 786f: 06 0c       ..
L7871:	mov	a,m		;; 7871: 7e          ~
	stax	d		;; 7872: 12          .
	xthl			;; 7873: e3          .
	mov	c,m		;; 7874: 4e          N
	mov	m,a		;; 7875: 77          w
	inx	h		;; 7876: 23          #
	xthl			;; 7877: e3          .
	mov	m,c		;; 7878: 71          q
	inx	h		;; 7879: 23          #
	inx	d		;; 787a: 13          .
	djnz	L7871		;; 787b: 10 f4       ..
	pop	d		;; 787d: d1          .
	lxi	d,0005ch	;; 787e: 11 5c 00    .\.
	mvi	c,017h		;; 7881: 0e 17       ..
	call	L91c3		;; 7883: cd c3 91    ...
	inr	a		;; 7886: 3c          <
	jrz	L788f		;; 7887: 28 06       (.
L7889:	popix			;; 7889: dd e1       ..
	lhld	L91bd		;; 788b: 2a bd 91    *..
	pchl			;; 788e: e9          .

L788f:	lda	L8e6e		;; 788f: 3a 6e 8e    :n.
	cpi	001h		;; 7892: fe 01       ..
	jrz	L7889		;; 7894: 28 f3       (.
	mvi	a,044h		;; 7896: 3e 44       >D
	jr	L789c		;; 7898: 18 02       ..

L789a:	mvi	a,046h		;; 789a: 3e 46       >F
L789c:	mvi	b,00fh		;; 789c: 06 0f       ..
	mvi	c,005h		;; 789e: 0e 05       ..
	lxi	d,L78a6		;; 78a0: 11 a6 78    ..x
	call	L921e		;; 78a3: cd 1e 92    ...
L78a6:	db	'Error in RENAME'
L78b5:	db	0
L78b6:	mvi	a,016h		;; 78b6: 3e 16       >.
	jr	L78bc		;; 78b8: 18 02       ..

L78ba:	mvi	a,00bh		;; 78ba: 3e 0b       >.
L78bc:	sta	L78b5		;; 78bc: 32 b5 78    2.x
	pop	h		;; 78bf: e1          .
	shld	L91bd		;; 78c0: 22 bd 91    "..
	call	L8f18		;; 78c3: cd 18 8f    ...
	push	h		;; 78c6: e5          .
	xtix			;; 78c7: dd e3       ..
	rar			;; 78c9: 1f          .
	cc	L8107		;; 78ca: dc 07 81    ...
	mvi	a,001h		;; 78cd: 3e 01       >.
	call	L92ea		;; 78cf: cd ea 92    ...
	lda	L78b5		;; 78d2: 3a b5 78    :.x
	stx	a,+5		;; 78d5: dd 77 05    .w.
	ldx	l,+10		;; 78d8: dd 6e 0a    .n.
	ldx	h,+11		;; 78db: dd 66 0b    .f.
	call	L78e6		;; 78de: cd e6 78    ..x
	popix			;; 78e1: dd e1       ..
	lhld	L91bd		;; 78e3: 2a bd 91    *..
L78e6:	pchl			;; 78e6: e9          .

L78e7:	xra	a		;; 78e7: af          .
	jr	L78ec		;; 78e8: 18 02       ..

L78ea:	mvi	a,001h		;; 78ea: 3e 01       >.
L78ec:	pop	h		;; 78ec: e1          .
	shld	L91bd		;; 78ed: 22 bd 91    "..
	xthl			;; 78f0: e3          .
	push	h		;; 78f1: e5          .
	xtix			;; 78f2: dd e3       ..
	push	psw		;; 78f4: f5          .
	mov	a,h		;; 78f5: 7c          |
	ora	a		;; 78f6: b7          .
	jrz	L7919		;; 78f7: 28 20       ( 
	cmp	m		;; 78f9: be          .
	jrnz	L7919		;; 78fa: 20 1d        .
	inx	h		;; 78fc: 23          #
	mov	a,l		;; 78fd: 7d          }
	cmp	m		;; 78fe: be          .
	jrnz	L7919		;; 78ff: 20 18        .
	xra	a		;; 7901: af          .
	call	L92ea		;; 7902: cd ea 92    ...
	pop	psw		;; 7905: f1          .
	ora	a		;; 7906: b7          .
	jrz	L7916		;; 7907: 28 0d       (.
	pushix			;; 7909: dd e5       ..
	pop	h		;; 790b: e1          .
	lxi	d,00024h	;; 790c: 11 24 00    .$.
	dad	d		;; 790f: 19          .
	xchg			;; 7910: eb          .
	mvi	c,013h		;; 7911: 0e 13       ..
	call	L91c3		;; 7913: cd c3 91    ...
L7916:	popix			;; 7916: dd e1       ..
	ret			;; 7918: c9          .

L7919:	pop	psw		;; 7919: f1          .
	popix			;; 791a: dd e1       ..
	mvi	a,046h		;; 791c: 3e 46       >F
	mvi	b,00ch		;; 791e: 06 0c       ..
	mvi	c,003h		;; 7920: 0e 03       ..
	lxi	d,L7929		;; 7922: 11 29 79    .)y
	call	L921e		;; 7925: cd 1e 92    ...
	ret			;; 7928: c9          .

L7929:	db	'CLOSE/ERASE erro'
	db	'r'
L793a:	db	0
	xra	a		;; 793b: af          .
	jr	L7940		;; 793c: 18 02       ..

L793e:	mvi	a,001h		;; 793e: 3e 01       >.
L7940:	sta	L793a		;; 7940: 32 3a 79    2:y
	pop	h		;; 7943: e1          .
	shld	L91bd		;; 7944: 22 bd 91    "..
	mvi	a,001h		;; 7947: 3e 01       >.
	call	L8062		;; 7949: cd 62 80    .b.
	cpi	001h		;; 794c: fe 01       ..
	mvi	a,000h		;; 794e: 3e 00       >.
	jrnz	L7990		;; 7950: 20 3e        >
	lda	L793a		;; 7952: 3a 3a 79    ::y
	ora	a		;; 7955: b7          .
	jrz	L798e		;; 7956: 28 36       (6
	mvi	c,011h		;; 7958: 0e 11       ..
	lxi	d,0005ch	;; 795a: 11 5c 00    .\.
	call	L91c3		;; 795d: cd c3 91    ...
	inr	a		;; 7960: 3c          <
	jrnz	L798e		;; 7961: 20 2b        +
	lda	L8e6e		;; 7963: 3a 6e 8e    :n.
	cpi	020h		;; 7966: fe 20       . 
	mvi	a,000h		;; 7968: 3e 00       >.
	jrc	L7990		;; 796a: 38 24       8$
	mvi	c,020h		;; 796c: 0e 20       . 
	mvi	e,0ffh		;; 796e: 1e ff       ..
	call	L91c3		;; 7970: cd c3 91    ...
	ora	a		;; 7973: b7          .
	jrz	L7990		;; 7974: 28 1a       (.
	lxi	h,00062h	;; 7976: 21 62 00    .b.
	setb	7,m		;; 7979: cb fe       ..
	mvi	c,00fh		;; 797b: 0e 0f       ..
	lxi	d,0005ch	;; 797d: 11 5c 00    .\.
	call	L91c3		;; 7980: cd c3 91    ...
	inr	a		;; 7983: 3c          <
	jrz	L7990		;; 7984: 28 0a       (.
	mvi	c,010h		;; 7986: 0e 10       ..
	lxi	d,0005ch	;; 7988: 11 5c 00    .\.
	call	L91c3		;; 798b: cd c3 91    ...
L798e:	mvi	a,001h		;; 798e: 3e 01       >.
L7990:	lhld	L91bd		;; 7990: 2a bd 91    *..
	pchl			;; 7993: e9          .

L7994:	db	0
L7995:	pop	h		;; 7995: e1          .
	shld	L91bd		;; 7996: 22 bd 91    "..
	mvi	a,002h		;; 7999: 3e 02       >.
	call	L8062		;; 799b: cd 62 80    .b.
	sta	L7994		;; 799e: 32 94 79    2.y
	call	L8f18		;; 79a1: cd 18 8f    ...
	push	h		;; 79a4: e5          .
	xtix			;; 79a5: dd e3       ..
	xra	a		;; 79a7: af          .
	call	L92ea		;; 79a8: cd ea 92    ...
	resx	5,+4		;; 79ab: dd cb 04 ae ....
	lda	L7994		;; 79af: 3a 94 79    :.y
	cpi	002h		;; 79b2: fe 02       ..
	jrz	L79d3		;; 79b4: 28 1d       (.
	call	L8107		;; 79b6: cd 07 81    ...
	pushix			;; 79b9: dd e5       ..
	pop	h		;; 79bb: e1          .
	lxi	d,00024h	;; 79bc: 11 24 00    .$.
	dad	d		;; 79bf: 19          .
	xchg			;; 79c0: eb          .
	lxi	h,0005ch	;; 79c1: 21 5c 00    .\.
	lxi	b,0000ch	;; 79c4: 01 0c 00    ...
	ldir			;; 79c7: ed b0       ..
	setx	4,+4		;; 79c9: dd cb 04 e6 ....
	popix			;; 79cd: dd e1       ..
	lhld	L91bd		;; 79cf: 2a bd 91    *..
	pchl			;; 79d2: e9          .

L79d3:	resx	3,+4		;; 79d3: dd cb 04 9e ....
	lda	0005dh		;; 79d7: 3a 5d 00    :].
	lxi	h,L7a4a		;; 79da: 21 4a 7a    .Jz
	lxi	d,00009h	;; 79dd: 11 09 00    ...
	mvi	b,006h		;; 79e0: 06 06       ..
L79e2:	cmp	m		;; 79e2: be          .
	jrz	L7a03		;; 79e3: 28 1e       (.
	dad	d		;; 79e5: 19          .
	djnz	L79e2		;; 79e6: 10 fa       ..
L79e8:	mvi	a,04eh		;; 79e8: 3e 4e       >N
	mvi	b,00fh		;; 79ea: 06 0f       ..
	mvi	c,005h		;; 79ec: 0e 05       ..
	lxi	d,L79f4		;; 79ee: 11 f4 79    ..y
	call	L921e		;; 79f1: cd 1e 92    ...
L79f4:	db	'Bad device name'
L7a03:	db	':^',0
	inx	h		;; 7a06: 23          #
	cmp	m		;; 7a07: be          .
	jrnz	L79e8		;; 7a08: 20 de        .
	lda	0005fh		;; 7a0a: 3a 5f 00    :_.
	inx	h		;; 7a0d: 23          #
	cmp	m		;; 7a0e: be          .
	jrnz	L79e8		;; 7a0f: 20 d7        .
	inx	h		;; 7a11: 23          #
	xchg			;; 7a12: eb          .
	pushix			;; 7a13: dd e5       ..
	pop	h		;; 7a15: e1          .
	lxi	b,00006h	;; 7a16: 01 06 00    ...
	dad	b		;; 7a19: 09          .
	xchg			;; 7a1a: eb          .
	lxi	b,00006h	;; 7a1b: 01 06 00    ...
	ldir			;; 7a1e: ed b0       ..
	xchg			;; 7a20: eb          .
	lxi	d,L7aa7		;; 7a21: 11 a7 7a    ..z
	mov	m,e		;; 7a24: 73          s
	inx	h		;; 7a25: 23          #
	mov	m,d		;; 7a26: 72          r
	bitx	0,+4		;; 7a27: dd cb 04 46 ...F
	jrnz	L7a44		;; 7a2b: 20 17        .
	ldx	a,+24		;; 7a2d: dd 7e 18    .~.
	sui	001h		;; 7a30: d6 01       ..
	orax	+25		;; 7a32: dd b6 19    ...
	jrnz	L7a80		;; 7a35: 20 49        I
	pushix			;; 7a37: dd e5       ..
	pop	h		;; 7a39: e1          .
	lxi	d,00017h	;; 7a3a: 11 17 00    ...
	dad	d		;; 7a3d: 19          .
	stx	l,+16		;; 7a3e: dd 75 10    .u.
	stx	h,+17		;; 7a41: dd 74 11    .t.
L7a44:	popix			;; 7a44: dd e1       ..
	lhld	L91bd		;; 7a46: 2a bd 91    *..
	pchl			;; 7a49: e9          .

L7a4a:	db	'CON'
	dw	L8fc0
	dw	L8ffc
	dw	L7a98
	db	'KBD'
	dw	L7abe
	dw	L7a80
	dw	L7aa7
	db	'LST'
	dw	L7a80
	dw	L7ad9
	dw	L7aa7
	db	'NUL'
	dw	L7a80
	dw	L7aa7
	dw	L7aa7
	db	'PUN'
	dw	L7a80
	dw	L7ad2
	dw	L7aa7
	db	'RDR'
	dw	L7ac9
	dw	L7a80
	dw	L7aa7
L7a80:	mvi	a,044h		;; 7a80: 3e 44       >D
	lxi	d,L7a8c		;; 7a82: 11 8c 7a    ..z
	mvi	b,00ch		;; 7a85: 06 0c       ..
	mvi	c,005h		;; 7a87: 0e 05       ..
	call	L921e		;; 7a89: cd 1e 92    ...
L7a8c:	db	'Device error'
L7a98:	bitx	0,+4		;; 7a98: dd cb 04 46 ...F
	rnz			;; 7a9c: c0          .
	lxi	h,L7aa8		;; 7a9d: 21 a8 7a    ..z
	stx	l,+6		;; 7aa0: dd 75 06    .u.
	stx	h,+7		;; 7aa3: dd 74 07    .t.
	ret			;; 7aa6: c9          .

L7aa7:	ret			;; 7aa7: c9          .

L7aa8:	mvi	c,001h		;; 7aa8: 0e 01       ..
	call	L91c3		;; 7aaa: cd c3 91    ...
	stx	a,+23		;; 7aad: dd 77 17    .w.
	cpi	003h		;; 7ab0: fe 03       ..
	jz	00000h		;; 7ab2: ca 00 00    ...
	cpi	00dh		;; 7ab5: fe 0d       ..
	rnz			;; 7ab7: c0          .
	mvi	e,00ah		;; 7ab8: 1e 0a       ..
	mvi	c,002h		;; 7aba: 0e 02       ..
	jr	L7ade		;; 7abc: 18 20       . 

L7abe:	mvi	c,006h		;; 7abe: 0e 06       ..
	mvi	e,0ffh		;; 7ac0: 1e ff       ..
	call	L91c3		;; 7ac2: cd c3 91    ...
	stx	a,+23		;; 7ac5: dd 77 17    .w.
	ret			;; 7ac8: c9          .

L7ac9:	mvi	c,003h		;; 7ac9: 0e 03       ..
	call	L91c3		;; 7acb: cd c3 91    ...
	stx	a,+23		;; 7ace: dd 77 17    .w.
	ret			;; 7ad1: c9          .

L7ad2:	mvi	c,004h		;; 7ad2: 0e 04       ..
	ldx	e,+23		;; 7ad4: dd 5e 17    .^.
	jr	L7ade		;; 7ad7: 18 05       ..

L7ad9:	mvi	c,005h		;; 7ad9: 0e 05       ..
	ldx	e,+23		;; 7adb: dd 5e 17    .^.
L7ade:	call	L91c3		;; 7ade: cd c3 91    ...
	ret			;; 7ae1: c9          .

L7ae2:	mvi	d,000h		;; 7ae2: 16 00       ..
	pushix			;; 7ae4: dd e5       ..
	pop	h		;; 7ae6: e1          .
	dad	d		;; 7ae7: 19          .
	mov	e,m		;; 7ae8: 5e          ^
	inx	h		;; 7ae9: 23          #
	mov	d,m		;; 7aea: 56          V
	xchg			;; 7aeb: eb          .
L7aec:	pchl			;; 7aec: e9          .

L7aed:	lhld	L762e		;; 7aed: 2a 2e 76    *.v
	push	h		;; 7af0: e5          .
	xtix			;; 7af1: dd e3       ..
	jr	L7af8		;; 7af3: 18 03       ..

	call	L7c4b		;; 7af5: cd 4b 7c    .K|
L7af8:	call	L7b14		;; 7af8: cd 14 7b    ..{
	call	L7c63		;; 7afb: cd 63 7c    .c|
	setx	4,+5		;; 7afe: dd cb 05 e6 ....
	popix			;; 7b02: dd e1       ..
	ret			;; 7b04: c9          .

L7b05:	ldx	a,+5		;; 7b05: dd 7e 05    .~.
	ani	00ch		;; 7b08: e6 0c       ..
	jz	L7c81		;; 7b0a: ca 81 7c    ..|
	bitx	4,+5		;; 7b0d: dd cb 05 66 ...f
	rz			;; 7b11: c8          .
	jr	L7b1f		;; 7b12: 18 0b       ..

L7b14:	ldx	a,+5		;; 7b14: dd 7e 05    .~.
	bit	2,a		;; 7b17: cb 57       .W
	jz	L7c7d		;; 7b19: ca 7d 7c    .}|
	bit	4,a		;; 7b1c: cb 67       .g
	rz			;; 7b1e: c8          .
L7b1f:	bitx	6,+5		;; 7b1f: dd cb 05 76 ...v
	jrnz	L7b72		;; 7b23: 20 4d        M
	ldx	l,+6		;; 7b25: dd 6e 06    .n.
	ldx	h,+7		;; 7b28: dd 66 07    .f.
	call	L7aec		;; 7b2b: cd ec 7a    ..z
	resx	4,+5		;; 7b2e: dd cb 05 a6 ....
	bitx	0,+4		;; 7b32: dd cb 04 46 ...F
	rz			;; 7b36: c8          .
	ldx	a,+23		;; 7b37: dd 7e 17    .~.
	cpi	01ah		;; 7b3a: fe 1a       ..
	jrz	L7b68		;; 7b3c: 28 2a       (*
	cpi	00ah		;; 7b3e: fe 0a       ..
	jrz	L7b4e		;; 7b40: 28 0c       (.
	resx	1,+5		;; 7b42: dd cb 05 8e ....
	cpi	00dh		;; 7b46: fe 0d       ..
	rnz			;; 7b48: c0          .
	stx	a,+26		;; 7b49: dd 77 1a    .w.
	jr	L7b5f		;; 7b4c: 18 11       ..

L7b4e:	bitx	1,+5		;; 7b4e: dd cb 05 4e ...N
	jrz	L7b5f		;; 7b52: 28 0b       (.
	ldx	a,+26		;; 7b54: dd 7e 1a    .~.
	cpi	00dh		;; 7b57: fe 0d       ..
	jrz	L7b1f		;; 7b59: 28 c4       (.
	mvix	00ah,+26	;; 7b5b: dd 36 1a 0a .6..
L7b5f:	mvix	020h,+23	;; 7b5f: dd 36 17 20 .6. 
	setx	1,+5		;; 7b63: dd cb 05 ce ....
	ret			;; 7b67: c9          .

L7b68:	setx	6,+5		;; 7b68: dd cb 05 f6 ....
	bitx	1,+5		;; 7b6c: dd cb 05 4e ...N
	jrz	L7b5f		;; 7b70: 28 ed       (.
L7b72:	resx	6,+5		;; 7b72: dd cb 05 b6 ....
	setx	0,+5		;; 7b76: dd cb 05 c6 ....
	ret			;; 7b7a: c9          .

L7b7b:	lhld	L762e		;; 7b7b: 2a 2e 76    *.v
	push	h		;; 7b7e: e5          .
	xtix			;; 7b7f: dd e3       ..
	jr	L7b86		;; 7b81: 18 03       ..

	call	L7c4b		;; 7b83: cd 4b 7c    .K|
L7b86:	call	L7c88		;; 7b86: cd 88 7c    ..|
	ldx	l,+8		;; 7b89: dd 6e 08    .n.
	ldx	h,+9		;; 7b8c: dd 66 09    .f.
	call	L7aec		;; 7b8f: cd ec 7a    ..z
	resx	1,+5		;; 7b92: dd cb 05 8e ....
	popix			;; 7b96: dd e1       ..
	ret			;; 7b98: c9          .

	lhld	L0103		;; 7b99: 2a 03 01    *..
	push	h		;; 7b9c: e5          .
	xtix			;; 7b9d: dd e3       ..
	jr	L7ba4		;; 7b9f: 18 03       ..

L7ba1:	call	L7c4b		;; 7ba1: cd 4b 7c    .K|
L7ba4:	call	L7b05		;; 7ba4: cd 05 7b    ..{
	ldx	a,+5		;; 7ba7: dd 7e 05    .~.
	ani	001h		;; 7baa: e6 01       ..
	popix			;; 7bac: dd e1       ..
	ret			;; 7bae: c9          .

	lhld	L0103		;; 7baf: 2a 03 01    *..
	push	h		;; 7bb2: e5          .
	xtix			;; 7bb3: dd e3       ..
	jr	L7bba		;; 7bb5: 18 03       ..

L7bb7:	call	L7c4b		;; 7bb7: cd 4b 7c    .K|
L7bba:	call	L7b05		;; 7bba: cd 05 7b    ..{
	bitx	0,+5		;; 7bbd: dd cb 05 46 ...F
	jnz	L7c6c		;; 7bc1: c2 6c 7c    .l|
	ldx	a,+5		;; 7bc4: dd 7e 05    .~.
	rar			;; 7bc7: 1f          .
	ani	001h		;; 7bc8: e6 01       ..
	popix			;; 7bca: dd e1       ..
	ret			;; 7bcc: c9          .

	lhld	L0105		;; 7bcd: 2a 05 01    *..
	push	h		;; 7bd0: e5          .
	xtix			;; 7bd1: dd e3       ..
	jr	L7bd8		;; 7bd3: 18 03       ..

	call	L7c4b		;; 7bd5: cd 4b 7c    .K|
L7bd8:	call	L7c88		;; 7bd8: cd 88 7c    ..|
	mvix	00dh,+23	;; 7bdb: dd 36 17 0d .6..
	mvi	e,008h		;; 7bdf: 1e 08       ..
	call	L7ae2		;; 7be1: cd e2 7a    ..z
	mvix	00ch,+23	;; 7be4: dd 36 17 0c .6..
	mvi	e,008h		;; 7be8: 1e 08       ..
	call	L7ae2		;; 7bea: cd e2 7a    ..z
	setx	1,+5		;; 7bed: dd cb 05 ce ....
	popix			;; 7bf1: dd e1       ..
	ret			;; 7bf3: c9          .

L7bf4:	lhld	L762e		;; 7bf4: 2a 2e 76    *.v
	push	h		;; 7bf7: e5          .
	xtix			;; 7bf8: dd e3       ..
	jr	L7bff		;; 7bfa: 18 03       ..

	call	L7c4b		;; 7bfc: cd 4b 7c    .K|
L7bff:	call	L7b05		;; 7bff: cd 05 7b    ..{
	ldx	l,+16		;; 7c02: dd 6e 10    .n.
	ldx	h,+17		;; 7c05: dd 66 11    .f.
	popix			;; 7c08: dd e1       ..
	ret			;; 7c0a: c9          .

L7c0b:	lhld	L762e		;; 7c0b: 2a 2e 76    *.v
	push	h		;; 7c0e: e5          .
	xtix			;; 7c0f: dd e3       ..
	call	L7b14		;; 7c11: cd 14 7b    ..{
L7c14:	call	L7c63		;; 7c14: cd 63 7c    .c|
	bitx	1,+5		;; 7c17: dd cb 05 4e ...N
	jrnz	L7c22		;; 7c1b: 20 05        .
	call	L7b1f		;; 7c1d: cd 1f 7b    ..{
	jr	L7c14		;; 7c20: 18 f2       ..

L7c22:	setx	4,+5		;; 7c22: dd cb 05 e6 ....
	popix			;; 7c26: dd e1       ..
	ret			;; 7c28: c9          .

L7c29:	lhld	L762e		;; 7c29: 2a 2e 76    *.v
	push	h		;; 7c2c: e5          .
	xtix			;; 7c2d: dd e3       ..
	call	L7c88		;; 7c2f: cd 88 7c    ..|
	mvix	00dh,+23	;; 7c32: dd 36 17 0d .6..
	mvi	e,008h		;; 7c36: 1e 08       ..
	call	L7ae2		;; 7c38: cd e2 7a    ..z
	mvix	00ah,+23	;; 7c3b: dd 36 17 0a .6..
	mvi	e,008h		;; 7c3f: 1e 08       ..
	call	L7ae2		;; 7c41: cd e2 7a    ..z
	setx	1,+5		;; 7c44: dd cb 05 ce ....
	popix			;; 7c48: dd e1       ..
	ret			;; 7c4a: c9          .

L7c4b:	popiy			;; 7c4b: fd e1       ..
	pop	h		;; 7c4d: e1          .
	shld	L91bd		;; 7c4e: 22 bd 91    "..
	xthl			;; 7c51: e3          .
	push	h		;; 7c52: e5          .
	xtix			;; 7c53: dd e3       ..
	mov	a,h		;; 7c55: 7c          |
	ora	a		;; 7c56: b7          .
	jrz	L7c81		;; 7c57: 28 28       ((
	cmp	m		;; 7c59: be          .
	jrnz	L7c81		;; 7c5a: 20 25        %
	inx	h		;; 7c5c: 23          #
	mov	a,l		;; 7c5d: 7d          }
	cmp	m		;; 7c5e: be          .
	jrnz	L7c81		;; 7c5f: 20 20         
	pciy			;; 7c61: fd e9       ..

L7c63:	bitx	0,+5		;; 7c63: dd cb 05 46 ...F
	rz			;; 7c67: c8          .
	mvi	c,005h		;; 7c68: 0e 05       ..
	jr	L7c6e		;; 7c6a: 18 02       ..

L7c6c:	mvi	c,007h		;; 7c6c: 0e 07       ..
L7c6e:	popix			;; 7c6e: dd e1       ..
	mvi	a,046h		;; 7c70: 3e 46       >F
	mvi	b,00eh		;; 7c72: 06 0e       ..
	lxi	d,L7c9b		;; 7c74: 11 9b 7c    ..|
	call	L921e		;; 7c77: cd 1e 92    ...
	mvi	a,001h		;; 7c7a: 3e 01       >.
	ret			;; 7c7c: c9          .

L7c7d:	mvi	b,008h		;; 7c7d: 06 08       ..
	jr	L7c83		;; 7c7f: 18 02       ..

L7c81:	mvi	b,010h		;; 7c81: 06 10       ..
L7c83:	lxi	d,L7ca9		;; 7c83: 11 a9 7c    ..|
	jr	L7c92		;; 7c86: 18 0a       ..

L7c88:	bitx	3,+5		;; 7c88: dd cb 05 5e ...^
	rnz			;; 7c8c: c0          .
	lxi	d,L7cb9		;; 7c8d: 11 b9 7c    ..|
	mvi	b,00ah		;; 7c90: 06 0a       ..
L7c92:	mvi	a,046h		;; 7c92: 3e 46       >F
	mvi	c,005h		;; 7c94: 0e 05       ..
	popix			;; 7c96: dd e1       ..
	jmp	L921e		;; 7c98: c3 1e 92    ...

L7c9b:	db	'At end-of-file'
L7ca9:	db	'No reset/rewrite'
L7cb9:	db	'No rewrite'
L7cc3:	pushix			;; 7cc3: dd e5       ..
	xthl			;; 7cc5: e3          .
	lxi	d,00024h	;; 7cc6: 11 24 00    .$.
	dad	d		;; 7cc9: 19          .
	xchg			;; 7cca: eb          .
	pop	h		;; 7ccb: e1          .
	ret			;; 7ccc: c9          .

L7ccd:	ldx	e,+18		;; 7ccd: dd 5e 12    .^.
	ldx	d,+19		;; 7cd0: dd 56 13    .V.
	push	d		;; 7cd3: d5          .
	popiy			;; 7cd4: fd e1       ..
	ret			;; 7cd6: c9          .

L7cd7:	ldx	l,+28		;; 7cd7: dd 6e 1c    .n.
	ldx	c,+26		;; 7cda: dd 4e 1a    .N.
	ldx	b,+27		;; 7cdd: dd 46 1b    .F.
	ret			;; 7ce0: c9          .

L7ce1:	ldx	l,+71		;; 7ce1: dd 6e 47    .nG
	ldx	c,+69		;; 7ce4: dd 4e 45    .NE
	ldx	b,+70		;; 7ce7: dd 46 46    .FF
	ret			;; 7cea: c9          .

L7ceb:	stx	l,+28		;; 7ceb: dd 75 1c    .u.
	stx	c,+26		;; 7cee: dd 71 1a    .q.
	stx	b,+27		;; 7cf1: dd 70 1b    .p.
	ret			;; 7cf4: c9          .

L7cf5:	stx	l,+31		;; 7cf5: dd 75 1f    .u.
	stx	c,+29		;; 7cf8: dd 71 1d    .q.
	stx	b,+30		;; 7cfb: dd 70 1e    .p.
	ret			;; 7cfe: c9          .

L7cff:	mov	a,c		;; 7cff: 79          y
	cmpx	+26		;; 7d00: dd be 1a    ...
	rnz			;; 7d03: c0          .
	mov	a,b		;; 7d04: 78          x
	cmpx	+27		;; 7d05: dd be 1b    ...
	rnz			;; 7d08: c0          .
	mov	a,l		;; 7d09: 7d          }
	cmpx	+28		;; 7d0a: dd be 1c    ...
	ret			;; 7d0d: c9          .

L7d0e:	ldx	l,+16		;; 7d0e: dd 6e 10    .n.
	ldx	h,+17		;; 7d11: dd 66 11    .f.
	ldx	e,+24		;; 7d14: dd 5e 18    .^.
	mvi	d,000h		;; 7d17: 16 00       ..
	dad	d		;; 7d19: 19          .
	stx	l,+16		;; 7d1a: dd 75 10    .u.
	stx	h,+17		;; 7d1d: dd 74 11    .t.
	inrx	+22		;; 7d20: dd 34 16    .4.
	ret			;; 7d23: c9          .

L7d24:	mov	a,l		;; 7d24: 7d          }
	cmpx	+31		;; 7d25: dd be 1f    ...
	rnz			;; 7d28: c0          .
	mov	a,b		;; 7d29: 78          x
	cmpx	+30		;; 7d2a: dd be 1e    ...
	rnz			;; 7d2d: c0          .
	mov	a,c		;; 7d2e: 79          y
	cmpx	+29		;; 7d2f: dd be 1d    ...
	ret			;; 7d32: c9          .

L7d33:	resx	0,+5		;; 7d33: dd cb 05 86 ....
	ldx	a,+22		;; 7d37: dd 7e 16    .~.
	call	L7ccd		;; 7d3a: cd cd 7c    ..|
	cmpy	+127		;; 7d3d: fd be 7f    ...
	rc			;; 7d40: d8          .
	call	L7cd7		;; 7d41: cd d7 7c    ..|
	inr	c		;; 7d44: 0c          .
	jrnz	L7d4b		;; 7d45: 20 04        .
	inr	b		;; 7d47: 04          .
	jrnz	L7d4b		;; 7d48: 20 01        .
	inr	l		;; 7d4a: 2c          ,
L7d4b:	call	L7d24		;; 7d4b: cd 24 7d    .$}
	rc			;; 7d4e: d8          .
	setx	0,+5		;; 7d4f: dd cb 05 c6 ....
	ret			;; 7d53: c9          .

L7d54:	ldx	a,+26		;; 7d54: dd 7e 1a    .~.
	addx	+20		;; 7d57: dd 86 14    ...
	stx	a,+26		;; 7d5a: dd 77 1a    .w.
	rnc			;; 7d5d: d0          .
	inrx	+27		;; 7d5e: dd 34 1b    .4.
	rnz			;; 7d61: c0          .
	inrx	+28		;; 7d62: dd 34 1c    .4.
	ret			;; 7d65: c9          .

L7d66:	lda	L8e6e		;; 7d66: 3a 6e 8e    :n.
	cpi	002h		;; 7d69: fe 02       ..
	jrnz	L7d7c		;; 7d6b: 20 0f        .
	call	L7cc3		;; 7d6d: cd c3 7c    ..|
	mvi	c,023h		;; 7d70: 0e 23       .#
	call	L91c3		;; 7d72: cd c3 91    ...
	call	L7ce1		;; 7d75: cd e1 7c    ..|
	call	L7cf5		;; 7d78: cd f5 7c    ..|
	ret			;; 7d7b: c9          .

L7d7c:	call	L7cc3		;; 7d7c: cd c3 7c    ..|
	mvi	c,010h		;; 7d7f: 0e 10       ..
	call	L91c3		;; 7d81: cd c3 91    ...
L7d84:	ldx	h,+48		;; 7d84: dd 66 30    .f0
	mvi	l,000h		;; 7d87: 2e 00       ..
	srlr	h		;; 7d89: cb 3c       .<
	rarr	l		;; 7d8b: cb 1d       ..
	mvi	b,000h		;; 7d8d: 06 00       ..
	ldx	c,+51		;; 7d8f: dd 4e 33    .N3
	dad	b		;; 7d92: 09          .
	stx	l,+29		;; 7d93: dd 75 1d    .u.
	stx	h,+30		;; 7d96: dd 74 1e    .t.
	mvix	000h,+31	;; 7d99: dd 36 1f 00 .6..
	inrx	+48		;; 7d9d: dd 34 30    .40
	call	L7cc3		;; 7da0: cd c3 7c    ..|
	mvi	c,00fh		;; 7da3: 0e 0f       ..
	call	L91c3		;; 7da5: cd c3 91    ...
	inr	a		;; 7da8: 3c          <
	jrz	L7dba		;; 7da9: 28 0f       (.
	mvix	000h,+68	;; 7dab: dd 36 44 00 .6D.
	call	L7cc3		;; 7daf: cd c3 7c    ..|
	mvi	c,014h		;; 7db2: 0e 14       ..
	call	L91c3		;; 7db4: cd c3 91    ...
	ora	a		;; 7db7: b7          .
	jrz	L7d84		;; 7db8: 28 ca       (.
L7dba:	mvix	000h,+48	;; 7dba: dd 36 30 00 .60.
	call	L7cc3		;; 7dbe: cd c3 7c    ..|
	mvi	c,00fh		;; 7dc1: 0e 0f       ..
	call	L91c3		;; 7dc3: cd c3 91    ...
	ret			;; 7dc6: c9          .

L7dc7:	ldx	l,+26		;; 7dc7: dd 6e 1a    .n.
	ldx	h,+27		;; 7dca: dd 66 1b    .f.
	dad	h		;; 7dcd: 29          )
	srlr	l		;; 7dce: cb 3d       .=
	stx	l,+68		;; 7dd0: dd 75 44    .uD
	mov	a,h		;; 7dd3: 7c          |
	subx	+48		;; 7dd4: dd 96 30    ..0
	rz			;; 7dd7: c8          .
	push	h		;; 7dd8: e5          .
	mvi	c,010h		;; 7dd9: 0e 10       ..
	call	L7cc3		;; 7ddb: cd c3 7c    ..|
	bitx	3,+5		;; 7dde: dd cb 05 5e ...^
	cnz	L91c3		;; 7de2: c4 c3 91    ...
	pop	h		;; 7de5: e1          .
	stx	h,+48		;; 7de6: dd 74 30    .t0
	call	L7cc3		;; 7de9: cd c3 7c    ..|
	mvi	c,00fh		;; 7dec: 0e 0f       ..
	call	L91c3		;; 7dee: cd c3 91    ...
	ret			;; 7df1: c9          .

L7df2:	mov	a,c		;; 7df2: 79          y
	call	L7cd7		;; 7df3: cd d7 7c    ..|
	stx	c,+69		;; 7df6: dd 71 45    .qE
	stx	b,+70		;; 7df9: dd 70 46    .pF
	stx	l,+71		;; 7dfc: dd 75 47    .uG
	ldx	b,+20		;; 7dff: dd 46 14    .F.
	mov	c,a		;; 7e02: 4f          O
	call	L7ccd		;; 7e03: cd cd 7c    ..|
L7e06:	push	d		;; 7e06: d5          .
	push	b		;; 7e07: c5          .
	mvi	c,01ah		;; 7e08: 0e 1a       ..
	call	L91c3		;; 7e0a: cd c3 91    ...
	call	L7cc3		;; 7e0d: cd c3 7c    ..|
	pop	b		;; 7e10: c1          .
	push	b		;; 7e11: c5          .
	call	L91c3		;; 7e12: cd c3 91    ...
	pop	b		;; 7e15: c1          .
	pop	d		;; 7e16: d1          .
	ora	a		;; 7e17: b7          .
	jrnz	L7e2e		;; 7e18: 20 14        .
	lxi	h,00080h	;; 7e1a: 21 80 00    ...
	dad	d		;; 7e1d: 19          .
	xchg			;; 7e1e: eb          .
	inrx	+69		;; 7e1f: dd 34 45    .4E
	jrnz	L7e2c		;; 7e22: 20 08        .
	inrx	+70		;; 7e24: dd 34 46    .4F
	jrnz	L7e2c		;; 7e27: 20 03        .
	inrx	+71		;; 7e29: dd 34 47    .4G
L7e2c:	djnz	L7e06		;; 7e2c: 10 d8       ..
L7e2e:	push	psw		;; 7e2e: f5          .
	lxi	d,00080h	;; 7e2f: 11 80 00    ...
	mvi	c,01ah		;; 7e32: 0e 1a       ..
	call	L91c3		;; 7e34: cd c3 91    ...
	pop	psw		;; 7e37: f1          .
	ret			;; 7e38: c9          .

L7e39:	call	L7ccd		;; 7e39: cd cd 7c    ..|
	stx	e,+16		;; 7e3c: dd 73 10    .s.
	stx	d,+17		;; 7e3f: dd 72 11    .r.
	call	L7cd7		;; 7e42: cd d7 7c    ..|
	call	L7d24		;; 7e45: cd 24 7d    .$}
	setx	0,+5		;; 7e48: dd cb 05 c6 ....
	jrnc	L7e68		;; 7e4c: 30 1a       0.
	resx	0,+5		;; 7e4e: dd cb 05 86 ....
	lda	L8e6e		;; 7e52: 3a 6e 8e    :n.
	mvi	c,021h		;; 7e55: 0e 21       ..
	cpi	002h		;; 7e57: fe 02       ..
	jrnc	L7e63		;; 7e59: 30 08       0.
	call	L7dc7		;; 7e5b: cd c7 7d    ..}
	inr	a		;; 7e5e: 3c          <
	jrz	L7e68		;; 7e5f: 28 07       (.
	mvi	c,014h		;; 7e61: 0e 14       ..
L7e63:	call	L7df2		;; 7e63: cd f2 7d    ..}
	ora	a		;; 7e66: b7          .
	rz			;; 7e67: c8          .
L7e68:	mvi	a,001h		;; 7e68: 3e 01       >.
	ret			;; 7e6a: c9          .

L7e6b:	call	L7e39		;; 7e6b: cd 39 7e    .9~
	mvix	000h,+22	;; 7e6e: dd 36 16 00 .6..
	ora	a		;; 7e72: b7          .
	rz			;; 7e73: c8          .
	call	L7ccd		;; 7e74: cd cd 7c    ..|
	ldx	a,+24		;; 7e77: dd 7e 18    .~.
	sty	a,+126		;; 7e7a: fd 77 7e    .w~
	mviy	000h,+127	;; 7e7d: fd 36 7f 00 .6..
	resx	3,+23		;; 7e81: dd cb 17 9e ....
	ret			;; 7e85: c9          .

L7e86:	lda	L8e6e		;; 7e86: 3a 6e 8e    :n.
	mvi	c,022h		;; 7e89: 0e 22       ."
	cpi	002h		;; 7e8b: fe 02       ..
	jrnc	L7ea3		;; 7e8d: 30 14       0.
	call	L7dc7		;; 7e8f: cd c7 7d    ..}
	inr	a		;; 7e92: 3c          <
	jrnz	L7ea1		;; 7e93: 20 0c        .
	call	L7cc3		;; 7e95: cd c3 7c    ..|
	mvi	c,016h		;; 7e98: 0e 16       ..
	call	L91c3		;; 7e9a: cd c3 91    ...
	inr	a		;; 7e9d: 3c          <
	jz	L8020		;; 7e9e: ca 20 80    . .
L7ea1:	mvi	c,015h		;; 7ea1: 0e 15       ..
L7ea3:	call	L7df2		;; 7ea3: cd f2 7d    ..}
	ora	a		;; 7ea6: b7          .
	jnz	L8020		;; 7ea7: c2 20 80    . .
	resx	3,+23		;; 7eaa: dd cb 17 9e ....
	call	L7ce1		;; 7eae: cd e1 7c    ..|
	call	L7d24		;; 7eb1: cd 24 7d    .$}
	rc			;; 7eb4: d8          .
	call	L7cf5		;; 7eb5: cd f5 7c    ..|
	ret			;; 7eb8: c9          .

L7eb9:	bitx	1,+23		;; 7eb9: dd cb 17 4e ...N
	jrnz	L7f03		;; 7ebd: 20 44        D
	bitx	3,+4		;; 7ebf: dd cb 04 5e ...^
	jz	L802b		;; 7ec3: ca 2b 80    .+.
	push	d		;; 7ec6: d5          .
	push	b		;; 7ec7: c5          .
	call	L7d66		;; 7ec8: cd 66 7d    .f}
	mvix	000h,+23	;; 7ecb: dd 36 17 00 .6..
	lxi	b,L7f96		;; 7ecf: 01 96 7f    ...
	lxi	d,L7f93		;; 7ed2: 11 93 7f    ...
	lxi	h,L7ff8		;; 7ed5: 21 f8 7f    ...
	bitx	6,+4		;; 7ed8: dd cb 04 76 ...v
	jrz	L7ee7		;; 7edc: 28 09       (.
	lxi	b,L7f9d		;; 7ede: 01 9d 7f    ...
	lxi	d,L7fac		;; 7ee1: 11 ac 7f    ...
	lxi	h,L7fe9		;; 7ee4: 21 e9 7f    ...
L7ee7:	stx	c,+6		;; 7ee7: dd 71 06    .q.
	stx	b,+7		;; 7eea: dd 70 07    .p.
	stx	e,+8		;; 7eed: dd 73 08    .s.
	stx	d,+9		;; 7ef0: dd 72 09    .r.
	stx	l,+12		;; 7ef3: dd 75 0c    .u.
	stx	h,+13		;; 7ef6: dd 74 0d    .t.
	pop	b		;; 7ef9: c1          .
	pop	d		;; 7efa: d1          .
	mvix	0ffh,+28	;; 7efb: dd 36 1c ff .6..
	setx	1,+23		;; 7eff: dd cb 17 ce ....
L7f03:	bit	7,d		;; 7f03: cb 7a       .z
	jrz	L7f0d		;; 7f05: 28 06       (.
	call	L8013		;; 7f07: cd 13 80    ...
	lxi	d,00000h	;; 7f0a: 11 00 00    ...
L7f0d:	push	d		;; 7f0d: d5          .
	push	b		;; 7f0e: c5          .
	bitx	6,+4		;; 7f0f: dd cb 04 76 ...v
	jrnz	L7f33		;; 7f13: 20 1e        .
	ldx	c,+20		;; 7f15: dd 4e 14    .N.
	mvi	b,000h		;; 7f18: 06 00       ..
	mov	h,b		;; 7f1a: 60          `
	mov	l,b		;; 7f1b: 68          h
	call	L8636		;; 7f1c: cd 36 86    .6.
	mov	a,l		;; 7f1f: 7d          }
	ani	0f0h		;; 7f20: e6 f0       ..
	ora	h		;; 7f22: b4          .
	cnz	L8013		;; 7f23: c4 13 80    ...
	call	L7cff		;; 7f26: cd ff 7c    ..|
	jrz	L7f8e		;; 7f29: 28 63       (c
	call	L7ceb		;; 7f2b: cd eb 7c    ..|
	call	L7e39		;; 7f2e: cd 39 7e    .9~
	jr	L7f8e		;; 7f31: 18 5b       .[

L7f33:	push	d		;; 7f33: d5          .
	push	b		;; 7f34: c5          .
	ldx	c,+21		;; 7f35: dd 4e 15    .N.
	mvi	b,000h		;; 7f38: 06 00       ..
	lxi	h,00000h	;; 7f3a: 21 00 00    ...
	call	L85d6		;; 7f3d: cd d6 85    ...
	mov	a,l		;; 7f40: 7d          }
	ani	0f0h		;; 7f41: e6 f0       ..
	ora	h		;; 7f43: b4          .
	jrz	L7f4d		;; 7f44: 28 07       (.
	pop	d		;; 7f46: d1          .
	pop	d		;; 7f47: d1          .
	call	L8013		;; 7f48: cd 13 80    ...
	push	b		;; 7f4b: c5          .
	push	b		;; 7f4c: c5          .
L7f4d:	push	h		;; 7f4d: e5          .
	push	b		;; 7f4e: c5          .
	call	L7cff		;; 7f4f: cd ff 7c    ..|
	jrz	L7f67		;; 7f52: 28 13       (.
	bitx	3,+23		;; 7f54: dd cb 17 5e ...^
	cnz	L7e86		;; 7f58: c4 86 7e    ..~
	pop	b		;; 7f5b: c1          .
	pop	h		;; 7f5c: e1          .
	call	L7ceb		;; 7f5d: cd eb 7c    ..|
	push	h		;; 7f60: e5          .
	push	b		;; 7f61: c5          .
	call	L7e6b		;; 7f62: cd 6b 7e    .k~
	jr	L7f74		;; 7f65: 18 0d       ..

L7f67:	call	L7ccd		;; 7f67: cd cd 7c    ..|
	stx	e,+16		;; 7f6a: dd 73 10    .s.
	stx	d,+17		;; 7f6d: dd 72 11    .r.
	mvix	000h,+22	;; 7f70: dd 36 16 00 .6..
L7f74:	ldx	c,+21		;; 7f74: dd 4e 15    .N.
	mvi	b,000h		;; 7f77: 06 00       ..
	mov	l,b		;; 7f79: 68          h
	mov	h,b		;; 7f7a: 60          `
	call	L8636		;; 7f7b: cd 36 86    .6.
	call	L87f6		;; 7f7e: cd f6 87    ...
	mov	a,c		;; 7f81: 79          y
	ora	a		;; 7f82: b7          .
	jrz	L7f8b		;; 7f83: 28 06       (.
L7f85:	call	L7d0e		;; 7f85: cd 0e 7d    ..}
	dcr	a		;; 7f88: 3d          =
	jrnz	L7f85		;; 7f89: 20 fa        .
L7f8b:	call	L7d33		;; 7f8b: cd 33 7d    .3}
L7f8e:	resx	4,+5		;; 7f8e: dd cb 05 a6 ....
	ret			;; 7f92: c9          .

L7f93:	call	L7e86		;; 7f93: cd 86 7e    ..~
L7f96:	call	L7d54		;; 7f96: cd 54 7d    .T}
	call	L7e39		;; 7f99: cd 39 7e    .9~
	ret			;; 7f9c: c9          .

L7f9d:	call	L7d0e		;; 7f9d: cd 0e 7d    ..}
	ldx	a,+22		;; 7fa0: dd 7e 16    .~.
	cmpx	+21		;; 7fa3: dd be 15    ...
	jrz	L7fdb		;; 7fa6: 28 33       (3
	call	L7d33		;; 7fa8: cd 33 7d    .3}
	ret			;; 7fab: c9          .

L7fac:	setx	3,+23		;; 7fac: dd cb 17 de ....
	call	L7d0e		;; 7fb0: cd 0e 7d    ..}
	call	L7ccd		;; 7fb3: cd cd 7c    ..|
	ldx	a,+22		;; 7fb6: dd 7e 16    .~.
	cmpy	+127		;; 7fb9: fd be 7f    ...
	jm	L7fd4		;; 7fbc: fa d4 7f    ...
	sty	a,+127		;; 7fbf: fd 77 7f    .w.
	call	L7cd7		;; 7fc2: cd d7 7c    ..|
	call	L7d24		;; 7fc5: cd 24 7d    .$}
	jrc	L7fd4		;; 7fc8: 38 0a       8.
	inr	c		;; 7fca: 0c          .
	jrnz	L7fd1		;; 7fcb: 20 04        .
	inr	b		;; 7fcd: 04          .
	jrnz	L7fd1		;; 7fce: 20 01        .
	inr	l		;; 7fd0: 2c          ,
L7fd1:	call	L7cf5		;; 7fd1: cd f5 7c    ..|
L7fd4:	ldx	a,+22		;; 7fd4: dd 7e 16    .~.
	cmpx	+21		;; 7fd7: dd be 15    ...
	rnz			;; 7fda: c0          .
L7fdb:	bitx	3,+23		;; 7fdb: dd cb 17 5e ...^
	cnz	L7e86		;; 7fdf: c4 86 7e    ..~
	call	L7d54		;; 7fe2: cd 54 7d    .T}
	call	L7e6b		;; 7fe5: cd 6b 7e    .k~
	ret			;; 7fe8: c9          .

L7fe9:	bitx	7,+5		;; 7fe9: dd cb 05 7e ...~
	jrnz	L7ff8		;; 7fed: 20 09        .
	push	psw		;; 7fef: f5          .
	bitx	3,+23		;; 7ff0: dd cb 17 5e ...^
	cnz	L7e86		;; 7ff4: c4 86 7e    ..~
	pop	psw		;; 7ff7: f1          .
L7ff8:	push	psw		;; 7ff8: f5          .
	call	L7cc3		;; 7ff9: cd c3 7c    ..|
	mvi	c,010h		;; 7ffc: 0e 10       ..
	call	L91c3		;; 7ffe: cd c3 91    ...
	pop	psw		;; 8001: f1          .
	rar			;; 8002: 1f          .
	rc			;; 8003: d8          .
	bitx	4,+4		;; 8004: dd cb 04 66 ...f
	rnz			;; 8008: c0          .
	call	L7cc3		;; 8009: cd c3 7c    ..|
	mvi	c,013h		;; 800c: 0e 13       ..
	call	L91c3		;; 800e: cd c3 91    ...
	ret			;; 8011: c9          .

	pchl			;; 8012: e9          .

L8013:	mvi	a,055h		;; 8013: 3e 55       >U
	mvi	c,006h		;; 8015: 0e 06       ..
	call	L921e		;; 8017: cd 1e 92    ...
	lxi	b,00000h	;; 801a: 01 00 00    ...
	mov	h,b		;; 801d: 60          `
	mov	l,b		;; 801e: 68          h
	ret			;; 801f: c9          .

L8020:	setx	7,+5		;; 8020: dd cb 05 fe ....
	lxi	d,L8047		;; 8024: 11 47 80    .G.
	mvi	b,009h		;; 8027: 06 09       ..
	jr	L8030		;; 8029: 18 05       ..

L802b:	lxi	d,L8037		;; 802b: 11 37 80    .7.
	mvi	b,010h		;; 802e: 06 10       ..
L8030:	mvi	a,044h		;; 8030: 3e 44       >D
	mvi	c,005h		;; 8032: 0e 05       ..
	jmp	L921e		;; 8034: c3 1e 92    ...

L8037:	db	'Must be discfile'
L8047:	db	'Disc full'
L8050:	db	0
L8051:	db	0
L8052:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L8062:	popiy			;; 8062: fd e1       ..
	sta	L8050		;; 8064: 32 50 80    2P.
L8067:	pop	h		;; 8067: e1          .
	mov	a,h		;; 8068: 7c          |
	cpi	020h		;; 8069: fe 20       . 
	jrnz	L8076		;; 806b: 20 09        .
	mov	a,l		;; 806d: 7d          }
	ora	a		;; 806e: b7          .
	jrz	L8076		;; 806f: 28 05       (.
	dcr	a		;; 8071: 3d          =
	push	psw		;; 8072: f5          .
	inx	sp		;; 8073: 33          3
	jr	L8067		;; 8074: 18 f1       ..

L8076:	push	h		;; 8076: e5          .
	lxi	h,L8052		;; 8077: 21 52 80    .R.
	mvi	m,000h		;; 807a: 36 00       6.
	xchg			;; 807c: eb          .
	lxi	h,00000h	;; 807d: 21 00 00    ...
	dad	sp		;; 8080: 39          9
	mvi	b,000h		;; 8081: 06 00       ..
	mov	c,m		;; 8083: 4e          N
	push	h		;; 8084: e5          .
	dad	b		;; 8085: 09          .
	inx	h		;; 8086: 23          #
	xthl			;; 8087: e3          .
	mov	a,c		;; 8088: 79          y
	ora	a		;; 8089: b7          .
	jrz	L80a5		;; 808a: 28 19       (.
	push	d		;; 808c: d5          .
L808d:	inx	h		;; 808d: 23          #
	mov	a,m		;; 808e: 7e          ~
	cpi	020h		;; 808f: fe 20       . 
	jrz	L80a4		;; 8091: 28 11       (.
	cpi	02ch		;; 8093: fe 2c       .,
	jrz	L80a4		;; 8095: 28 0d       (.
	inx	d		;; 8097: 13          .
	stax	d		;; 8098: 12          .
	xthl			;; 8099: e3          .
	inr	m		;; 809a: 34          4
	mov	a,m		;; 809b: 7e          ~
	xthl			;; 809c: e3          .
	cpi	00fh		;; 809d: fe 0f       ..
	jrz	L80a4		;; 809f: 28 03       (.
	dcr	c		;; 80a1: 0d          .
	jrnz	L808d		;; 80a2: 20 e9        .
L80a4:	pop	d		;; 80a4: d1          .
L80a5:	pop	h		;; 80a5: e1          .
	sphl			;; 80a6: f9          .
	pushiy			;; 80a7: fd e5       ..
	cpi	00fh		;; 80a9: fe 0f       ..
	jrz	L80ea		;; 80ab: 28 3d       (=
	inx	d		;; 80ad: 13          .
	push	d		;; 80ae: d5          .
	mov	c,a		;; 80af: 4f          O
	push	b		;; 80b0: c5          .
	lxi	h,0005ch	;; 80b1: 21 5c 00    .\.
	push	h		;; 80b4: e5          .
	call	L8495		;; 80b5: cd 95 84    ...
	lxi	h,00068h	;; 80b8: 21 68 00    .h.
	mvi	m,000h		;; 80bb: 36 00       6.
	lxi	h,L8050		;; 80bd: 21 50 80    .P.
	mov	b,m		;; 80c0: 46          F
	djnz	L80c4		;; 80c1: 10 01       ..
	ret			;; 80c3: c9          .

L80c4:	ora	a		;; 80c4: b7          .
	jrz	L80d3		;; 80c5: 28 0c       (.
	cpi	003h		;; 80c7: fe 03       ..
	jrz	L80f1		;; 80c9: 28 26       (&
	djnz	L80ce		;; 80cb: 10 01       ..
	ret			;; 80cd: c9          .

L80ce:	cpi	001h		;; 80ce: fe 01       ..
	jrnz	L80f1		;; 80d0: 20 1f        .
	ret			;; 80d2: c9          .

L80d3:	lxi	d,L80da		;; 80d3: 11 da 80    ...
	mvi	b,010h		;; 80d6: 06 10       ..
	jr	L80ff		;; 80d8: 18 25       .%

L80da:	db	'? (empty string)'
L80ea:	lda	L8050		;; 80ea: 3a 50 80    :P.
	dcr	a		;; 80ed: 3d          =
	mvi	a,003h		;; 80ee: 3e 03       >.
	rz			;; 80f0: c8          .
L80f1:	lxi	h,L8051		;; 80f1: 21 51 80    .Q.
	push	h		;; 80f4: e5          .
	mvi	m,03fh		;; 80f5: 36 3f       6?
	inx	h		;; 80f7: 23          #
	mov	a,m		;; 80f8: 7e          ~
	mvi	m,020h		;; 80f9: 36 20       6 
	adi	002h		;; 80fb: c6 02       ..
	mov	b,a		;; 80fd: 47          G
	pop	d		;; 80fe: d1          .
L80ff:	mvi	a,04eh		;; 80ff: 3e 4e       >N
	mvi	c,005h		;; 8101: 0e 05       ..
	call	L921e		;; 8103: cd 1e 92    ...
L8106:	db	0
L8107:	call	L81bd		;; 8107: cd bd 81    ...
	lxi	h,L813c		;; 810a: 21 3c 81    .<.
	lxi	b,0000ch	;; 810d: 01 0c 00    ...
	ldir			;; 8110: ed b0       ..
	xchg			;; 8112: eb          .
	lxi	b,0fffch	;; 8113: 01 fc ff    ...
	dad	b		;; 8116: 09          .
	xchg			;; 8117: eb          .
	lxi	h,L8e6c		;; 8118: 21 6c 8e    .l.
	mov	a,m		;; 811b: 7e          ~
	adi	001h		;; 811c: c6 01       ..
	daa			;; 811e: 27          '
	mov	m,a		;; 811f: 77          w
	push	psw		;; 8120: f5          .
	call	L8148		;; 8121: cd 48 81    .H.
	pop	psw		;; 8124: f1          .
	inx	h		;; 8125: 23          #
	mov	a,m		;; 8126: 7e          ~
	aci	000h		;; 8127: ce 00       ..
	daa			;; 8129: 27          '
	mov	m,a		;; 812a: 77          w
	call	L8148		;; 812b: cd 48 81    .H.
	lxi	h,L81d0		;; 812e: 21 d0 81    ...
	stx	l,+10		;; 8131: dd 75 0a    .u.
	stx	h,+11		;; 8134: dd 74 0b    .t.
	setx	3,+4		;; 8137: dd cb 04 de ....
	ret			;; 813b: c9          .

L813c:	db	0,'PTEM0000$$$'
L8148:	mov	c,a		;; 8148: 4f          O
	ani	00fh		;; 8149: e6 0f       ..
	ori	030h		;; 814b: f6 30       .0
	stax	d		;; 814d: 12          .
	dcx	d		;; 814e: 1b          .
	mov	a,c		;; 814f: 79          y
	rar			;; 8150: 1f          .
	rar			;; 8151: 1f          .
	rar			;; 8152: 1f          .
	rar			;; 8153: 1f          .
	ani	00fh		;; 8154: e6 0f       ..
	ori	030h		;; 8156: f6 30       .0
	stax	d		;; 8158: 12          .
	dcx	d		;; 8159: 1b          .
	ret			;; 815a: c9          .

L815b:	ldx	l,+24		;; 815b: dd 6e 18    .n.
	ldx	h,+25		;; 815e: dd 66 19    .f.
	mov	a,l		;; 8161: 7d          }
	ani	0c0h		;; 8162: e6 c0       ..
	ora	h		;; 8164: b4          .
	jrz	L8170		;; 8165: 28 09       (.
	lxi	b,0007fh	;; 8167: 01 7f 00    ...
	dad	b		;; 816a: 09          .
	dad	h		;; 816b: 29          )
	stx	h,+20		;; 816c: dd 74 14    .t.
	ret			;; 816f: c9          .

L8170:	xchg			;; 8170: eb          .
	lxi	h,0007eh	;; 8171: 21 7e 00    .~.
	sub	a		;; 8174: 97          .
L8175:	inr	a		;; 8175: 3c          <
	ora	a		;; 8176: b7          .
	dsbc	d		;; 8177: ed 52       .R
	jp	L8175		;; 8179: f2 75 81    .u.
	dcr	a		;; 817c: 3d          =
	stx	a,+21		;; 817d: dd 77 15    .w.
	mvix	001h,+20	;; 8180: dd 36 14 01 .6..
	setx	6,+4		;; 8184: dd cb 04 f6 ....
	ret			;; 8188: c9          .

L8189:	lxi	h,L82e5		;; 8189: 21 e5 82    ...
	lxi	d,L833d		;; 818c: 11 3d 83    .=.
	bitx	0,+4		;; 818f: dd cb 04 46 ...F
	jrnz	L81a7		;; 8193: 20 12        .
	lxi	h,L8303		;; 8195: 21 03 83    ...
	lxi	d,L835b		;; 8198: 11 5b 83    .[.
	bitx	6,+4		;; 819b: dd cb 04 76 ...v
	jrnz	L81a7		;; 819f: 20 06        .
	lxi	h,L8333		;; 81a1: 21 33 83    .3.
	lxi	d,L837b		;; 81a4: 11 7b 83    .{.
L81a7:	stx	l,+6		;; 81a7: dd 75 06    .u.
	stx	h,+7		;; 81aa: dd 74 07    .t.
	stx	e,+8		;; 81ad: dd 73 08    .s.
	stx	d,+9		;; 81b0: dd 72 09    .r.
	lxi	h,L8294		;; 81b3: 21 94 82    ...
	stx	l,+12		;; 81b6: dd 75 0c    .u.
	stx	h,+13		;; 81b9: dd 74 0d    .t.
	ret			;; 81bc: c9          .

L81bd:	pushix			;; 81bd: dd e5       ..
	xthl			;; 81bf: e3          .
	lxi	d,00024h	;; 81c0: 11 24 00    .$.
	dad	d		;; 81c3: 19          .
	xchg			;; 81c4: eb          .
	pop	h		;; 81c5: e1          .
	ret			;; 81c6: c9          .

L81c7:	lxi	d,00080h	;; 81c7: 11 80 00    ...
	mvi	c,01ah		;; 81ca: 0e 1a       ..
	call	L91c3		;; 81cc: cd c3 91    ...
	ret			;; 81cf: c9          .

L81d0:	bitx	0,+4		;; 81d0: dd cb 04 46 ...F
	cz	L815b		;; 81d4: cc 5b 81    .[.
	ldx	a,+18		;; 81d7: dd 7e 12    .~.
	orax	+19		;; 81da: dd b6 13    ...
	jrnz	L81f4		;; 81dd: 20 15        .
	pushix			;; 81df: dd e5       ..
	pop	h		;; 81e1: e1          .
	lxi	d,00012h	;; 81e2: 11 12 00    ...
	dad	d		;; 81e5: 19          .
	push	h		;; 81e6: e5          .
	ldx	b,+20		;; 81e7: dd 46 14    .F.
	mvi	c,000h		;; 81ea: 0e 00       ..
	srlr	b		;; 81ec: cb 38       .8
	rarr	c		;; 81ee: cb 19       ..
	push	b		;; 81f0: c5          .
	call	L9013		;; 81f1: cd 13 90    ...
L81f4:	call	L81bd		;; 81f4: cd bd 81    ...
	push	d		;; 81f7: d5          .
	lxi	h,0000ch	;; 81f8: 21 0c 00    ...
	dad	d		;; 81fb: 19          .
	mvi	b,018h		;; 81fc: 06 18       ..
L81fe:	mvi	m,000h		;; 81fe: 36 00       6.
	inx	h		;; 8200: 23          #
	djnz	L81fe		;; 8201: 10 fb       ..
	resx	7,+42		;; 8203: dd cb 2a be ..*.
	bitx	3,+5		;; 8207: dd cb 05 5e ...^
	jrnz	L8218		;; 820b: 20 0b        .
	lda	L8e6e		;; 820d: 3a 6e 8e    :n.
	cpi	001h		;; 8210: fe 01       ..
	jrz	L8218		;; 8212: 28 04       (.
	setx	7,+42		;; 8214: dd cb 2a fe ..*.
L8218:	bitx	2,+5		;; 8218: dd cb 05 56 ...V
	jrz	L822f		;; 821c: 28 11       (.
	mvi	c,00fh		;; 821e: 0e 0f       ..
	call	L91c3		;; 8220: cd c3 91    ...
	inr	a		;; 8223: 3c          <
	jrnz	L823f		;; 8224: 20 19        .
	bitx	3,+5		;; 8226: dd cb 05 5e ...^
	jrnz	L8234		;; 822a: 20 08        .
	jmp	L8436		;; 822c: c3 36 84    .6.

L822f:	mvi	c,013h		;; 822f: 0e 13       ..
	call	L91c3		;; 8231: cd c3 91    ...
L8234:	pop	d		;; 8234: d1          .
	push	d		;; 8235: d5          .
	mvi	c,016h		;; 8236: 0e 16       ..
	call	L91c3		;; 8238: cd c3 91    ...
	inr	a		;; 823b: 3c          <
	jz	L8408		;; 823c: ca 08 84    ...
L823f:	pop	h		;; 823f: e1          .
	mvix	001h,+22	;; 8240: dd 36 16 01 .6..
	bitx	3,+5		;; 8244: dd cb 05 5e ...^
	cnz	L8254		;; 8248: c4 54 82    .T.
	call	L8189		;; 824b: cd 89 81    ...
	mvix	000h,+23	;; 824e: dd 36 17 00 .6..
	xra	a		;; 8252: af          .
	ret			;; 8253: c9          .

L8254:	mvix	000h,+22	;; 8254: dd 36 16 00 .6..
	ldx	l,+18		;; 8258: dd 6e 12    .n.
	ldx	h,+19		;; 825b: dd 66 13    .f.
	bitx	0,+4		;; 825e: dd cb 04 46 ...F
	jrnz	L826c		;; 8262: 20 08        .
	stx	l,+16		;; 8264: dd 75 10    .u.
	stx	h,+17		;; 8267: dd 74 11    .t.
	jr	L8272		;; 826a: 18 06       ..

L826c:	stx	l,+24		;; 826c: dd 75 18    .u.
	stx	h,+25		;; 826f: dd 74 19    .t.
L8272:	ldx	a,+20		;; 8272: dd 7e 14    .~.
L8275:	mvi	b,080h		;; 8275: 06 80       ..
L8277:	mvi	m,000h		;; 8277: 36 00       6.
	inx	h		;; 8279: 23          #
	djnz	L8277		;; 827a: 10 fb       ..
	dcr	a		;; 827c: 3d          =
	jrnz	L8275		;; 827d: 20 f6        .
	ret			;; 827f: c9          .

L8280:	ldx	l,+18		;; 8280: dd 6e 12    .n.
	ldx	h,+19		;; 8283: dd 66 13    .f.
	lxi	b,0007fh	;; 8286: 01 7f 00    ...
	dad	b		;; 8289: 09          .
	ldx	a,+22		;; 828a: dd 7e 16    .~.
	mov	m,a		;; 828d: 77          w
	dcx	h		;; 828e: 2b          +
	ldx	a,+24		;; 828f: dd 7e 18    .~.
	mov	m,a		;; 8292: 77          w
	ret			;; 8293: c9          .

L8294:	push	psw		;; 8294: f5          .
	bitx	3,+5		;; 8295: dd cb 05 5e ...^
	jrz	L82c4		;; 8299: 28 29       ()
	bitx	7,+5		;; 829b: dd cb 05 7e ...~
	jrnz	L82c4		;; 829f: 20 23        #
	bitx	6,+4		;; 82a1: dd cb 04 76 ...v
	jrnz	L82b4		;; 82a5: 20 0d        .
	bitx	0,+4		;; 82a7: dd cb 04 46 ...F
	jrz	L82c4		;; 82ab: 28 17       (.
	mvix	01ah,+23	;; 82ad: dd 36 17 1a .6..
	call	L8344		;; 82b1: cd 44 83    .D.
L82b4:	ldx	a,+22		;; 82b4: dd 7e 16    .~.
	ora	a		;; 82b7: b7          .
	jrz	L82c4		;; 82b8: 28 0a       (.
	bitx	6,+4		;; 82ba: dd cb 04 76 ...v
	cnz	L8280		;; 82be: c4 80 82    ...
	call	L8386		;; 82c1: cd 86 83    ...
L82c4:	call	L81bd		;; 82c4: cd bd 81    ...
	mvi	c,010h		;; 82c7: 0e 10       ..
	call	L91c3		;; 82c9: cd c3 91    ...
	inr	a		;; 82cc: 3c          <
	pop	b		;; 82cd: c1          .
	jz	L83e8		;; 82ce: ca e8 83    ...
	resx	7,+42		;; 82d1: dd cb 2a be ..*.
	mov	a,b		;; 82d5: 78          x
	rar			;; 82d6: 1f          .
	rc			;; 82d7: d8          .
	call	L81bd		;; 82d8: cd bd 81    ...
	mvi	c,013h		;; 82db: 0e 13       ..
	bitx	4,+4		;; 82dd: dd cb 04 66 ...f
	cz	L91c3		;; 82e1: cc c3 91    ...
	ret			;; 82e4: c9          .

L82e5:	ldx	l,+24		;; 82e5: dd 6e 18    .n.
	ldx	h,+25		;; 82e8: dd 66 19    .f.
	inx	h		;; 82eb: 23          #
	dcrx	+22		;; 82ec: dd 35 16    .5.
	jrnz	L82f8		;; 82ef: 20 07        .
	call	L8382		;; 82f1: cd 82 83    ...
	mvix	080h,+22	;; 82f4: dd 36 16 80 .6..
L82f8:	stx	l,+24		;; 82f8: dd 75 18    .u.
	stx	h,+25		;; 82fb: dd 74 19    .t.
	mov	a,m		;; 82fe: 7e          ~
	stx	a,+23		;; 82ff: dd 77 17    .w.
	ret			;; 8302: c9          .

L8303:	ldx	l,+16		;; 8303: dd 6e 10    .n.
	ldx	h,+17		;; 8306: dd 66 11    .f.
	ldx	c,+24		;; 8309: dd 4e 18    .N.
	mvi	b,000h		;; 830c: 06 00       ..
	dad	b		;; 830e: 09          .
	dcrx	+22		;; 830f: dd 35 16    .5.
	jrnz	L8336		;; 8312: 20 22        "
	call	L8382		;; 8314: cd 82 83    ...
	push	h		;; 8317: e5          .
	popiy			;; 8318: fd e1       ..
	bitx	0,+5		;; 831a: dd cb 05 46 ...F
	jrnz	L832b		;; 831e: 20 0b        .
	ldy	a,+126		;; 8320: fd 7e 7e    .~~
	ani	03fh		;; 8323: e6 3f       .?
	cmpx	+24		;; 8325: dd be 18    ...
	jnz	L83d2		;; 8328: c2 d2 83    ...
L832b:	ldy	a,+127		;; 832b: fd 7e 7f    .~.
	stx	a,+22		;; 832e: dd 77 16    .w.
	jr	L8336		;; 8331: 18 03       ..

L8333:	call	L8382		;; 8333: cd 82 83    ...
L8336:	stx	l,+16		;; 8336: dd 75 10    .u.
	stx	h,+17		;; 8339: dd 74 11    .t.
	ret			;; 833c: c9          .

L833d:	bitx	5,+5		;; 833d: dd cb 05 6e ...n
	cnz	L8ffc		;; 8341: c4 fc 8f    ...
L8344:	ldx	l,+24		;; 8344: dd 6e 18    .n.
	ldx	h,+25		;; 8347: dd 66 19    .f.
	ldx	a,+23		;; 834a: dd 7e 17    .~.
	mov	m,a		;; 834d: 77          w
	inx	h		;; 834e: 23          #
	stx	l,+24		;; 834f: dd 75 18    .u.
	stx	h,+25		;; 8352: dd 74 19    .t.
	inrx	+22		;; 8355: dd 34 16    .4.
	rp			;; 8358: f0          .
	jr	L837b		;; 8359: 18 20       . 

L835b:	ldx	l,+16		;; 835b: dd 6e 10    .n.
	ldx	h,+17		;; 835e: dd 66 11    .f.
	ldx	c,+24		;; 8361: dd 4e 18    .N.
	mvi	b,000h		;; 8364: 06 00       ..
	dad	b		;; 8366: 09          .
	stx	l,+16		;; 8367: dd 75 10    .u.
	stx	h,+17		;; 836a: dd 74 11    .t.
	ldx	a,+22		;; 836d: dd 7e 16    .~.
	inr	a		;; 8370: 3c          <
	stx	a,+22		;; 8371: dd 77 16    .w.
	cmpx	+21		;; 8374: dd be 15    ...
	rnz			;; 8377: c0          .
	call	L8280		;; 8378: cd 80 82    ...
L837b:	call	L8386		;; 837b: cd 86 83    ...
	call	L8254		;; 837e: cd 54 82    .T.
	ret			;; 8381: c9          .

L8382:	mvi	a,014h		;; 8382: 3e 14       >.
	jr	L8388		;; 8384: 18 02       ..

L8386:	mvi	a,015h		;; 8386: 3e 15       >.
L8388:	sta	L8106		;; 8388: 32 06 81    2..
	call	L81bd		;; 838b: cd bd 81    ...
	ldx	l,+18		;; 838e: dd 6e 12    .n.
	ldx	h,+19		;; 8391: dd 66 13    .f.
	push	h		;; 8394: e5          .
	ldx	a,+20		;; 8395: dd 7e 14    .~.
L8398:	push	psw		;; 8398: f5          .
	push	d		;; 8399: d5          .
	push	h		;; 839a: e5          .
	pop	d		;; 839b: d1          .
	push	d		;; 839c: d5          .
	mvi	c,01ah		;; 839d: 0e 1a       ..
	call	L91c3		;; 839f: cd c3 91    ...
	pop	h		;; 83a2: e1          .
	pop	d		;; 83a3: d1          .
	push	d		;; 83a4: d5          .
	push	h		;; 83a5: e5          .
	lda	L8106		;; 83a6: 3a 06 81    :..
	mov	c,a		;; 83a9: 4f          O
	call	L91c3		;; 83aa: cd c3 91    ...
	ora	a		;; 83ad: b7          .
	jrnz	L83bf		;; 83ae: 20 0f        .
	pop	h		;; 83b0: e1          .
	pop	d		;; 83b1: d1          .
	pop	psw		;; 83b2: f1          .
	lxi	b,00080h	;; 83b3: 01 80 00    ...
	dad	b		;; 83b6: 09          .
	dcr	a		;; 83b7: 3d          =
	jrnz	L8398		;; 83b8: 20 de        .
	call	L81c7		;; 83ba: cd c7 81    ...
	pop	h		;; 83bd: e1          .
	ret			;; 83be: c9          .

L83bf:	pop	h		;; 83bf: e1          .
	pop	h		;; 83c0: e1          .
	pop	h		;; 83c1: e1          .
	call	L81c7		;; 83c2: cd c7 81    ...
	pop	h		;; 83c5: e1          .
	lda	L8106		;; 83c6: 3a 06 81    :..
	cpi	015h		;; 83c9: fe 15       ..
	jrz	L841d		;; 83cb: 28 50       (P
	setx	0,+5		;; 83cd: dd cb 05 c6 ....
	ret			;; 83d1: c9          .

L83d2:	lxi	d,L83d9		;; 83d2: 11 d9 83    ...
	mvi	b,00fh		;; 83d5: 06 0f       ..
	jr	L8426		;; 83d7: 18 4d       .M

L83d9:	db	'Wrong file type'
L83e8:	resx	2,+5		;; 83e8: dd cb 05 96 ....
	resx	3,+5		;; 83ec: dd cb 05 9e ....
	lxi	d,L83f7		;; 83f0: 11 f7 83    ...
	mvi	b,011h		;; 83f3: 06 11       ..
	jr	L8426		;; 83f5: 18 2f       ./

L83f7:	db	'Cannot close fil'
	db	'e'
L8408:	lxi	d,L840f		;; 8408: 11 0f 84    ...
	mvi	b,00eh		;; 840b: 06 0e       ..
	jr	L8422		;; 840d: 18 13       ..

L840f:	db	'Directory full'
L841d:	lxi	d,L842d		;; 841d: 11 2d 84    .-.
	mvi	b,009h		;; 8420: 06 09       ..
L8422:	setx	7,+5		;; 8422: dd cb 05 fe ....
L8426:	mvi	a,044h		;; 8426: 3e 44       >D
	mvi	c,005h		;; 8428: 0e 05       ..
	call	L921e		;; 842a: cd 1e 92    ...
L842d:	db	'Disc full'
L8436:	resx	2,+5		;; 8436: dd cb 05 96 ....
	pop	d		;; 843a: d1          .
	lda	L8e77		;; 843b: 3a 77 8e    :w.
	ora	a		;; 843e: b7          .
	mvi	a,001h		;; 843f: 3e 01       >.
	rz			;; 8441: c8          .
	pop	b		;; 8442: c1          .
	push	d		;; 8443: d5          .
	push	d		;; 8444: d5          .
	lxi	h,0000bh	;; 8445: 21 0b 00    ...
	dad	d		;; 8448: 19          .
	ldax	d		;; 8449: 1a          .
	ora	a		;; 844a: b7          .
	jrz	L8454		;; 844b: 28 07       (.
	adi	040h		;; 844d: c6 40       .@
	inx	h		;; 844f: 23          #
	mov	m,a		;; 8450: 77          w
	inx	h		;; 8451: 23          #
	mvi	m,03ah		;; 8452: 36 3a       6:
L8454:	mvi	b,008h		;; 8454: 06 08       ..
	call	L8477		;; 8456: cd 77 84    .w.
	inx	h		;; 8459: 23          #
	mvi	m,02eh		;; 845a: 36 2e       6.
	mvi	b,003h		;; 845c: 06 03       ..
	call	L8477		;; 845e: cd 77 84    .w.
	jrnz	L8464		;; 8461: 20 01        .
	dcx	h		;; 8463: 2b          +
L8464:	pop	d		;; 8464: d1          .
	push	h		;; 8465: e5          .
	lxi	h,L8489		;; 8466: 21 89 84    ...
	lxi	b,0000ch	;; 8469: 01 0c 00    ...
	ldir			;; 846c: ed b0       ..
	pop	h		;; 846e: e1          .
	pop	d		;; 846f: d1          .
	ora	a		;; 8470: b7          .
	dsbc	d		;; 8471: ed 52       .R
	mov	b,l		;; 8473: 45          E
	inr	b		;; 8474: 04          .
	jr	L8426		;; 8475: 18 af       ..

L8477:	mov	c,b		;; 8477: 48          H
L8478:	inx	d		;; 8478: 13          .
	inx	h		;; 8479: 23          #
	ldax	d		;; 847a: 1a          .
	ani	07fh		;; 847b: e6 7f       ..
	mov	m,a		;; 847d: 77          w
	djnz	L8478		;; 847e: 10 f8       ..
	mvi	a,020h		;; 8480: 3e 20       > 
L8482:	cmp	m		;; 8482: be          .
	rnz			;; 8483: c0          .
	dcx	h		;; 8484: 2b          +
	dcr	c		;; 8485: 0d          .
	jrnz	L8482		;; 8486: 20 fa        .
	ret			;; 8488: c9          .

L8489:	db	'Not found:  '
L8495:	pop	h		;; 8495: e1          .
	popiy			;; 8496: fd e1       ..
	pop	b		;; 8498: c1          .
	xthl			;; 8499: e3          .
	xchg			;; 849a: eb          .
	pushiy			;; 849b: fd e5       ..
	pop	h		;; 849d: e1          .
	mvi	m,000h		;; 849e: 36 00       6.
	mvi	b,00bh		;; 84a0: 06 0b       ..
L84a2:	inx	h		;; 84a2: 23          #
	mvi	m,020h		;; 84a3: 36 20       6 
	djnz	L84a2		;; 84a5: 10 fb       ..
	mov	a,c		;; 84a7: 79          y
	ora	a		;; 84a8: b7          .
	rz			;; 84a9: c8          .
L84aa:	ldax	d		;; 84aa: 1a          .
	cpi	020h		;; 84ab: fe 20       . 
	jrnz	L84b5		;; 84ad: 20 06        .
	inx	d		;; 84af: 13          .
	dcr	c		;; 84b0: 0d          .
	jrnz	L84aa		;; 84b1: 20 f7        .
	sub	a		;; 84b3: 97          .
	ret			;; 84b4: c9          .

L84b5:	inr	c		;; 84b5: 0c          .
	pushiy			;; 84b6: fd e5       ..
	pop	h		;; 84b8: e1          .
	inx	h		;; 84b9: 23          #
	mvi	b,009h		;; 84ba: 06 09       ..
L84bc:	dcr	c		;; 84bc: 0d          .
	jz	L8540		;; 84bd: ca 40 85    .@.
	ldax	d		;; 84c0: 1a          .
	inx	d		;; 84c1: 13          .
	cpi	020h		;; 84c2: fe 20       . 
	jrz	L8540		;; 84c4: 28 7a       (z
	cpi	03ah		;; 84c6: fe 3a       .:
	jrz	L8516		;; 84c8: 28 4c       (L
	cpi	02eh		;; 84ca: fe 2e       ..
	jrz	L84ff		;; 84cc: 28 31       (1
	cpi	02ah		;; 84ce: fe 2a       .*
	jrz	L854b		;; 84d0: 28 79       (y
	cpi	02ch		;; 84d2: fe 2c       .,
	jrz	L854b		;; 84d4: 28 75       (u
	cpi	03bh		;; 84d6: fe 3b       .;
	jrc	L84de		;; 84d8: 38 04       8.
	cpi	040h		;; 84da: fe 40       .@
	jrc	L854b		;; 84dc: 38 6d       8m
L84de:	cpi	060h		;; 84de: fe 60       .`
	jrc	L84e4		;; 84e0: 38 02       8.
	ani	05fh		;; 84e2: e6 5f       ._
L84e4:	cpi	05bh		;; 84e4: fe 5b       .[
	jrz	L854b		;; 84e6: 28 63       (c
	cpi	05dh		;; 84e8: fe 5d       .]
	jrz	L854b		;; 84ea: 28 5f       (_
	mov	m,a		;; 84ec: 77          w
	inx	h		;; 84ed: 23          #
	djnz	L84bc		;; 84ee: 10 cc       ..
	bity	6,+0		;; 84f0: fd cb 00 76 ...v
	jrnz	L8540		;; 84f4: 20 4a        J
	ldy	a,+9		;; 84f6: fd 7e 09    .~.
	cpi	020h		;; 84f9: fe 20       . 
	jrz	L8540		;; 84fb: 28 43       (C
	jr	L854b		;; 84fd: 18 4c       .L

L84ff:	bity	6,+0		;; 84ff: fd cb 00 76 ...v
	jrnz	L854b		;; 8503: 20 46        F
	sety	6,+0		;; 8505: fd cb 00 f6 ....
	pushiy			;; 8509: fd e5       ..
	pop	h		;; 850b: e1          .
	push	b		;; 850c: c5          .
	lxi	b,00009h	;; 850d: 01 09 00    ...
	dad	b		;; 8510: 09          .
	pop	b		;; 8511: c1          .
	mvi	b,003h		;; 8512: 06 03       ..
	jr	L84bc		;; 8514: 18 a6       ..

L8516:	bity	7,+0		;; 8516: fd cb 00 7e ...~
	jrnz	L854b		;; 851a: 20 2f        /
	mov	a,b		;; 851c: 78          x
	cpi	008h		;; 851d: fe 08       ..
	jrz	L8528		;; 851f: 28 07       (.
	cpi	006h		;; 8521: fe 06       ..
	jrnz	L854b		;; 8523: 20 26        &
	mvi	a,002h		;; 8525: 3e 02       >.
	ret			;; 8527: c9          .

L8528:	ldy	a,+1		;; 8528: fd 7e 01    .~.
	sui	040h		;; 852b: d6 40       .@
	jrc	L854b		;; 852d: 38 1c       8.
	cpi	011h		;; 852f: fe 11       ..
	jrnc	L854b		;; 8531: 30 18       0.
	setb	7,a		;; 8533: cb ff       ..
	sty	a,+0		;; 8535: fd 77 00    .w.
	mviy	020h,+1		;; 8538: fd 36 01 20 .6. 
	dcr	c		;; 853c: 0d          .
	jmp	L84b5		;; 853d: c3 b5 84    ...

L8540:	ldy	a,+0		;; 8540: fd 7e 00    .~.
	ani	01fh		;; 8543: e6 1f       ..
	sty	a,+0		;; 8545: fd 77 00    .w.
	mvi	a,001h		;; 8548: 3e 01       >.
	ret			;; 854a: c9          .

L854b:	mvi	a,003h		;; 854b: 3e 03       >.
	ret			;; 854d: c9          .

	call	L882e		;; 854e: cd 2e 88    ...
	popiy			;; 8551: fd e1       ..
	pop	d		;; 8553: d1          .
	xthl			;; 8554: e3          .
	xtiy			;; 8555: fd e3       ..
	mvi	a,040h		;; 8557: 3e 40       >@
	jr	L8567		;; 8559: 18 0c       ..

L855b:	mov	a,h		;; 855b: 7c          |
	popiy			;; 855c: fd e1       ..
	pop	d		;; 855e: d1          .
	xthl			;; 855f: e3          .
	xtiy			;; 8560: fd e3       ..
	ora	a		;; 8562: b7          .
	jm	L85c8		;; 8563: fa c8 85    ...
	sub	a		;; 8566: 97          .
L8567:	push	b		;; 8567: c5          .
	mov	b,d		;; 8568: 42          B
	mov	c,e		;; 8569: 4b          K
	bit	7,h		;; 856a: cb 7c       .|
	jrz	L8573		;; 856c: 28 05       (.
	call	L8831		;; 856e: cd 31 88    .1.
	ori	080h		;; 8571: f6 80       ..
L8573:	pop	d		;; 8573: d1          .
	pushix			;; 8574: dd e5       ..
	push	psw		;; 8576: f5          .
	push	b		;; 8577: c5          .
	xtiy			;; 8578: fd e3       ..
	pop	b		;; 857a: c1          .
	mov	a,b		;; 857b: 78          x
	ora	c		;; 857c: b1          .
	ora	d		;; 857d: b2          .
	jrnz	L8599		;; 857e: 20 19        .
	ora	e		;; 8580: b3          .
	jz	L85c6		;; 8581: ca c6 85    ...
	cpi	002h		;; 8584: fe 02       ..
	jrnz	L8599		;; 8586: 20 11        .
	pushiy			;; 8588: fd e5       ..
	pop	h		;; 858a: e1          .
	rarr	l		;; 858b: cb 1d       ..
	lxi	h,00000h	;; 858d: 21 00 00    ...
	ralr	l		;; 8590: cb 15       ..
	pop	psw		;; 8592: f1          .
	push	h		;; 8593: e5          .
	lxi	h,00000h	;; 8594: 21 00 00    ...
	jr	L85a2		;; 8597: 18 09       ..

L8599:	call	L869e		;; 8599: cd 9e 86    ...
	push	psw		;; 859c: f5          .
	popiy			;; 859d: fd e1       ..
	pop	psw		;; 859f: f1          .
	pushiy			;; 85a0: fd e5       ..
L85a2:	ral			;; 85a2: 17          .
	jrnc	L85c2		;; 85a3: 30 1d       0.
	ral			;; 85a5: 17          .
	jrnc	L85ad		;; 85a6: 30 05       0.
	lxi	b,00000h	;; 85a8: 01 00 00    ...
	mov	d,b		;; 85ab: 50          P
	mov	e,b		;; 85ac: 58          X
L85ad:	mov	a,h		;; 85ad: 7c          |
	ora	l		;; 85ae: b5          .
	xthl			;; 85af: e3          .
	ora	h		;; 85b0: b4          .
	ora	l		;; 85b1: b5          .
	xthl			;; 85b2: e3          .
	jrz	L85c2		;; 85b3: 28 0d       (.
	xchg			;; 85b5: eb          .
	push	b		;; 85b6: c5          .
	popiy			;; 85b7: fd e1       ..
	pop	b		;; 85b9: c1          .
	ora	a		;; 85ba: b7          .
	dsbc	b		;; 85bb: ed 42       .B
	pushiy			;; 85bd: fd e5       ..
	xthl			;; 85bf: e3          .
	dsbc	d		;; 85c0: ed 52       .R
L85c2:	pop	b		;; 85c2: c1          .
	popix			;; 85c3: dd e1       ..
	ret			;; 85c5: c9          .

L85c6:	pop	d		;; 85c6: d1          .
	pop	d		;; 85c7: d1          .
L85c8:	mvi	a,04ah		;; 85c8: 3e 4a       >J
	mvi	c,002h		;; 85ca: 0e 02       ..
	call	L921e		;; 85cc: cd 1e 92    ...
	lxi	h,00000h	;; 85cf: 21 00 00    ...
	lxi	b,00001h	;; 85d2: 01 01 00    ...
	ret			;; 85d5: c9          .

L85d6:	sub	a		;; 85d6: 97          .
	bit	7,h		;; 85d7: cb 7c       .|
	jrz	L85e0		;; 85d9: 28 05       (.
	call	L8831		;; 85db: cd 31 88    .1.
	mvi	a,080h		;; 85de: 3e 80       >.
L85e0:	popiy			;; 85e0: fd e1       ..
	pop	d		;; 85e2: d1          .
	xthl			;; 85e3: e3          .
	xtiy			;; 85e4: fd e3       ..
	push	b		;; 85e6: c5          .
	mov	b,d		;; 85e7: 42          B
	mov	c,e		;; 85e8: 4b          K
	bit	7,h		;; 85e9: cb 7c       .|
	jrz	L85f2		;; 85eb: 28 05       (.
	adi	0c0h		;; 85ed: c6 c0       ..
	call	L8831		;; 85ef: cd 31 88    .1.
L85f2:	pop	d		;; 85f2: d1          .
	pushix			;; 85f3: dd e5       ..
	push	psw		;; 85f5: f5          .
	push	b		;; 85f6: c5          .
	xtiy			;; 85f7: fd e3       ..
	pop	b		;; 85f9: c1          .
	mov	a,b		;; 85fa: 78          x
	ora	c		;; 85fb: b1          .
	ora	d		;; 85fc: b2          .
	jrnz	L8615		;; 85fd: 20 16        .
	ora	e		;; 85ff: b3          .
	jz	L8626		;; 8600: ca 26 86    .&.
	cpi	002h		;; 8603: fe 02       ..
	jrnz	L8615		;; 8605: 20 0e        .
	pushiy			;; 8607: fd e5       ..
	pop	b		;; 8609: c1          .
	pop	psw		;; 860a: f1          .
	srar	h		;; 860b: cb 2c       .,
	rarr	l		;; 860d: cb 1d       ..
	rarr	b		;; 860f: cb 18       ..
	rarr	c		;; 8611: cb 19       ..
	jr	L861f		;; 8613: 18 0a       ..

L8615:	call	L869e		;; 8615: cd 9e 86    ...
	pop	psw		;; 8618: f1          .
	pushix			;; 8619: dd e5       ..
	pop	h		;; 861b: e1          .
	pushiy			;; 861c: fd e5       ..
	pop	b		;; 861e: c1          .
L861f:	ral			;; 861f: 17          .
	cc	L8831		;; 8620: dc 31 88    .1.
	popix			;; 8623: dd e1       ..
	ret			;; 8625: c9          .

L8626:	pop	d		;; 8626: d1          .
	pop	d		;; 8627: d1          .
	mvi	a,04ah		;; 8628: 3e 4a       >J
	mvi	c,002h		;; 862a: 0e 02       ..
	call	L921e		;; 862c: cd 1e 92    ...
	lxi	h,00000h	;; 862f: 21 00 00    ...
	lxi	b,00001h	;; 8632: 01 01 00    ...
	ret			;; 8635: c9          .

L8636:	sub	a		;; 8636: 97          .
	bit	7,h		;; 8637: cb 7c       .|
	jrz	L8640		;; 8639: 28 05       (.
	call	L8831		;; 863b: cd 31 88    .1.
	mvi	a,080h		;; 863e: 3e 80       >.
L8640:	popiy			;; 8640: fd e1       ..
	pop	d		;; 8642: d1          .
	xthl			;; 8643: e3          .
	xtiy			;; 8644: fd e3       ..
	push	b		;; 8646: c5          .
	mov	b,d		;; 8647: 42          B
	mov	c,e		;; 8648: 4b          K
	bit	7,h		;; 8649: cb 7c       .|
	jrz	L8652		;; 864b: 28 05       (.
	adi	0c0h		;; 864d: c6 c0       ..
	call	L8831		;; 864f: cd 31 88    .1.
L8652:	pop	d		;; 8652: d1          .
	push	psw		;; 8653: f5          .
	push	b		;; 8654: c5          .
	push	d		;; 8655: d5          .
	push	b		;; 8656: c5          .
	pushiy			;; 8657: fd e5       ..
	mov	a,h		;; 8659: 7c          |
	ora	l		;; 865a: b5          .
	jrz	L866b		;; 865b: 28 0e       (.
	pop	b		;; 865d: c1          .
	mov	a,b		;; 865e: 78          x
	ora	c		;; 865f: b1          .
	jnz	L868c		;; 8660: c2 8c 86    ...
	pop	b		;; 8663: c1          .
	mov	b,h		;; 8664: 44          D
	mov	c,l		;; 8665: 4d          M
	call	L890c		;; 8666: cd 0c 89    ...
	jr	L8674		;; 8669: 18 09       ..

L866b:	pop	b		;; 866b: c1          .
	pop	d		;; 866c: d1          .
	mov	a,b		;; 866d: 78          x
	ora	c		;; 866e: b1          .
	jrz	L867e		;; 866f: 28 0d       (.
	call	L890c		;; 8671: cd 0c 89    ...
L8674:	mov	a,b		;; 8674: 78          x
	ani	080h		;; 8675: e6 80       ..
	ora	h		;; 8677: b4          .
	ora	l		;; 8678: b5          .
	jnz	L868d		;; 8679: c2 8d 86    ...
	mov	h,b		;; 867c: 60          `
	mov	l,c		;; 867d: 69          i
L867e:	pop	b		;; 867e: c1          .
	pop	d		;; 867f: d1          .
	push	h		;; 8680: e5          .
	call	L890c		;; 8681: cd 0c 89    ...
	pop	d		;; 8684: d1          .
	dad	d		;; 8685: 19          .
	pop	psw		;; 8686: f1          .
	ora	a		;; 8687: b7          .
	cm	L8831		;; 8688: fc 31 88    .1.
	ret			;; 868b: c9          .

L868c:	pop	d		;; 868c: d1          .
L868d:	pop	d		;; 868d: d1          .
	pop	d		;; 868e: d1          .
	pop	d		;; 868f: d1          .
	mvi	a,04fh		;; 8690: 3e 4f       >O
	mvi	c,002h		;; 8692: 0e 02       ..
	call	L921e		;; 8694: cd 1e 92    ...
	lxi	h,00000h	;; 8697: 21 00 00    ...
	lxi	b,00001h	;; 869a: 01 01 00    ...
	ret			;; 869d: c9          .

L869e:	push	h		;; 869e: e5          .
	mov	a,h		;; 869f: 7c          |
	ora	l		;; 86a0: b5          .
	jrz	L86aa		;; 86a1: 28 07       (.
	mvi	a,020h		;; 86a3: 3e 20       > 
	lxi	h,00000h	;; 86a5: 21 00 00    ...
	jr	L86ae		;; 86a8: 18 04       ..

L86aa:	mvi	a,010h		;; 86aa: 3e 10       >.
	xtiy			;; 86ac: fd e3       ..
L86ae:	popix			;; 86ae: dd e1       ..
	push	h		;; 86b0: e5          .
L86b1:	dady	iy		;; 86b1: fd 29       .)
	ral			;; 86b3: 17          .
	dadx	ix		;; 86b4: dd 29       .)
	xthl			;; 86b6: e3          .
	dadc	h		;; 86b7: ed 6a       .j
	xthl			;; 86b9: e3          .
	dadc	h		;; 86ba: ed 6a       .j
	rar			;; 86bc: 1f          .
	jrnc	L86c1		;; 86bd: 30 02       0.
	inxix			;; 86bf: dd 23       .#
L86c1:	xthl			;; 86c1: e3          .
	ora	a		;; 86c2: b7          .
	dsbc	d		;; 86c3: ed 52       .R
	xthl			;; 86c5: e3          .
	dsbc	b		;; 86c6: ed 42       .B
	jp	L86d2		;; 86c8: f2 d2 86    ...
	xthl			;; 86cb: e3          .
	dad	d		;; 86cc: 19          .
	xthl			;; 86cd: e3          .
	dadc	b		;; 86ce: ed 4a       .J
	jr	L86d4		;; 86d0: 18 02       ..

L86d2:	inxiy			;; 86d2: fd 23       .#
L86d4:	dcr	a		;; 86d4: 3d          =
	jrnz	L86b1		;; 86d5: 20 da        .
	pop	psw		;; 86d7: f1          .
	ret			;; 86d8: c9          .

	call	L88cf		;; 86d9: cd cf 88    ...
	xchg			;; 86dc: eb          .
	pop	h		;; 86dd: e1          .
	pop	b		;; 86de: c1          .
	push	h		;; 86df: e5          .
	mvi	h,040h		;; 86e0: 26 40       &@
	jr	L86ef		;; 86e2: 18 0b       ..

	xchg			;; 86e4: eb          .
	pop	h		;; 86e5: e1          .
	pop	b		;; 86e6: c1          .
	push	h		;; 86e7: e5          .
	mov	a,d		;; 86e8: 7a          z
	ora	a		;; 86e9: b7          .
	jm	L872c		;; 86ea: fa 2c 87    .,.
	mvi	h,000h		;; 86ed: 26 00       &.
L86ef:	bit	7,b		;; 86ef: cb 78       .x
	jrz	L8704		;; 86f1: 28 11       (.
	setb	7,h		;; 86f3: cb fc       ..
	mov	a,b		;; 86f5: 78          x
	cma			;; 86f6: 2f          /
	mov	b,a		;; 86f7: 47          G
	mov	a,c		;; 86f8: 79          y
	cma			;; 86f9: 2f          /
	mov	c,a		;; 86fa: 4f          O
	inx	b		;; 86fb: 03          .
	jr	L8704		;; 86fc: 18 06       ..

L86fe:	xchg			;; 86fe: eb          .
	pop	h		;; 86ff: e1          .
	pop	b		;; 8700: c1          .
	push	h		;; 8701: e5          .
	mvi	h,000h		;; 8702: 26 00       &.
L8704:	push	h		;; 8704: e5          .
	mov	a,d		;; 8705: 7a          z
	ora	a		;; 8706: b7          .
	jrnz	L8718		;; 8707: 20 0f        .
	ora	e		;; 8709: b3          .
	jrz	L872b		;; 870a: 28 1f       (.
	cpi	002h		;; 870c: fe 02       ..
	jrnz	L8718		;; 870e: 20 08        .
	mov	h,d		;; 8710: 62          b
	mov	l,d		;; 8711: 6a          j
	rarr	c		;; 8712: cb 19       ..
	ralr	l		;; 8714: cb 15       ..
	jr	L871b		;; 8716: 18 03       ..

L8718:	call	L87c6		;; 8718: cd c6 87    ...
L871b:	pop	psw		;; 871b: f1          .
	ral			;; 871c: 17          .
	rnc			;; 871d: d0          .
	ral			;; 871e: 17          .
	jrnc	L8724		;; 871f: 30 03       0.
	lxi	d,00000h	;; 8721: 11 00 00    ...
L8724:	mov	a,h		;; 8724: 7c          |
	ora	l		;; 8725: b5          .
	rz			;; 8726: c8          .
	xchg			;; 8727: eb          .
	dsbc	d		;; 8728: ed 52       .R
	ret			;; 872a: c9          .

L872b:	pop	h		;; 872b: e1          .
L872c:	mvi	a,04ah		;; 872c: 3e 4a       >J
	mvi	c,002h		;; 872e: 0e 02       ..
	call	L921e		;; 8730: cd 1e 92    ...
	lxi	h,00001h	;; 8733: 21 01 00    ...
	ret			;; 8736: c9          .

	xchg			;; 8737: eb          .
	pop	h		;; 8738: e1          .
	pop	b		;; 8739: c1          .
	push	h		;; 873a: e5          .
	mov	a,b		;; 873b: 78          x
	xra	d		;; 873c: aa          .
	ani	080h		;; 873d: e6 80       ..
	mov	l,a		;; 873f: 6f          o
	mov	a,b		;; 8740: 78          x
	ora	a		;; 8741: b7          .
	jp	L874b		;; 8742: f2 4b 87    .K.
	cma			;; 8745: 2f          /
	mov	b,a		;; 8746: 47          G
	mov	a,c		;; 8747: 79          y
	cma			;; 8748: 2f          /
	mov	c,a		;; 8749: 4f          O
	inx	b		;; 874a: 03          .
L874b:	mov	a,d		;; 874b: 7a          z
	ora	a		;; 874c: b7          .
	jp	L875e		;; 874d: f2 5e 87    .^.
	cma			;; 8750: 2f          /
	mov	d,a		;; 8751: 57          W
	mov	a,e		;; 8752: 7b          {
	cma			;; 8753: 2f          /
	mov	e,a		;; 8754: 5f          _
	inx	d		;; 8755: 13          .
	jr	L875e		;; 8756: 18 06       ..

L8758:	xchg			;; 8758: eb          .
	pop	h		;; 8759: e1          .
	pop	b		;; 875a: c1          .
	push	h		;; 875b: e5          .
	mvi	l,040h		;; 875c: 2e 40       .@
L875e:	push	h		;; 875e: e5          .
	mov	a,d		;; 875f: 7a          z
	ora	a		;; 8760: b7          .
	jrnz	L8770		;; 8761: 20 0d        .
	ora	e		;; 8763: b3          .
	jrz	L8785		;; 8764: 28 1f       (.
	cpi	002h		;; 8766: fe 02       ..
	jrnz	L8770		;; 8768: 20 06        .
	srlr	b		;; 876a: cb 38       .8
	rarr	c		;; 876c: cb 19       ..
	jr	L8773		;; 876e: 18 03       ..

L8770:	call	L87c6		;; 8770: cd c6 87    ...
L8773:	pop	d		;; 8773: d1          .
	mov	h,b		;; 8774: 60          `
	mov	l,c		;; 8775: 69          i
	bit	6,e		;; 8776: cb 73       .s
	rnz			;; 8778: c0          .
	bit	7,e		;; 8779: cb 7b       .{
	jnz	L88d3		;; 877b: c2 d3 88    ...
	bit	7,h		;; 877e: cb 7c       .|
	rz			;; 8780: c8          .
	mvi	a,04fh		;; 8781: 3e 4f       >O
	jr	L8788		;; 8783: 18 03       ..

L8785:	pop	h		;; 8785: e1          .
	mvi	a,04ah		;; 8786: 3e 4a       >J
L8788:	mvi	c,002h		;; 8788: 0e 02       ..
	call	L921e		;; 878a: cd 1e 92    ...
	lxi	h,00001h	;; 878d: 21 01 00    ...
	ret			;; 8790: c9          .

L8791:	xchg			;; 8791: eb          .
	pop	h		;; 8792: e1          .
	pop	b		;; 8793: c1          .
	push	h		;; 8794: e5          .
	mov	a,b		;; 8795: 78          x
	xra	d		;; 8796: aa          .
	mov	l,a		;; 8797: 6f          o
	mov	a,b		;; 8798: 78          x
	ora	a		;; 8799: b7          .
	jp	L87a3		;; 879a: f2 a3 87    ...
	cma			;; 879d: 2f          /
	mov	b,a		;; 879e: 47          G
	mov	a,c		;; 879f: 79          y
	cma			;; 87a0: 2f          /
	mov	c,a		;; 87a1: 4f          O
	inx	b		;; 87a2: 03          .
L87a3:	mov	a,d		;; 87a3: 7a          z
	ora	a		;; 87a4: b7          .
	jp	L87ae		;; 87a5: f2 ae 87    ...
	cma			;; 87a8: 2f          /
	mov	d,a		;; 87a9: 57          W
	mov	a,e		;; 87aa: 7b          {
	cma			;; 87ab: 2f          /
	mov	e,a		;; 87ac: 5f          _
	inx	d		;; 87ad: 13          .
L87ae:	push	h		;; 87ae: e5          .
	call	L890c		;; 87af: cd 0c 89    ...
	pop	psw		;; 87b2: f1          .
	rp			;; 87b3: f0          .
	jmp	L8831		;; 87b4: c3 31 88    .1.

L87b7:	xchg			;; 87b7: eb          .
	pop	h		;; 87b8: e1          .
	pop	b		;; 87b9: c1          .
	push	h		;; 87ba: e5          .
	mvi	l,000h		;; 87bb: 2e 00       ..
	call	L890c		;; 87bd: cd 0c 89    ...
	bit	7,h		;; 87c0: cb 7c       .|
	rz			;; 87c2: c8          .
	jmp	L8840		;; 87c3: c3 40 88    .@.

L87c6:	lxi	h,00000h	;; 87c6: 21 00 00    ...
	mov	a,b		;; 87c9: 78          x
	mvi	b,010h		;; 87ca: 06 10       ..
	ora	a		;; 87cc: b7          .
	jrnz	L87d3		;; 87cd: 20 04        .
	mov	a,c		;; 87cf: 79          y
	lxi	b,00800h	;; 87d0: 01 00 08    ...
L87d3:	slar	c		;; 87d3: cb 21       ..
	ralr	a		;; 87d5: cb 17       ..
	ralr	l		;; 87d7: cb 15       ..
	ralr	h		;; 87d9: cb 14       ..
	dsbc	d		;; 87db: ed 52       .R
	jrnc	L87e2		;; 87dd: 30 03       0.
	dad	d		;; 87df: 19          .
	jr	L87e3		;; 87e0: 18 01       ..

L87e2:	inr	c		;; 87e2: 0c          .
L87e3:	djnz	L87d3		;; 87e3: 10 ee       ..
	mov	b,a		;; 87e5: 47          G
	ret			;; 87e6: c9          .

L87e7:	popiy			;; 87e7: fd e1       ..
	xthl			;; 87e9: e3          .
	dad	b		;; 87ea: 09          .
	mov	b,h		;; 87eb: 44          D
	mov	c,l		;; 87ec: 4d          M
	pop	d		;; 87ed: d1          .
	pop	h		;; 87ee: e1          .
	dadc	d		;; 87ef: ed 5a       .Z
	jpe	L884e		;; 87f1: ea 4e 88    .N.
	pciy			;; 87f4: fd e9       ..

L87f6:	popiy			;; 87f6: fd e1       ..
	xthl			;; 87f8: e3          .
	ora	a		;; 87f9: b7          .
	dsbc	b		;; 87fa: ed 42       .B
	mov	b,h		;; 87fc: 44          D
	mov	c,l		;; 87fd: 4d          M
	pop	d		;; 87fe: d1          .
	pop	h		;; 87ff: e1          .
	dsbc	d		;; 8800: ed 52       .R
	jpe	L884e		;; 8802: ea 4e 88    .N.
	pciy			;; 8805: fd e9       ..

L8807:	mov	c,a		;; 8807: 4f          O
	ral			;; 8808: 17          .
	sbb	a		;; 8809: 9f          .
	mov	b,a		;; 880a: 47          G
	mov	l,a		;; 880b: 6f          o
	mov	h,a		;; 880c: 67          g
	ret			;; 880d: c9          .

L880e:	mov	b,h		;; 880e: 44          D
	mov	c,l		;; 880f: 4d          M
	ralr	h		;; 8810: cb 14       ..
	dsbc	h		;; 8812: ed 62       .b
	ret			;; 8814: c9          .

L8815:	popiy			;; 8815: fd e1       ..
	xchg			;; 8817: eb          .
	pop	h		;; 8818: e1          .
	push	h		;; 8819: e5          .
	ralr	h		;; 881a: cb 14       ..
	dsbc	h		;; 881c: ed 62       .b
	xthl			;; 881e: e3          .
	push	h		;; 881f: e5          .
	xchg			;; 8820: eb          .
	pciy			;; 8821: fd e9       ..

L8823:	popiy			;; 8823: fd e1       ..
	lxi	d,00000h	;; 8825: 11 00 00    ...
	xchg			;; 8828: eb          .
	xthl			;; 8829: e3          .
	push	h		;; 882a: e5          .
	xchg			;; 882b: eb          .
	pciy			;; 882c: fd e9       ..

L882e:	bit	7,h		;; 882e: cb 7c       .|
	rz			;; 8830: c8          .
L8831:	xchg			;; 8831: eb          .
	lxi	h,00000h	;; 8832: 21 00 00    ...
	ora	a		;; 8835: b7          .
	dsbc	b		;; 8836: ed 42       .B
	mov	b,h		;; 8838: 44          D
	mov	c,l		;; 8839: 4d          M
	lxi	h,00000h	;; 883a: 21 00 00    ...
	dsbc	d		;; 883d: ed 52       .R
	rpo			;; 883f: e0          .
L8840:	xthl			;; 8840: e3          .
	push	b		;; 8841: c5          .
	push	h		;; 8842: e5          .
	mvi	a,04fh		;; 8843: 3e 4f       >O
	mvi	c,002h		;; 8845: 0e 02       ..
	call	L921e		;; 8847: cd 1e 92    ...
	pop	h		;; 884a: e1          .
	pop	b		;; 884b: c1          .
	xthl			;; 884c: e3          .
	ret			;; 884d: c9          .

L884e:	pushiy			;; 884e: fd e5       ..
	jr	L8840		;; 8850: 18 ee       ..

L8852:	inr	c		;; 8852: 0c          .
	rnz			;; 8853: c0          .
	inr	b		;; 8854: 04          .
	rnz			;; 8855: c0          .
	inr	l		;; 8856: 2c          ,
	rnz			;; 8857: c0          .
	inr	h		;; 8858: 24          $
	rpo			;; 8859: e0          .
	jr	L8840		;; 885a: 18 e4       ..

L885c:	mov	a,c		;; 885c: 79          y
	sui	001h		;; 885d: d6 01       ..
	mov	c,a		;; 885f: 4f          O
	mov	a,b		;; 8860: 78          x
	sbi	000h		;; 8861: de 00       ..
	mov	b,a		;; 8863: 47          G
	lxi	d,00000h	;; 8864: 11 00 00    ...
	dsbc	d		;; 8867: ed 52       .R
	jpe	L8840		;; 8869: ea 40 88    .@.
	ora	c		;; 886c: b1          .
	ora	l		;; 886d: b5          .
	ora	h		;; 886e: b4          .
	ret			;; 886f: c9          .

L8870:	popiy			;; 8870: fd e1       ..
	xthl			;; 8872: e3          .
	ora	a		;; 8873: b7          .
	dsbc	b		;; 8874: ed 42       .B
	pop	d		;; 8876: d1          .
	pop	h		;; 8877: e1          .
	push	psw		;; 8878: f5          .
	dsbc	d		;; 8879: ed 52       .R
	pop	d		;; 887b: d1          .
	jpe	L8887		;; 887c: ea 87 88    ...
	jrnz	L8885		;; 887f: 20 04        .
L8881:	res	7,e		;; 8881: cb bb       ..
	push	d		;; 8883: d5          .
	pop	psw		;; 8884: f1          .
L8885:	pciy			;; 8885: fd e9       ..

L8887:	mvi	a,040h		;; 8887: 3e 40       >@
	jm	L888d		;; 8889: fa 8d 88    ...
	ral			;; 888c: 17          .
L888d:	ora	a		;; 888d: b7          .
	pciy			;; 888e: fd e9       ..

L8890:	popiy			;; 8890: fd e1       ..
	xchg			;; 8892: eb          .
	mov	h,b		;; 8893: 60          `
	mov	l,c		;; 8894: 69          i
	pop	b		;; 8895: c1          .
	ora	a		;; 8896: b7          .
	dsbc	b		;; 8897: ed 42       .B
	pop	b		;; 8899: c1          .
	push	psw		;; 889a: f5          .
	xchg			;; 889b: eb          .
	dsbc	b		;; 889c: ed 42       .B
	pop	d		;; 889e: d1          .
	jpe	L8887		;; 889f: ea 87 88    ...
	jrz	L8881		;; 88a2: 28 dd       (.
	pciy			;; 88a4: fd e9       ..

L88a6:	push	h		;; 88a6: e5          .
	push	b		;; 88a7: c5          .
	pop	d		;; 88a8: d1          .
	xchg			;; 88a9: eb          .
	ora	a		;; 88aa: b7          .
	dsbc	d		;; 88ab: ed 52       .R
	jr	L88b3		;; 88ad: 18 04       ..

	push	h		;; 88af: e5          .
	ora	a		;; 88b0: b7          .
	dsbc	b		;; 88b1: ed 42       .B
L88b3:	mov	b,h		;; 88b3: 44          D
	mov	c,l		;; 88b4: 4d          M
	cpe	L88d3		;; 88b5: ec d3 88    ...
	inx	b		;; 88b8: 03          .
	mov	a,h		;; 88b9: 7c          |
	ral			;; 88ba: 17          .
	pop	h		;; 88bb: e1          .
	ret			;; 88bc: c9          .

	xchg			;; 88bd: eb          .
	mov	h,b		;; 88be: 60          `
	mov	l,c		;; 88bf: 69          i
	ora	a		;; 88c0: b7          .
	dsbc	d		;; 88c1: ed 52       .R
	jr	L88ca		;; 88c3: 18 05       ..

	mov	d,h		;; 88c5: 54          T
	mov	e,l		;; 88c6: 5d          ]
	ora	a		;; 88c7: b7          .
	dsbc	b		;; 88c8: ed 42       .B
L88ca:	mov	b,h		;; 88ca: 44          D
	mov	c,l		;; 88cb: 4d          M
	inx	b		;; 88cc: 03          .
	xchg			;; 88cd: eb          .
	ret			;; 88ce: c9          .

L88cf:	mov	a,h		;; 88cf: 7c          |
	ori	07fh		;; 88d0: f6 7f       ..
	rp			;; 88d2: f0          .
L88d3:	xchg			;; 88d3: eb          .
	lxi	h,00000h	;; 88d4: 21 00 00    ...
	ora	a		;; 88d7: b7          .
	dsbc	d		;; 88d8: ed 52       .R
	ret			;; 88da: c9          .

	popiy			;; 88db: fd e1       ..
	pop	d		;; 88dd: d1          .
	mov	e,d		;; 88de: 5a          Z
	mvi	d,000h		;; 88df: 16 00       ..
	bit	7,e		;; 88e1: cb 7b       .{
	jrz	L88e6		;; 88e3: 28 01       (.
	dcr	d		;; 88e5: 15          .
L88e6:	push	d		;; 88e6: d5          .
	pciy			;; 88e7: fd e9       ..

L88e9:	xchg			;; 88e9: eb          .
	lxi	h,00000h	;; 88ea: 21 00 00    ...
	mov	a,c		;; 88ed: 79          y
	mov	c,e		;; 88ee: 4b          K
L88ef:	srlr	a		;; 88ef: cb 3f       .?
	jrnc	L88f4		;; 88f1: 30 01       0.
	dad	d		;; 88f3: 19          .
L88f4:	slar	e		;; 88f4: cb 23       .#
	ralr	d		;; 88f6: cb 12       ..
	ora	a		;; 88f8: b7          .
	jrnz	L88ef		;; 88f9: 20 f4        .
	mov	a,b		;; 88fb: 78          x
	ora	a		;; 88fc: b7          .
	rz			;; 88fd: c8          .
	mov	d,c		;; 88fe: 51          Q
	mvi	e,000h		;; 88ff: 1e 00       ..
L8901:	srlr	a		;; 8901: cb 3f       .?
	jrnc	L8906		;; 8903: 30 01       0.
	dad	d		;; 8905: 19          .
L8906:	slar	d		;; 8906: cb 22       ."
	ora	a		;; 8908: b7          .
	jrnz	L8901		;; 8909: 20 f6        .
	ret			;; 890b: c9          .

L890c:	lxi	h,00000h	;; 890c: 21 00 00    ...
	mov	a,b		;; 890f: 78          x
	ora	a		;; 8910: b7          .
	jrz	L8926		;; 8911: 28 13       (.
	mvi	b,010h		;; 8913: 06 10       ..
L8915:	ora	a		;; 8915: b7          .
	bit	0,c		;; 8916: cb 41       .A
	jrz	L891b		;; 8918: 28 01       (.
	dad	d		;; 891a: 19          .
L891b:	rarr	h		;; 891b: cb 1c       ..
	rarr	l		;; 891d: cb 1d       ..
	rar			;; 891f: 1f          .
	rarr	c		;; 8920: cb 19       ..
	djnz	L8915		;; 8922: 10 f1       ..
	mov	b,a		;; 8924: 47          G
	ret			;; 8925: c9          .

L8926:	mvi	b,008h		;; 8926: 06 08       ..
L8928:	ora	a		;; 8928: b7          .
	bit	0,c		;; 8929: cb 41       .A
	jrz	L892e		;; 892b: 28 01       (.
	dad	d		;; 892d: 19          .
L892e:	rarr	h		;; 892e: cb 1c       ..
	rarr	l		;; 8930: cb 1d       ..
	rarr	c		;; 8932: cb 19       ..
	djnz	L8928		;; 8934: 10 f2       ..
	mov	b,l		;; 8936: 45          E
	mov	l,h		;; 8937: 6c          l
	mvi	h,000h		;; 8938: 26 00       &.
	ret			;; 893a: c9          .

	mov	c,a		;; 893b: 4f          O
	mov	a,b		;; 893c: 78          x
	sub	c		;; 893d: 91          .
	jr	L8942		;; 893e: 18 02       ..

	mov	c,a		;; 8940: 4f          O
	sub	b		;; 8941: 90          .
L8942:	mov	b,a		;; 8942: 47          G
	jpo	L8948		;; 8943: e2 48 89    .H.
	neg			;; 8946: ed 44       .D
L8948:	mov	a,c		;; 8948: 79          y
	stc			;; 8949: 37          7
	rm			;; 894a: f8          .
	inr	b		;; 894b: 04          .
	ora	a		;; 894c: b7          .
	ret			;; 894d: c9          .

L894e:	mov	c,a		;; 894e: 4f          O
	mov	a,b		;; 894f: 78          x
	sub	c		;; 8950: 91          .
	jr	L8955		;; 8951: 18 02       ..

L8953:	mov	c,a		;; 8953: 4f          O
	sub	b		;; 8954: 90          .
L8955:	mov	b,a		;; 8955: 47          G
	inr	b		;; 8956: 04          .
	mov	a,c		;; 8957: 79          y
	ret			;; 8958: c9          .

	ora	a		;; 8959: b7          .
	jp	L895f		;; 895a: f2 5f 89    ._.
	neg			;; 895d: ed 44       .D
L895f:	pop	h		;; 895f: e1          .
	xthl			;; 8960: e3          .
	mvi	c,040h		;; 8961: 0e 40       .@
	jr	L8974		;; 8963: 18 0f       ..

L8965:	pop	h		;; 8965: e1          .
	xthl			;; 8966: e3          .
	mvi	c,000h		;; 8967: 0e 00       ..
	mov	l,a		;; 8969: 6f          o
	jr	L897e		;; 896a: 18 12       ..

L896c:	pop	h		;; 896c: e1          .
	xthl			;; 896d: e3          .
	ora	a		;; 896e: b7          .
	jm	L89a7		;; 896f: fa a7 89    ...
	mvi	c,000h		;; 8972: 0e 00       ..
L8974:	mov	l,a		;; 8974: 6f          o
	bit	7,h		;; 8975: cb 7c       .|
	jrz	L897e		;; 8977: 28 05       (.
	setb	7,c		;; 8979: cb f9       ..
	sub	a		;; 897b: 97          .
	sub	h		;; 897c: 94          .
	mov	h,a		;; 897d: 67          g
L897e:	mov	a,l		;; 897e: 7d          }
	ora	a		;; 897f: b7          .
	jrz	L89a7		;; 8980: 28 25       (%
	mov	a,h		;; 8982: 7c          |
	ora	a		;; 8983: b7          .
	rz			;; 8984: c8          .
	mvi	b,008h		;; 8985: 06 08       ..
	mov	a,l		;; 8987: 7d          }
	sui	002h		;; 8988: d6 02       ..
	jrnz	L8991		;; 898a: 20 05        .
	srlr	h		;; 898c: cb 3c       .<
	ral			;; 898e: 17          .
	jr	L899c		;; 898f: 18 0b       ..

L8991:	sub	a		;; 8991: 97          .
L8992:	slar	h		;; 8992: cb 24       .$
	ral			;; 8994: 17          .
	cmp	l		;; 8995: bd          .
	jrc	L899a		;; 8996: 38 02       8.
	sub	l		;; 8998: 95          .
	inr	h		;; 8999: 24          $
L899a:	djnz	L8992		;; 899a: 10 f6       ..
L899c:	bit	7,c		;; 899c: cb 79       .y
	rz			;; 899e: c8          .
	neg			;; 899f: ed 44       .D
	rz			;; 89a1: c8          .
	bit	6,c		;; 89a2: cb 71       .q
	rnz			;; 89a4: c0          .
	add	l		;; 89a5: 85          .
	ret			;; 89a6: c9          .

L89a7:	mvi	a,04ah		;; 89a7: 3e 4a       >J
	mvi	c,002h		;; 89a9: 0e 02       ..
	call	L921e		;; 89ab: cd 1e 92    ...
	mvi	a,001h		;; 89ae: 3e 01       >.
	ret			;; 89b0: c9          .

L89b1:	pop	h		;; 89b1: e1          .
	xthl			;; 89b2: e3          .
	mvi	c,040h		;; 89b3: 0e 40       .@
	mov	l,a		;; 89b5: 6f          o
	jr	L89d0		;; 89b6: 18 18       ..

	pop	h		;; 89b8: e1          .
	xthl			;; 89b9: e3          .
	mvi	c,000h		;; 89ba: 0e 00       ..
	ora	a		;; 89bc: b7          .
	jp	L89c4		;; 89bd: f2 c4 89    ...
	setb	7,c		;; 89c0: cb f9       ..
	neg			;; 89c2: ed 44       .D
L89c4:	mov	l,a		;; 89c4: 6f          o
	bit	7,h		;; 89c5: cb 7c       .|
	jrz	L89d0		;; 89c7: 28 07       (.
	mov	a,c		;; 89c9: 79          y
	xri	080h		;; 89ca: ee 80       ..
	mov	c,a		;; 89cc: 4f          O
	sub	a		;; 89cd: 97          .
	sub	h		;; 89ce: 94          .
	mov	h,a		;; 89cf: 67          g
L89d0:	mov	a,l		;; 89d0: 7d          }
	ora	a		;; 89d1: b7          .
	jrz	L89fe		;; 89d2: 28 2a       (*
	mov	a,h		;; 89d4: 7c          |
	ora	a		;; 89d5: b7          .
	rz			;; 89d6: c8          .
	mvi	b,008h		;; 89d7: 06 08       ..
	mov	a,l		;; 89d9: 7d          }
	sui	002h		;; 89da: d6 02       ..
	jrnz	L89e2		;; 89dc: 20 04        .
	srlr	h		;; 89de: cb 3c       .<
	jr	L89ed		;; 89e0: 18 0b       ..

L89e2:	sub	a		;; 89e2: 97          .
L89e3:	slar	h		;; 89e3: cb 24       .$
	ral			;; 89e5: 17          .
	cmp	l		;; 89e6: bd          .
	jrc	L89eb		;; 89e7: 38 02       8.
	sub	l		;; 89e9: 95          .
	inr	h		;; 89ea: 24          $
L89eb:	djnz	L89e3		;; 89eb: 10 f6       ..
L89ed:	mov	a,h		;; 89ed: 7c          |
	bit	6,c		;; 89ee: cb 71       .q
	rnz			;; 89f0: c0          .
	bit	7,c		;; 89f1: cb 79       .y
	jrnz	L89fb		;; 89f3: 20 06        .
	ora	a		;; 89f5: b7          .
	rp			;; 89f6: f0          .
	mvi	a,04fh		;; 89f7: 3e 4f       >O
	jr	L8a00		;; 89f9: 18 05       ..

L89fb:	neg			;; 89fb: ed 44       .D
	ret			;; 89fd: c9          .

L89fe:	mvi	a,04ah		;; 89fe: 3e 4a       >J
L8a00:	mvi	c,002h		;; 8a00: 0e 02       ..
	call	L921e		;; 8a02: cd 1e 92    ...
	mvi	a,001h		;; 8a05: 3e 01       >.
	ret			;; 8a07: c9          .

L8a08:	pop	h		;; 8a08: e1          .
	xthl			;; 8a09: e3          .
	mvi	c,000h		;; 8a0a: 0e 00       ..
	mov	l,a		;; 8a0c: 6f          o
	jr	L8a23		;; 8a0d: 18 14       ..

	pop	h		;; 8a0f: e1          .
	xthl			;; 8a10: e3          .
	mov	c,a		;; 8a11: 4f          O
	ora	a		;; 8a12: b7          .
	jp	L8a18		;; 8a13: f2 18 8a    ...
	neg			;; 8a16: ed 44       .D
L8a18:	mov	l,a		;; 8a18: 6f          o
	mov	a,c		;; 8a19: 79          y
	xra	h		;; 8a1a: ac          .
	mov	c,a		;; 8a1b: 4f          O
	bit	7,h		;; 8a1c: cb 7c       .|
	jrz	L8a23		;; 8a1e: 28 03       (.
	sub	a		;; 8a20: 97          .
	sub	h		;; 8a21: 94          .
	mov	h,a		;; 8a22: 67          g
L8a23:	mov	a,l		;; 8a23: 7d          }
	ora	a		;; 8a24: b7          .
	jrz	L8a44		;; 8a25: 28 1d       (.
	mov	a,h		;; 8a27: 7c          |
	ora	a		;; 8a28: b7          .
	jrz	L8a44		;; 8a29: 28 19       (.
	mvi	b,008h		;; 8a2b: 06 08       ..
	sub	a		;; 8a2d: 97          .
L8a2e:	ora	a		;; 8a2e: b7          .
	bit	0,l		;; 8a2f: cb 45       .E
	jrz	L8a34		;; 8a31: 28 01       (.
	add	h		;; 8a33: 84          .
L8a34:	rar			;; 8a34: 1f          .
	rarr	l		;; 8a35: cb 1d       ..
	djnz	L8a2e		;; 8a37: 10 f5       ..
	mov	h,a		;; 8a39: 67          g
	bit	7,c		;; 8a3a: cb 79       .y
	rz			;; 8a3c: c8          .
	cma			;; 8a3d: 2f          /
	mov	h,a		;; 8a3e: 67          g
	mov	a,l		;; 8a3f: 7d          }
	cma			;; 8a40: 2f          /
	mov	l,a		;; 8a41: 6f          o
	inx	h		;; 8a42: 23          #
	ret			;; 8a43: c9          .

L8a44:	lxi	h,00000h	;; 8a44: 21 00 00    ...
	ret			;; 8a47: c9          .

L8a48:	popiy			;; 8a48: fd e1       ..
	pop	psw		;; 8a4a: f1          .
	pop	d		;; 8a4b: d1          .
	mov	e,a		;; 8a4c: 5f          _
	pop	h		;; 8a4d: e1          .
	mov	a,d		;; 8a4e: 7a          z
	ora	a		;; 8a4f: b7          .
	jrz	L8a5c		;; 8a50: 28 0a       (.
	mov	a,m		;; 8a52: 7e          ~
	sub	d		;; 8a53: 92          .
	jrc	L8a5c		;; 8a54: 38 06       8.
	inr	a		;; 8a56: 3c          <
	sub	e		;; 8a57: 93          .
	jrnc	L8a66		;; 8a58: 30 0c       0.
	mov	m,d		;; 8a5a: 72          r
	dcr	m		;; 8a5b: 35          5
L8a5c:	mvi	a,054h		;; 8a5c: 3e 54       >T
	mvi	c,002h		;; 8a5e: 0e 02       ..
	pushiy			;; 8a60: fd e5       ..
	call	L921e		;; 8a62: cd 1e 92    ...
	ret			;; 8a65: c9          .

L8a66:	jrz	L8a7a		;; 8a66: 28 12       (.
	push	psw		;; 8a68: f5          .
	mov	a,m		;; 8a69: 7e          ~
	sub	e		;; 8a6a: 93          .
	mov	m,a		;; 8a6b: 77          w
	pop	psw		;; 8a6c: f1          .
	mvi	b,000h		;; 8a6d: 06 00       ..
	mov	c,d		;; 8a6f: 4a          J
	dad	b		;; 8a70: 09          .
	xchg			;; 8a71: eb          .
	mvi	h,000h		;; 8a72: 26 00       &.
	dad	d		;; 8a74: 19          .
	mov	c,a		;; 8a75: 4f          O
	ldir			;; 8a76: ed b0       ..
	pciy			;; 8a78: fd e9       ..

L8a7a:	mov	m,d		;; 8a7a: 72          r
	dcr	m		;; 8a7b: 35          5
	pciy			;; 8a7c: fd e9       ..

L8a7e:	popiy			;; 8a7e: fd e1       ..
	pop	psw		;; 8a80: f1          .
	pop	d		;; 8a81: d1          .
	pop	h		;; 8a82: e1          .
	mov	e,a		;; 8a83: 5f          _
	pop	b		;; 8a84: c1          .
	push	b		;; 8a85: c5          .
	ora	a		;; 8a86: b7          .
	jrz	L8ac3		;; 8a87: 28 3a       (:
	mov	a,m		;; 8a89: 7e          ~
	inr	a		;; 8a8a: 3c          <
	cmp	e		;; 8a8b: bb          .
	jrc	L8ac3		;; 8a8c: 38 35       85
	mov	a,c		;; 8a8e: 79          y
	add	m		;; 8a8f: 86          .
	jrc	L8ac3		;; 8a90: 38 31       81
	mov	b,a		;; 8a92: 47          G
	mov	a,d		;; 8a93: 7a          z
	cmp	b		;; 8a94: b8          .
	jrc	L8ac3		;; 8a95: 38 2c       8,
	mov	a,c		;; 8a97: 79          y
	ora	a		;; 8a98: b7          .
	jrz	L8ad4		;; 8a99: 28 39       (9
	mov	a,m		;; 8a9b: 7e          ~
	inr	a		;; 8a9c: 3c          <
	sub	e		;; 8a9d: 93          .
	jrz	L8ab3		;; 8a9e: 28 13       (.
	push	h		;; 8aa0: e5          .
	push	d		;; 8aa1: d5          .
	push	b		;; 8aa2: c5          .
	mov	e,c		;; 8aa3: 59          Y
	mvi	b,000h		;; 8aa4: 06 00       ..
	mov	c,m		;; 8aa6: 4e          N
	dad	b		;; 8aa7: 09          .
	xchg			;; 8aa8: eb          .
	mvi	h,000h		;; 8aa9: 26 00       &.
	dad	d		;; 8aab: 19          .
	xchg			;; 8aac: eb          .
	mov	c,a		;; 8aad: 4f          O
	lddr			;; 8aae: ed b8       ..
	pop	b		;; 8ab0: c1          .
	pop	d		;; 8ab1: d1          .
	pop	h		;; 8ab2: e1          .
L8ab3:	mov	m,b		;; 8ab3: 70          p
	mvi	b,000h		;; 8ab4: 06 00       ..
	mvi	d,000h		;; 8ab6: 16 00       ..
	dad	d		;; 8ab8: 19          .
	xchg			;; 8ab9: eb          .
	lxi	h,00001h	;; 8aba: 21 01 00    ...
	dad	sp		;; 8abd: 39          9
	ldir			;; 8abe: ed b0       ..
	sphl			;; 8ac0: f9          .
	pciy			;; 8ac1: fd e9       ..

L8ac3:	pushiy			;; 8ac3: fd e5       ..
	mvi	a,054h		;; 8ac5: 3e 54       >T
	mvi	c,002h		;; 8ac7: 0e 02       ..
	call	L921e		;; 8ac9: cd 1e 92    ...
	popiy			;; 8acc: fd e1       ..
	pop	h		;; 8ace: e1          .
	push	h		;; 8acf: e5          .
	mvi	h,000h		;; 8ad0: 26 00       &.
	dad	sp		;; 8ad2: 39          9
	sphl			;; 8ad3: f9          .
L8ad4:	inx	sp		;; 8ad4: 33          3
	pciy			;; 8ad5: fd e9       ..

L8ad7:	popiy			;; 8ad7: fd e1       ..
	lxi	h,00000h	;; 8ad9: 21 00 00    ...
	dad	sp		;; 8adc: 39          9
	mov	c,m		;; 8add: 4e          N
	inx	h		;; 8ade: 23          #
	xchg			;; 8adf: eb          .
	mvi	h,000h		;; 8ae0: 26 00       &.
	mov	l,c		;; 8ae2: 69          i
	dad	d		;; 8ae3: 19          .
	mov	b,m		;; 8ae4: 46          F
	inx	h		;; 8ae5: 23          #
	mov	a,b		;; 8ae6: 78          x
	ora	a		;; 8ae7: b7          .
	jrz	L8b07		;; 8ae8: 28 1d       (.
	mov	a,c		;; 8aea: 79          y
	sub	b		;; 8aeb: 90          .
	jrc	L8b07		;; 8aec: 38 19       8.
	mov	c,a		;; 8aee: 4f          O
	inr	c		;; 8aef: 0c          .
L8af0:	ldax	d		;; 8af0: 1a          .
	cmp	m		;; 8af1: be          .
	jrnz	L8b03		;; 8af2: 20 0f        .
	push	h		;; 8af4: e5          .
	push	d		;; 8af5: d5          .
	push	b		;; 8af6: c5          .
L8af7:	dcr	b		;; 8af7: 05          .
	jrz	L8b0a		;; 8af8: 28 10       (.
	inx	d		;; 8afa: 13          .
	inx	h		;; 8afb: 23          #
	ldax	d		;; 8afc: 1a          .
	cmp	m		;; 8afd: be          .
	jrz	L8af7		;; 8afe: 28 f7       (.
	pop	b		;; 8b00: c1          .
	pop	d		;; 8b01: d1          .
	pop	h		;; 8b02: e1          .
L8b03:	inx	d		;; 8b03: 13          .
	dcr	c		;; 8b04: 0d          .
	jrnz	L8af0		;; 8b05: 20 e9        .
L8b07:	sub	a		;; 8b07: 97          .
	jr	L8b14		;; 8b08: 18 0a       ..

L8b0a:	pop	b		;; 8b0a: c1          .
	pop	d		;; 8b0b: d1          .
	pop	h		;; 8b0c: e1          .
	pop	d		;; 8b0d: d1          .
	push	d		;; 8b0e: d5          .
	mov	a,e		;; 8b0f: 7b          {
	sub	b		;; 8b10: 90          .
	inr	a		;; 8b11: 3c          <
	sub	c		;; 8b12: 91          .
	inr	a		;; 8b13: 3c          <
L8b14:	mvi	d,000h		;; 8b14: 16 00       ..
	mov	e,b		;; 8b16: 58          X
	dad	d		;; 8b17: 19          .
	sphl			;; 8b18: f9          .
	mov	c,a		;; 8b19: 4f          O
	mvi	b,000h		;; 8b1a: 06 00       ..
	mov	h,b		;; 8b1c: 60          `
	mov	l,b		;; 8b1d: 68          h
	pciy			;; 8b1e: fd e9       ..

L8b20:	popiy			;; 8b20: fd e1       ..
	lxi	h,00000h	;; 8b22: 21 00 00    ...
	dad	sp		;; 8b25: 39          9
	mov	a,m		;; 8b26: 7e          ~
	xchg			;; 8b27: eb          .
	mvi	h,000h		;; 8b28: 26 00       &.
	mov	l,a		;; 8b2a: 6f          o
	dad	sp		;; 8b2b: 39          9
	inx	h		;; 8b2c: 23          #
	add	m		;; 8b2d: 86          .
	xchg			;; 8b2e: eb          .
	cc	L8b7c		;; 8b2f: dc 7c 8b    .|.
	xchg			;; 8b32: eb          .
	ldax	d		;; 8b33: 1a          .
	ora	a		;; 8b34: b7          .
	jrz	L8b56		;; 8b35: 28 1f       (.
	mov	c,a		;; 8b37: 4f          O
	mov	b,m		;; 8b38: 46          F
	cmp	b		;; 8b39: b8          .
	jrnc	L8b59		;; 8b3a: 30 1d       0.
	mvi	h,0ffh		;; 8b3c: 26 ff       &.
	neg			;; 8b3e: ed 44       .D
	mov	l,a		;; 8b40: 6f          o
	dad	d		;; 8b41: 19          .
	sphl			;; 8b42: f9          .
	xchg			;; 8b43: eb          .
	mov	a,b		;; 8b44: 78          x
	add	c		;; 8b45: 81          .
	mvi	b,000h		;; 8b46: 06 00       ..
	mov	c,a		;; 8b48: 4f          O
	inx	b		;; 8b49: 03          .
	inx	b		;; 8b4a: 03          .
	ldir			;; 8b4b: ed b0       ..
	lxi	h,00000h	;; 8b4d: 21 00 00    ...
	dad	sp		;; 8b50: 39          9
	mov	c,m		;; 8b51: 4e          N
	inx	h		;; 8b52: 23          #
	ldir			;; 8b53: ed b0       ..
	mov	m,a		;; 8b55: 77          w
L8b56:	sphl			;; 8b56: f9          .
	pciy			;; 8b57: fd e9       ..

L8b59:	xchg			;; 8b59: eb          .
	mvi	h,0ffh		;; 8b5a: 26 ff       &.
	mov	a,b		;; 8b5c: 78          x
	neg			;; 8b5d: ed 44       .D
	mov	l,a		;; 8b5f: 6f          o
	dad	sp		;; 8b60: 39          9
	sphl			;; 8b61: f9          .
	xchg			;; 8b62: eb          .
	mov	a,b		;; 8b63: 78          x
	add	c		;; 8b64: 81          .
	mov	m,a		;; 8b65: 77          w
	push	h		;; 8b66: e5          .
	mov	c,b		;; 8b67: 48          H
	mvi	b,000h		;; 8b68: 06 00       ..
	inx	b		;; 8b6a: 03          .
	ldir			;; 8b6b: ed b0       ..
	xchg			;; 8b6d: eb          .
	dcx	d		;; 8b6e: 1b          .
	pop	h		;; 8b6f: e1          .
	dcx	h		;; 8b70: 2b          +
	mov	c,a		;; 8b71: 4f          O
	mvi	b,000h		;; 8b72: 06 00       ..
	inx	b		;; 8b74: 03          .
	lddr			;; 8b75: ed b8       ..
	xchg			;; 8b77: eb          .
	inx	h		;; 8b78: 23          #
	sphl			;; 8b79: f9          .
	pciy			;; 8b7a: fd e9       ..

L8b7c:	ldax	d		;; 8b7c: 1a          .
	cma			;; 8b7d: 2f          /
	jmp	L8bcd		;; 8b7e: c3 cd 8b    ...

L8b81:	popiy			;; 8b81: fd e1       ..
	xchg			;; 8b83: eb          .
	lxi	h,00000h	;; 8b84: 21 00 00    ...
	dad	sp		;; 8b87: 39          9
	cmp	m		;; 8b88: be          .
	cc	L8bcd		;; 8b89: dc cd 8b    ...
	mvi	b,000h		;; 8b8c: 06 00       ..
	mov	c,m		;; 8b8e: 4e          N
	inx	b		;; 8b8f: 03          .
	ldir			;; 8b90: ed b0       ..
	sphl			;; 8b92: f9          .
	pciy			;; 8b93: fd e9       ..

L8b95:	popiy			;; 8b95: fd e1       ..
	lxi	h,00000h	;; 8b97: 21 00 00    ...
	dad	sp		;; 8b9a: 39          9
	mov	c,m		;; 8b9b: 4e          N
	mvi	b,000h		;; 8b9c: 06 00       ..
	inx	b		;; 8b9e: 03          .
	dad	b		;; 8b9f: 09          .
	mov	e,m		;; 8ba0: 5e          ^
	inx	h		;; 8ba1: 23          #
	mov	d,m		;; 8ba2: 56          V
	push	d		;; 8ba3: d5          .
	xchg			;; 8ba4: eb          .
	mov	h,d		;; 8ba5: 62          b
	mov	l,e		;; 8ba6: 6b          k
	dcx	h		;; 8ba7: 2b          +
	dcx	h		;; 8ba8: 2b          +
	inx	b		;; 8ba9: 03          .
	inx	b		;; 8baa: 03          .
	lddr			;; 8bab: ed b8       ..
	pop	h		;; 8bad: e1          .
	pciy			;; 8bae: fd e9       ..

L8bb0:	popiy			;; 8bb0: fd e1       ..
	lxi	h,00000h	;; 8bb2: 21 00 00    ...
	dad	sp		;; 8bb5: 39          9
	cmp	m		;; 8bb6: be          .
	cc	L8bcd		;; 8bb7: dc cd 8b    ...
	sub	m		;; 8bba: 96          .
	jrz	L8bcb		;; 8bbb: 28 0e       (.
	mov	d,h		;; 8bbd: 54          T
	mov	e,l		;; 8bbe: 5d          ]
	mvi	b,000h		;; 8bbf: 06 00       ..
	mov	c,a		;; 8bc1: 4f          O
	ora	a		;; 8bc2: b7          .
	dsbc	b		;; 8bc3: ed 42       .B
	sphl			;; 8bc5: f9          .
	xchg			;; 8bc6: eb          .
	mov	c,m		;; 8bc7: 4e          N
	inx	b		;; 8bc8: 03          .
	ldir			;; 8bc9: ed b0       ..
L8bcb:	pciy			;; 8bcb: fd e9       ..

L8bcd:	push	d		;; 8bcd: d5          .
	push	psw		;; 8bce: f5          .
	push	h		;; 8bcf: e5          .
	pushiy			;; 8bd0: fd e5       ..
	mvi	a,054h		;; 8bd2: 3e 54       >T
	mvi	c,002h		;; 8bd4: 0e 02       ..
	call	L921e		;; 8bd6: cd 1e 92    ...
	popiy			;; 8bd9: fd e1       ..
	pop	h		;; 8bdb: e1          .
	pop	psw		;; 8bdc: f1          .
	mov	c,m		;; 8bdd: 4e          N
	mov	m,a		;; 8bde: 77          w
	push	h		;; 8bdf: e5          .
	mvi	b,000h		;; 8be0: 06 00       ..
	dad	b		;; 8be2: 09          .
	xchg			;; 8be3: eb          .
	pop	h		;; 8be4: e1          .
	mov	c,a		;; 8be5: 4f          O
	dad	b		;; 8be6: 09          .
	inx	b		;; 8be7: 03          .
	lddr			;; 8be8: ed b8       ..
	xchg			;; 8bea: eb          .
	pop	d		;; 8beb: d1          .
	pop	b		;; 8bec: c1          .
	inx	h		;; 8bed: 23          #
	sphl			;; 8bee: f9          .
	push	b		;; 8bef: c5          .
	ret			;; 8bf0: c9          .

	popiy			;; 8bf1: fd e1       ..
	pop	b		;; 8bf3: c1          .
	push	b		;; 8bf4: c5          .
	mvi	h,000h		;; 8bf5: 26 00       &.
	mov	l,c		;; 8bf7: 69          i
	dad	sp		;; 8bf8: 39          9
	inx	h		;; 8bf9: 23          #
	sphl			;; 8bfa: f9          .
	mvi	b,000h		;; 8bfb: 06 00       ..
	mov	h,b		;; 8bfd: 60          `
	mov	l,b		;; 8bfe: 68          h
	pciy			;; 8bff: fd e9       ..

L8c01:	mvi	a,040h		;; 8c01: 3e 40       >@
	jm	L8c07		;; 8c03: fa 07 8c    ...
	ral			;; 8c06: 17          .
L8c07:	ora	a		;; 8c07: b7          .
	ret			;; 8c08: c9          .

L8c09:	mvi	a,001h		;; 8c09: 3e 01       >.
	rz			;; 8c0b: c8          .
	dcr	a		;; 8c0c: 3d          =
	ret			;; 8c0d: c9          .

L8c0e:	mvi	a,001h		;; 8c0e: 3e 01       >.
	rnz			;; 8c10: c0          .
	dcr	a		;; 8c11: 3d          =
	ret			;; 8c12: c9          .

L8c13:	mvi	a,001h		;; 8c13: 3e 01       >.
	rm			;; 8c15: f8          .
	dcr	a		;; 8c16: 3d          =
	ret			;; 8c17: c9          .

L8c18:	mvi	a,001h		;; 8c18: 3e 01       >.
	rp			;; 8c1a: f0          .
	dcr	a		;; 8c1b: 3d          =
	ret			;; 8c1c: c9          .

	ora	a		;; 8c1d: b7          .
	rp			;; 8c1e: f0          .
	neg			;; 8c1f: ed 44       .D
	ret			;; 8c21: c9          .

	pushiy			;; 8c22: fd e5       ..
	jr	L8c28		;; 8c24: 18 02       ..

L8c26:	pushix			;; 8c26: dd e5       ..
L8c28:	pop	d		;; 8c28: d1          .
	pop	h		;; 8c29: e1          .
	mov	a,m		;; 8c2a: 7e          ~
	inx	h		;; 8c2b: 23          #
	push	h		;; 8c2c: e5          .
	xchg			;; 8c2d: eb          .
	mov	e,a		;; 8c2e: 5f          _
	ral			;; 8c2f: 17          .
	sbb	a		;; 8c30: 9f          .
	mov	d,a		;; 8c31: 57          W
	dad	d		;; 8c32: 19          .
	jmp	L8d67		;; 8c33: c3 67 8d    .g.

	pushiy			;; 8c36: fd e5       ..
	jr	L8c3c		;; 8c38: 18 02       ..

L8c3a:	pushix			;; 8c3a: dd e5       ..
L8c3c:	pop	d		;; 8c3c: d1          .
	xthl			;; 8c3d: e3          .
	mov	a,m		;; 8c3e: 7e          ~
	inx	h		;; 8c3f: 23          #
	xthl			;; 8c40: e3          .
	push	h		;; 8c41: e5          .
	mov	l,a		;; 8c42: 6f          o
	ral			;; 8c43: 17          .
	sbb	a		;; 8c44: 9f          .
	mov	h,a		;; 8c45: 67          g
	dad	d		;; 8c46: 19          .
	pop	d		;; 8c47: d1          .
	mov	m,c		;; 8c48: 71          q
	inx	h		;; 8c49: 23          #
	mov	m,b		;; 8c4a: 70          p
	inx	h		;; 8c4b: 23          #
	mov	m,e		;; 8c4c: 73          s
	inx	h		;; 8c4d: 23          #
	mov	m,d		;; 8c4e: 72          r
	inx	h		;; 8c4f: 23          #
	xchg			;; 8c50: eb          .
	ret			;; 8c51: c9          .

	popiy			;; 8c52: fd e1       ..
	pop	b		;; 8c54: c1          .
	pop	d		;; 8c55: d1          .
	pop	h		;; 8c56: e1          .
	ldir			;; 8c57: ed b0       ..
	pciy			;; 8c59: fd e9       ..

L8c5b:	lhld	L8c82		;; 8c5b: 2a 82 8c    *..
	shld	00010h		;; 8c5e: 22 10 00    "..
	lhld	L8c84		;; 8c61: 2a 84 8c    *..
	shld	00012h		;; 8c64: 22 12 00    "..
	lhld	L8c86		;; 8c67: 2a 86 8c    *..
	shld	00014h		;; 8c6a: 22 14 00    "..
	mvi	a,0c3h		;; 8c6d: 3e c3       >.
	sta	00018h		;; 8c6f: 32 18 00    2..
	sta	00020h		;; 8c72: 32 20 00    2 .
	lxi	h,L8c87		;; 8c75: 21 87 8c    ...
	shld	00019h		;; 8c78: 22 19 00    "..
	lxi	h,L8ca6		;; 8c7b: 21 a6 8c    ...
	shld	00021h		;; 8c7e: 22 21 00    "..
	ret			;; 8c81: c9          .

L8c82:	pushix			;; 8c82: dd e5       ..
L8c84:	pop	d		;; 8c84: d1          .
	dad	d		;; 8c85: 19          .
L8c86:	ret			;; 8c86: c9          .

L8c87:	xthl			;; 8c87: e3          .
	mov	e,m		;; 8c88: 5e          ^
	inx	h		;; 8c89: 23          #
	xthl			;; 8c8a: e3          .
	mvi	d,0ffh		;; 8c8b: 16 ff       ..
	pushix			;; 8c8d: dd e5       ..
	bit	7,e		;; 8c8f: cb 7b       .{
	jz	L8c9b		;; 8c91: ca 9b 8c    ...
	pop	h		;; 8c94: e1          .
	dad	d		;; 8c95: 19          .
	mov	e,m		;; 8c96: 5e          ^
	inx	h		;; 8c97: 23          #
	mov	d,m		;; 8c98: 56          V
	xchg			;; 8c99: eb          .
	ret			;; 8c9a: c9          .

L8c9b:	xthl			;; 8c9b: e3          .
	setb	7,e		;; 8c9c: cb fb       ..
	dad	d		;; 8c9e: 19          .
	pop	d		;; 8c9f: d1          .
	mov	m,e		;; 8ca0: 73          s
	inx	h		;; 8ca1: 23          #
	mov	m,d		;; 8ca2: 72          r
	inx	h		;; 8ca3: 23          #
	xchg			;; 8ca4: eb          .
	ret			;; 8ca5: c9          .

L8ca6:	xthl			;; 8ca6: e3          .
	mov	d,m		;; 8ca7: 56          V
	inx	h		;; 8ca8: 23          #
	bit	7,d		;; 8ca9: cb 7a       .z
	jrnz	L8cb5		;; 8cab: 20 08        .
	mov	e,m		;; 8cad: 5e          ^
	inx	h		;; 8cae: 23          #
	xthl			;; 8caf: e3          .
	sded	L8e70		;; 8cb0: ed 53 70 8e .Sp.
	ret			;; 8cb4: c9          .

L8cb5:	xthl			;; 8cb5: e3          .
	rarr	d		;; 8cb6: cb 1a       ..
	jrc	L8cc7		;; 8cb8: 38 0d       8.
	rarr	d		;; 8cba: cb 1a       ..
	jrc	L8cd6		;; 8cbc: 38 18       8.
	rarr	d		;; 8cbe: cb 1a       ..
	jrc	L8d0f		;; 8cc0: 38 4d       8M
	mov	e,m		;; 8cc2: 5e          ^
	inx	h		;; 8cc3: 23          #
	mov	d,m		;; 8cc4: 56          V
	xchg			;; 8cc5: eb          .
	ret			;; 8cc6: c9          .

L8cc7:	rarr	d		;; 8cc7: cb 1a       ..
	jrc	L8cf2		;; 8cc9: 38 27       8'
	rarr	d		;; 8ccb: cb 1a       ..
	jrc	L8d14		;; 8ccd: 38 45       8E
	xchg			;; 8ccf: eb          .
	pop	h		;; 8cd0: e1          .
	xthl			;; 8cd1: e3          .
	mov	m,e		;; 8cd2: 73          s
	inx	h		;; 8cd3: 23          #
	mov	m,d		;; 8cd4: 72          r
	ret			;; 8cd5: c9          .

L8cd6:	rarr	d		;; 8cd6: cb 1a       ..
	jc	L8d1b		;; 8cd8: da 1b 8d    ...
	push	psw		;; 8cdb: f5          .
	mov	a,d		;; 8cdc: 7a          z
	ani	00fh		;; 8cdd: e6 0f       ..
	pushix			;; 8cdf: dd e5       ..
L8ce1:	popiy			;; 8ce1: fd e1       ..
	dcr	a		;; 8ce3: 3d          =
	jm	L8cf0		;; 8ce4: fa f0 8c    ...
	ldy	d,-127		;; 8ce7: fd 56 81    .V.
	ldy	e,-128		;; 8cea: fd 5e 80    .^.
	push	d		;; 8ced: d5          .
	jr	L8ce1		;; 8cee: 18 f1       ..

L8cf0:	pop	psw		;; 8cf0: f1          .
	ret			;; 8cf1: c9          .

L8cf2:	rarr	d		;; 8cf2: cb 1a       ..
	jrc	L8d21		;; 8cf4: 38 2b       8+
	push	psw		;; 8cf6: f5          .
	mov	a,d		;; 8cf7: 7a          z
	ani	00fh		;; 8cf8: e6 0f       ..
	pushix			;; 8cfa: dd e5       ..
	pop	d		;; 8cfc: d1          .
	ora	a		;; 8cfd: b7          .
	jrz	L8d0c		;; 8cfe: 28 0c       (.
L8d00:	push	d		;; 8d00: d5          .
	popiy			;; 8d01: fd e1       ..
	ldy	d,-127		;; 8d03: fd 56 81    .V.
	ldy	e,-128		;; 8d06: fd 5e 80    .^.
	dcr	a		;; 8d09: 3d          =
	jrnz	L8d00		;; 8d0a: 20 f4        .
L8d0c:	dad	d		;; 8d0c: 19          .
	pop	psw		;; 8d0d: f1          .
	ret			;; 8d0e: c9          .

L8d0f:	mov	l,a		;; 8d0f: 6f          o
	ral			;; 8d10: 17          .
	sbb	a		;; 8d11: 9f          .
	mov	h,a		;; 8d12: 67          g
	ret			;; 8d13: c9          .

L8d14:	xchg			;; 8d14: eb          .
	mov	h,b		;; 8d15: 60          `
	mov	l,c		;; 8d16: 69          i
	ora	a		;; 8d17: b7          .
	dsbc	d		;; 8d18: ed 52       .R
	ret			;; 8d1a: c9          .

L8d1b:	mov	c,a		;; 8d1b: 4f          O
	mvi	b,000h		;; 8d1c: 06 00       ..
	mov	h,b		;; 8d1e: 60          `
	mov	l,b		;; 8d1f: 68          h
	ret			;; 8d20: c9          .

L8d21:	mov	b,h		;; 8d21: 44          D
	mov	c,l		;; 8d22: 4d          M
	lxi	h,00000h	;; 8d23: 21 00 00    ...
	ret			;; 8d26: c9          .

L8d27:	pop	h		;; 8d27: e1          .
	pop	b		;; 8d28: c1          .
	mov	e,m		;; 8d29: 5e          ^
	inx	h		;; 8d2a: 23          #
	mvi	d,0ffh		;; 8d2b: 16 ff       ..
	mov	a,e		;; 8d2d: 7b          {
	ora	a		;; 8d2e: b7          .
	jrnz	L8d32		;; 8d2f: 20 01        .
	mov	d,a		;; 8d31: 57          W
L8d32:	xchg			;; 8d32: eb          .
	dad	sp		;; 8d33: 39          9
	sphl			;; 8d34: f9          .
	pushiy			;; 8d35: fd e5       ..
	pushix			;; 8d37: dd e5       ..
	push	b		;; 8d39: c5          .
	lxix	00084h		;; 8d3a: dd 21 84 00 ....
	dadx	sp		;; 8d3e: dd 39       .9
	xchg			;; 8d40: eb          .
	mov	e,m		;; 8d41: 5e          ^
	inx	h		;; 8d42: 23          #
	mvi	d,000h		;; 8d43: 16 00       ..
	xchg			;; 8d45: eb          .
	dad	sp		;; 8d46: 39          9
	push	h		;; 8d47: e5          .
	push	d		;; 8d48: d5          .
L8d49:	lhld	L91b9		;; 8d49: 2a b9 91    *..
	dad	sp		;; 8d4c: 39          9
	rc			;; 8d4d: d8          .
	mvi	a,053h		;; 8d4e: 3e 53       >S
	push	d		;; 8d50: d5          .
	mvi	c,000h		;; 8d51: 0e 00       ..
	call	L921e		;; 8d53: cd 1e 92    ...
L8d56:	xchg			;; 8d56: eb          .
	pop	h		;; 8d57: e1          .
	popiy			;; 8d58: fd e1       ..
	popix			;; 8d5a: dd e1       ..
	sphl			;; 8d5c: f9          .
	xchg			;; 8d5d: eb          .
	pciy			;; 8d5e: fd e9       ..

L8d60:	pop	h		;; 8d60: e1          .
	mov	e,m		;; 8d61: 5e          ^
	inx	h		;; 8d62: 23          #
	mov	d,m		;; 8d63: 56          V
	inx	h		;; 8d64: 23          #
	push	h		;; 8d65: e5          .
	xchg			;; 8d66: eb          .
L8d67:	mov	c,m		;; 8d67: 4e          N
	inx	h		;; 8d68: 23          #
	mov	b,m		;; 8d69: 46          F
	inx	h		;; 8d6a: 23          #
	mov	e,m		;; 8d6b: 5e          ^
	inx	h		;; 8d6c: 23          #
	mov	d,m		;; 8d6d: 56          V
	inx	h		;; 8d6e: 23          #
	xchg			;; 8d6f: eb          .
	ret			;; 8d70: c9          .

L8d71:	xthl			;; 8d71: e3          .
	mov	e,m		;; 8d72: 5e          ^
	inx	h		;; 8d73: 23          #
	mov	d,m		;; 8d74: 56          V
	inx	h		;; 8d75: 23          #
	xthl			;; 8d76: e3          .
	xchg			;; 8d77: eb          .
	jr	L8d7d		;; 8d78: 18 03       ..

	xchg			;; 8d7a: eb          .
	pop	h		;; 8d7b: e1          .
	xthl			;; 8d7c: e3          .
L8d7d:	mov	m,c		;; 8d7d: 71          q
	inx	h		;; 8d7e: 23          #
	mov	m,b		;; 8d7f: 70          p
	inx	h		;; 8d80: 23          #
	mov	m,e		;; 8d81: 73          s
	inx	h		;; 8d82: 23          #
	mov	m,d		;; 8d83: 72          r
	inx	h		;; 8d84: 23          #
	xchg			;; 8d85: eb          .
	ret			;; 8d86: c9          .

L8d87:	popiy			;; 8d87: fd e1       ..
	pop	d		;; 8d89: d1          .
	xthl			;; 8d8a: e3          .
	push	b		;; 8d8b: c5          .
	mov	b,d		;; 8d8c: 42          B
	mov	c,e		;; 8d8d: 4b          K
	pciy			;; 8d8e: fd e9       ..

L8d90:	sub	b		;; 8d90: 90          .
	jrnc	L8d9c		;; 8d91: 30 09       0.
	jr	L8da0		;; 8d93: 18 0b       ..

	sub	b		;; 8d95: 90          .
	jpe	L8da8		;; 8d96: ea a8 8d    ...
	jm	L8da0		;; 8d99: fa a0 8d    ...
L8d9c:	cmp	c		;; 8d9c: b9          .
	jc	L8da1		;; 8d9d: da a1 8d    ...
L8da0:	mov	a,c		;; 8da0: 79          y
L8da1:	mov	l,a		;; 8da1: 6f          o
	mvi	h,000h		;; 8da2: 26 00       &.
	mov	b,h		;; 8da4: 44          D
	dad	h		;; 8da5: 29          )
	jr	L8dc9		;; 8da6: 18 21       ..

L8da8:	jrnc	L8da0		;; 8da8: 30 f6       0.
	jr	L8d9c		;; 8daa: 18 f0       ..

	ora	a		;; 8dac: b7          .
	dsbc	b		;; 8dad: ed 42       .B
	jrnc	L8dbc		;; 8daf: 30 0b       0.
	jr	L8dc2		;; 8db1: 18 0f       ..

	ora	a		;; 8db3: b7          .
	dsbc	b		;; 8db4: ed 42       .B
	jpe	L8dd7		;; 8db6: ea d7 8d    ...
	jm	L8dc2		;; 8db9: fa c2 8d    ...
L8dbc:	ora	a		;; 8dbc: b7          .
	dsbc	d		;; 8dbd: ed 52       .R
	jc	L8dc5		;; 8dbf: da c5 8d    ...
L8dc2:	lxi	h,00000h	;; 8dc2: 21 00 00    ...
L8dc5:	dad	d		;; 8dc5: 19          .
	dad	h		;; 8dc6: 29          )
	mov	b,d		;; 8dc7: 42          B
	mov	c,e		;; 8dc8: 4b          K
L8dc9:	pop	d		;; 8dc9: d1          .
	popiy			;; 8dca: fd e1       ..
	dad	d		;; 8dcc: 19          .
	push	d		;; 8dcd: d5          .
	mov	e,m		;; 8dce: 5e          ^
	inx	h		;; 8dcf: 23          #
	mov	d,m		;; 8dd0: 56          V
	pop	h		;; 8dd1: e1          .
	inx	b		;; 8dd2: 03          .
	dad	b		;; 8dd3: 09          .
	dad	b		;; 8dd4: 09          .
	xchg			;; 8dd5: eb          .
	pchl			;; 8dd6: e9          .

L8dd7:	jrnc	L8dc2		;; 8dd7: 30 e9       0.
	jr	L8dbc		;; 8dd9: 18 e1       ..

	ret			;; 8ddb: c9          .

L8ddc:	pop	h		;; 8ddc: e1          .
	popiy			;; 8ddd: fd e1       ..
L8ddf:	cmp	m		;; 8ddf: be          .
	inx	h		;; 8de0: 23          #
	jrz	L8de7		;; 8de1: 28 04       (.
	inx	h		;; 8de3: 23          #
	inx	h		;; 8de4: 23          #
	djnz	L8ddf		;; 8de5: 10 f8       ..
L8de7:	mov	e,m		;; 8de7: 5e          ^
	inx	h		;; 8de8: 23          #
	mov	d,m		;; 8de9: 56          V
	inx	h		;; 8dea: 23          #
	xchg			;; 8deb: eb          .
	pchl			;; 8dec: e9          .

	xchg			;; 8ded: eb          .
	pop	h		;; 8dee: e1          .
	popiy			;; 8def: fd e1       ..
L8df1:	mov	a,e		;; 8df1: 7b          {
	cmp	m		;; 8df2: be          .
	inx	h		;; 8df3: 23          #
	jrnz	L8dfd		;; 8df4: 20 07        .
	mov	a,d		;; 8df6: 7a          z
	cmp	m		;; 8df7: be          .
	inx	h		;; 8df8: 23          #
	jrnz	L8dfe		;; 8df9: 20 03        .
	jr	L8de7		;; 8dfb: 18 ea       ..

L8dfd:	inx	h		;; 8dfd: 23          #
L8dfe:	inx	h		;; 8dfe: 23          #
	cci			;; 8dff: ed a1       ..
	jpe	L8df1		;; 8e01: ea f1 8d    ...
	jr	L8de7		;; 8e04: 18 e1       ..

L8e06:	push	d		;; 8e06: d5          .
	pushiy			;; 8e07: fd e5       ..
	mvi	a,043h		;; 8e09: 3e 43       >C
	mvi	c,002h		;; 8e0b: 0e 02       ..
	call	L921e		;; 8e0d: cd 1e 92    ...
	pop	d		;; 8e10: d1          .
	ret			;; 8e11: c9          .

L8e12:	db	0
L8e13:	db	0
L8e14:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
L8e64:	db	0,0
L8e66:	db	0,0
L8e68:	db	0,0
L8e6a:	db	0,0
L8e6c:	db	0,0
L8e6e:	db	0,0
L8e70:	db	0,0
L8e72:	db	0,0
L8e74:	db	0
L8e75:	dw	L9343
L8e77:	db	1
L8e78:	lspd	00006h		;; 8e78: ed 7b 06 00 .{..
	mvi	b,006h		;; 8e7c: 06 06       ..
L8e7e:	dcx	sp		;; 8e7e: 3b          ;
	djnz	L8e7e		;; 8e7f: 10 fd       ..
	push	h		;; 8e81: e5          .
	shld	L91bd		;; 8e82: 22 bd 91    "..
	lxix	00080h		;; 8e85: dd 21 80 00 ....
	dadx	sp		;; 8e89: dd 39       .9
	sixd	L8e6a		;; 8e8b: dd 22 6a 8e ."j.
	lxi	h,L8eef		;; 8e8f: 21 ef 8e    ...
	shld	L91c1		;; 8e92: 22 c1 91    "..
	shld	L91bf		;; 8e95: 22 bf 91    "..
	shld	L8e72		;; 8e98: 22 72 8e    "r.
	lhld	L8e75		;; 8e9b: 2a 75 8e    *u.
	shld	L91b7		;; 8e9e: 22 b7 91    "..
	lxi	b,00000h	;; 8ea1: 01 00 00    ...
	call	L91cf		;; 8ea4: cd cf 91    ...
	lxi	h,00000h	;; 8ea7: 21 00 00    ...
	shld	L8e66		;; 8eaa: 22 66 8e    "f.
	lxi	h,00080h	;; 8ead: 21 80 00    ...
	shld	L8e64		;; 8eb0: 22 64 8e    "d.
	lxi	h,L8e64		;; 8eb3: 21 64 8e    .d.
	shld	L8e68		;; 8eb6: 22 68 8e    "h.
	lxi	h,00000h	;; 8eb9: 21 00 00    ...
	shld	L0103		;; 8ebc: 22 03 01    "..
	shld	L0105		;; 8ebf: 22 05 01    "..
	shld	L91bb		;; 8ec2: 22 bb 91    "..
	shld	L8e6c		;; 8ec5: 22 6c 8e    "l.
	shld	L8e70		;; 8ec8: 22 70 8e    "p.
	call	L8ef2		;; 8ecb: cd f2 8e    ...
	xra	a		;; 8ece: af          .
	sta	L8e74		;; 8ecf: 32 74 8e    2t.
	lxi	h,00050h	;; 8ed2: 21 50 00    .P.
	shld	L8e12		;; 8ed5: 22 12 8e    "..
	mvi	c,00ch		;; 8ed8: 0e 0c       ..
	call	L91c3		;; 8eda: cd c3 91    ...
	mvi	l,001h		;; 8edd: 2e 01       ..
	cpi	020h		;; 8edf: fe 20       . 
	jrc	L8ee4		;; 8ee1: 38 01       8.
	inr	l		;; 8ee3: 2c          ,
L8ee4:	shld	L8e6e		;; 8ee4: 22 6e 8e    "n.
	mvi	c,01ah		;; 8ee7: 0e 1a       ..
	lxi	d,00080h	;; 8ee9: 11 80 00    ...
	call	L91c3		;; 8eec: cd c3 91    ...
L8eef:	ret			;; 8eef: c9          .

L8ef0:	nop			;; 8ef0: 00          .
	nop			;; 8ef1: 00          .
L8ef2:	lxi	h,00000h	;; 8ef2: 21 00 00    ...
	lxi	d,L0105		;; 8ef5: 11 05 01    ...
	push	d		;; 8ef8: d5          .
	push	h		;; 8ef9: e5          .
	lxi	d,L0103		;; 8efa: 11 03 01    ...
	push	d		;; 8efd: d5          .
	push	h		;; 8efe: e5          .
	call	L8f18		;; 8eff: cd 18 8f    ...
	push	h		;; 8f02: e5          .
	popiy			;; 8f03: fd e1       ..
	mviy	016h,+5		;; 8f05: fd 36 05 16 .6..
	call	L8f18		;; 8f09: cd 18 8f    ...
	push	h		;; 8f0c: e5          .
	popiy			;; 8f0d: fd e1       ..
	mviy	00bh,+5		;; 8f0f: fd 36 05 0b .6..
	xra	a		;; 8f13: af          .
	sta	L762d		;; 8f14: 32 2d 76    2-v
	ret			;; 8f17: c9          .

L8f18:	pop	h		;; 8f18: e1          .
	pop	b		;; 8f19: c1          .
	xthl			;; 8f1a: e3          .
	mov	e,m		;; 8f1b: 5e          ^
	inx	h		;; 8f1c: 23          #
	mov	d,m		;; 8f1d: 56          V
	dcx	h		;; 8f1e: 2b          +
	push	h		;; 8f1f: e5          .
	mov	a,d		;; 8f20: 7a          z
	ora	a		;; 8f21: b7          .
	jrz	L8f4c		;; 8f22: 28 28       ((
	lhld	L91bb		;; 8f24: 2a bb 91    *..
L8f27:	push	h		;; 8f27: e5          .
	popiy			;; 8f28: fd e1       ..
	mov	a,h		;; 8f2a: 7c          |
	ora	l		;; 8f2b: b5          .
	jrz	L8f4c		;; 8f2c: 28 1e       (.
	dsbc	d		;; 8f2e: ed 52       .R
	jrz	L8f3a		;; 8f30: 28 08       (.
	ldy	l,+2		;; 8f32: fd 6e 02    .n.
	ldy	h,+3		;; 8f35: fd 66 03    .f.
	jr	L8f27		;; 8f38: 18 ed       ..

L8f3a:	pop	h		;; 8f3a: e1          .
	push	h		;; 8f3b: e5          .
	mov	a,l		;; 8f3c: 7d          }
	cmpy	+14		;; 8f3d: fd be 0e    ...
	jrnz	L8f4c		;; 8f40: 20 0a        .
	mov	a,h		;; 8f42: 7c          |
	cmpy	+15		;; 8f43: fd be 0f    ...
	jrnz	L8f4c		;; 8f46: 20 04        .
	xchg			;; 8f48: eb          .
	pop	d		;; 8f49: d1          .
	xra	a		;; 8f4a: af          .
	ret			;; 8f4b: c9          .

L8f4c:	pop	h		;; 8f4c: e1          .
	push	b		;; 8f4d: c5          .
	push	h		;; 8f4e: e5          .
	push	h		;; 8f4f: e5          .
	push	h		;; 8f50: e5          .
	lxi	b,00048h	;; 8f51: 01 48 00    .H.
	push	b		;; 8f54: c5          .
	call	L9013		;; 8f55: cd 13 90    ...
	pop	h		;; 8f58: e1          .
	mov	e,m		;; 8f59: 5e          ^
	inx	h		;; 8f5a: 23          #
	mov	d,m		;; 8f5b: 56          V
	mov	h,d		;; 8f5c: 62          b
	mov	l,e		;; 8f5d: 6b          k
	mov	m,h		;; 8f5e: 74          t
	inx	h		;; 8f5f: 23          #
	mov	m,l		;; 8f60: 75          u
	inx	h		;; 8f61: 23          #
	mvi	b,046h		;; 8f62: 06 46       .F
L8f64:	mvi	m,000h		;; 8f64: 36 00       6.
	inx	h		;; 8f66: 23          #
	djnz	L8f64		;; 8f67: 10 fb       ..
	push	d		;; 8f69: d5          .
	popiy			;; 8f6a: fd e1       ..
	lhld	L91bb		;; 8f6c: 2a bb 91    *..
	sty	l,+2		;; 8f6f: fd 75 02    .u.
	sty	h,+3		;; 8f72: fd 74 03    .t.
	sded	L91bb		;; 8f75: ed 53 bb 91 .S..
	pop	b		;; 8f79: c1          .
	sty	c,+14		;; 8f7a: fd 71 0e    .q.
	sty	b,+15		;; 8f7d: fd 70 0f    .p.
	mviy	001h,+20	;; 8f80: fd 36 14 01 .6..
	mviy	080h,+21	;; 8f84: fd 36 15 80 .6..
	pop	b		;; 8f88: c1          .
	mov	a,b		;; 8f89: 78          x
	ora	c		;; 8f8a: b1          .
	jrz	L8f95		;; 8f8b: 28 08       (.
	sty	c,+24		;; 8f8d: fd 71 18    .q.
	sty	b,+25		;; 8f90: fd 70 19    .p.
	jr	L8fb2		;; 8f93: 18 1d       ..

L8f95:	sety	0,+4		;; 8f95: fd cb 04 c6 ....
	lxi	h,00017h	;; 8f99: 21 17 00    ...
	dad	d		;; 8f9c: 19          .
	sty	l,+16		;; 8f9d: fd 75 10    .u.
	sty	h,+17		;; 8fa0: fd 74 11    .t.
	mvi	m,020h		;; 8fa3: 36 20       6 
	lxi	h,00006h	;; 8fa5: 21 06 00    ...
	dad	d		;; 8fa8: 19          .
	xchg			;; 8fa9: eb          .
	lxi	h,L8fb8		;; 8faa: 21 b8 8f    ...
	lxi	b,00008h	;; 8fad: 01 08 00    ...
	ldir			;; 8fb0: ed b0       ..
L8fb2:	pushiy			;; 8fb2: fd e5       ..
	pop	h		;; 8fb4: e1          .
	mvi	a,001h		;; 8fb5: 3e 01       >.
	ret			;; 8fb7: c9          .

L8fb8:	dw	L8fc0
	dw	L8ffc
	dw	L9005
	dw	L9010
L8fc0:	lxi	h,L8e13		;; 8fc0: 21 13 8e    ...
	mov	a,m		;; 8fc3: 7e          ~
	ora	a		;; 8fc4: b7          .
	jrz	L8fd4		;; 8fc5: 28 0d       (.
	dcr	m		;; 8fc7: 35          5
	lhld	L8ef0		;; 8fc8: 2a f0 8e    *..
	mov	a,m		;; 8fcb: 7e          ~
	stx	a,+23		;; 8fcc: dd 77 17    .w.
	inx	h		;; 8fcf: 23          #
	shld	L8ef0		;; 8fd0: 22 f0 8e    "..
	ret			;; 8fd3: c9          .

L8fd4:	lxi	d,L8e12		;; 8fd4: 11 12 8e    ...
	mvi	c,00ah		;; 8fd7: 0e 0a       ..
	call	L91c3		;; 8fd9: cd c3 91    ...
	lxi	h,L8e14		;; 8fdc: 21 14 8e    ...
	shld	L8ef0		;; 8fdf: 22 f0 8e    "..
	lxi	h,L8e12		;; 8fe2: 21 12 8e    ...
	mov	b,m		;; 8fe5: 46          F
	inx	h		;; 8fe6: 23          #
	mov	a,m		;; 8fe7: 7e          ~
	cmp	b		;; 8fe8: b8          .
	jrz	L8fc0		;; 8fe9: 28 d5       (.
	inr	m		;; 8feb: 34          4
	mvi	d,000h		;; 8fec: 16 00       ..
	mov	e,a		;; 8fee: 5f          _
	dad	d		;; 8fef: 19          .
	inx	h		;; 8ff0: 23          #
	mvi	m,00dh		;; 8ff1: 36 0d       6.
	mvix	00ah,+23	;; 8ff3: dd 36 17 0a .6..
	call	L8ffc		;; 8ff7: cd fc 8f    ...
	jr	L8fc0		;; 8ffa: 18 c4       ..

L8ffc:	ldx	e,+23		;; 8ffc: dd 5e 17    .^.
	mvi	c,002h		;; 8fff: 0e 02       ..
	call	L91c3		;; 9001: cd c3 91    ...
	ret			;; 9004: c9          .

L9005:	bitx	2,+5		;; 9005: dd cb 05 56 ...V
	rz			;; 9009: c8          .
	lxi	h,L8e13		;; 900a: 21 13 8e    ...
	mvi	m,000h		;; 900d: 36 00       6.
	ret			;; 900f: c9          .

L9010:	ret			;; 9010: c9          .

L9011:	dw	0
L9013:	pop	h		;; 9013: e1          .
	jr	L901a		;; 9014: 18 04       ..

L9016:	pop	h		;; 9016: e1          .
	shld	L91bd		;; 9017: 22 bd 91    "..
L901a:	pop	d		;; 901a: d1          .
	xthl			;; 901b: e3          .
	push	h		;; 901c: e5          .
	lxi	h,00003h	;; 901d: 21 03 00    ...
	ora	a		;; 9020: b7          .
	dsbc	d		;; 9021: ed 52       .R
	jrc	L9028		;; 9023: 38 03       8.
	lxi	d,00004h	;; 9025: 11 04 00    ...
L9028:	push	d		;; 9028: d5          .
	popiy			;; 9029: fd e1       ..
L902b:	lhld	L8e68		;; 902b: 2a 68 8e    *h.
	push	h		;; 902e: e5          .
L902f:	pop	h		;; 902f: e1          .
	push	h		;; 9030: e5          .
	mov	e,m		;; 9031: 5e          ^
	inx	h		;; 9032: 23          #
	mov	d,m		;; 9033: 56          V
	mov	a,d		;; 9034: 7a          z
	ora	a		;; 9035: b7          .
	jrnz	L903d		;; 9036: 20 05        .
	lxi	d,L8e64		;; 9038: 11 64 8e    .d.
	jr	L9056		;; 903b: 18 19       ..

L903d:	lxi	h,00002h	;; 903d: 21 02 00    ...
	dad	d		;; 9040: 19          .
	mov	a,m		;; 9041: 7e          ~
	inx	h		;; 9042: 23          #
	mov	h,m		;; 9043: 66          f
	mov	l,a		;; 9044: 6f          o
	pushiy			;; 9045: fd e5       ..
	pop	b		;; 9047: c1          .
	ora	a		;; 9048: b7          .
	dsbc	b		;; 9049: ed 42       .B
	jrc	L9056		;; 904b: 38 09       8.
	jrz	L908c		;; 904d: 28 3d       (=
	lxi	b,00004h	;; 904f: 01 04 00    ...
	dsbc	b		;; 9052: ed 42       .B
	jrnc	L908c		;; 9054: 30 36       06
L9056:	pop	h		;; 9056: e1          .
	push	d		;; 9057: d5          .
	lhld	L8e68		;; 9058: 2a 68 8e    *h.
	ora	a		;; 905b: b7          .
	dsbc	d		;; 905c: ed 52       .R
	jrnz	L902f		;; 905e: 20 cf        .
	pop	h		;; 9060: e1          .
	pushiy			;; 9061: fd e5       ..
	pop	b		;; 9063: c1          .
	mov	a,b		;; 9064: 78          x
	ora	a		;; 9065: b7          .
	jrnz	L9070		;; 9066: 20 08        .
	mov	a,c		;; 9068: 79          y
	ani	0c0h		;; 9069: e6 c0       ..
	jrnz	L9070		;; 906b: 20 03        .
	lxi	b,00100h	;; 906d: 01 00 01    ...
L9070:	lhld	L91b7		;; 9070: 2a b7 91    *..
	push	h		;; 9073: e5          .
	push	b		;; 9074: c5          .
	pushiy			;; 9075: fd e5       ..
	lxi	h,L91b7		;; 9077: 21 b7 91    ...
	push	h		;; 907a: e5          .
	push	b		;; 907b: c5          .
	call	L90d9		;; 907c: cd d9 90    ...
	popiy			;; 907f: fd e1       ..
	pop	b		;; 9081: c1          .
	pop	h		;; 9082: e1          .
	shld	L91b7		;; 9083: 22 b7 91    "..
	call	L91cf		;; 9086: cd cf 91    ...
	jmp	L902b		;; 9089: c3 2b 90    .+.

L908c:	lxi	h,00002h	;; 908c: 21 02 00    ...
	dad	d		;; 908f: 19          .
	push	h		;; 9090: e5          .
	mov	a,m		;; 9091: 7e          ~
	inx	h		;; 9092: 23          #
	mov	h,m		;; 9093: 66          f
	mov	l,a		;; 9094: 6f          o
	pushiy			;; 9095: fd e5       ..
	pop	b		;; 9097: c1          .
	ora	a		;; 9098: b7          .
	dsbc	b		;; 9099: ed 42       .B
	pop	b		;; 909b: c1          .
	mov	a,l		;; 909c: 7d          }
	stax	b		;; 909d: 02          .
	inx	b		;; 909e: 03          .
	mov	a,h		;; 909f: 7c          |
	stax	b		;; 90a0: 02          .
	push	h		;; 90a1: e5          .
	dad	d		;; 90a2: 19          .
	shld	L9011		;; 90a3: 22 11 90    "..
	pop	h		;; 90a6: e1          .
	mov	a,h		;; 90a7: 7c          |
	ora	l		;; 90a8: b5          .
	jrnz	L90c1		;; 90a9: 20 16        .
	lhld	L8e68		;; 90ab: 2a 68 8e    *h.
	ora	a		;; 90ae: b7          .
	dsbc	d		;; 90af: ed 52       .R
	jrnz	L90b9		;; 90b1: 20 06        .
	lxi	h,L8e64		;; 90b3: 21 64 8e    .d.
	shld	L8e68		;; 90b6: 22 68 8e    "h.
L90b9:	pop	h		;; 90b9: e1          .
	push	h		;; 90ba: e5          .
	ldax	d		;; 90bb: 1a          .
	mov	m,a		;; 90bc: 77          w
	inx	d		;; 90bd: 13          .
	inx	h		;; 90be: 23          #
	ldax	d		;; 90bf: 1a          .
	mov	m,a		;; 90c0: 77          w
L90c1:	pop	h		;; 90c1: e1          .
	mov	e,m		;; 90c2: 5e          ^
	inx	h		;; 90c3: 23          #
	mov	d,m		;; 90c4: 56          V
	xchg			;; 90c5: eb          .
	mov	a,h		;; 90c6: 7c          |
	ora	a		;; 90c7: b7          .
	jrnz	L90cd		;; 90c8: 20 03        .
	lxi	h,L8e64		;; 90ca: 21 64 8e    .d.
L90cd:	shld	L8e68		;; 90cd: 22 68 8e    "h.
	lhld	L9011		;; 90d0: 2a 11 90    *..
	xchg			;; 90d3: eb          .
	pop	h		;; 90d4: e1          .
	mov	m,e		;; 90d5: 73          s
	inx	h		;; 90d6: 23          #
	mov	m,d		;; 90d7: 72          r
	ret			;; 90d8: c9          .

L90d9:	pop	h		;; 90d9: e1          .
	pop	d		;; 90da: d1          .
	xthl			;; 90db: e3          .
	mov	c,m		;; 90dc: 4e          N
	inx	h		;; 90dd: 23          #
	mov	b,m		;; 90de: 46          F
	lxi	h,00003h	;; 90df: 21 03 00    ...
	ora	a		;; 90e2: b7          .
	dsbc	d		;; 90e3: ed 52       .R
	jrc	L90ea		;; 90e5: 38 03       8.
	lxi	d,00004h	;; 90e7: 11 04 00    ...
L90ea:	push	d		;; 90ea: d5          .
	popiy			;; 90eb: fd e1       ..
	lhld	L91b7		;; 90ed: 2a b7 91    *..
	ora	a		;; 90f0: b7          .
	dsbc	b		;; 90f1: ed 42       .B
	jrc	L912d		;; 90f3: 38 38       88
	lhld	L8e75		;; 90f5: 2a 75 8e    *u.
	dcx	h		;; 90f8: 2b          +
	dsbc	b		;; 90f9: ed 42       .B
	jrnc	L912d		;; 90fb: 30 30       00
	lhld	L8e68		;; 90fd: 2a 68 8e    *h.
	push	h		;; 9100: e5          .
	ora	a		;; 9101: b7          .
	dsbc	b		;; 9102: ed 42       .B
	pop	h		;; 9104: e1          .
	jrc	L910a		;; 9105: 38 03       8.
	lxi	h,L8e64		;; 9107: 21 64 8e    .d.
L910a:	push	h		;; 910a: e5          .
L910b:	mov	e,m		;; 910b: 5e          ^
	inx	h		;; 910c: 23          #
	mov	d,m		;; 910d: 56          V
	xchg			;; 910e: eb          .
	push	h		;; 910f: e5          .
	mov	a,h		;; 9110: 7c          |
	ora	a		;; 9111: b7          .
	jrz	L9152		;; 9112: 28 3e       (>
	dsbc	b		;; 9114: ed 42       .B
	jrnc	L911e		;; 9116: 30 06       0.
	pop	h		;; 9118: e1          .
	pop	d		;; 9119: d1          .
	push	h		;; 911a: e5          .
	jmp	L910b		;; 911b: c3 0b 91    ...

L911e:	pushiy			;; 911e: fd e5       ..
	pop	h		;; 9120: e1          .
	dad	b		;; 9121: 09          .
	pop	d		;; 9122: d1          .
	push	d		;; 9123: d5          .
	ora	a		;; 9124: b7          .
	dsbc	d		;; 9125: ed 52       .R
	jrc	L9152		;; 9127: 38 29       8)
	jrz	L9134		;; 9129: 28 09       (.
	pop	h		;; 912b: e1          .
	pop	h		;; 912c: e1          .
L912d:	mvi	a,050h		;; 912d: 3e 50       >P
	mvi	c,000h		;; 912f: 0e 00       ..
	call	L921e		;; 9131: cd 1e 92    ...
L9134:	lhld	L8e68		;; 9134: 2a 68 8e    *h.
	ora	a		;; 9137: b7          .
	dsbc	d		;; 9138: ed 52       .R
	jrnz	L9142		;; 913a: 20 06        .
	lxi	h,L8e64		;; 913c: 21 64 8e    .d.
	shld	L8e68		;; 913f: 22 68 8e    "h.
L9142:	ldax	d		;; 9142: 1a          .
	stax	b		;; 9143: 02          .
	inx	d		;; 9144: 13          .
	inx	b		;; 9145: 03          .
	ldax	d		;; 9146: 1a          .
	stax	b		;; 9147: 02          .
	dcx	b		;; 9148: 0b          .
	inx	d		;; 9149: 13          .
	xchg			;; 914a: eb          .
	mov	e,m		;; 914b: 5e          ^
	inx	h		;; 914c: 23          #
	mov	d,m		;; 914d: 56          V
	dady	d		;; 914e: fd 19       ..
	jr	L915a		;; 9150: 18 08       ..

L9152:	pop	h		;; 9152: e1          .
	push	h		;; 9153: e5          .
	mov	a,l		;; 9154: 7d          }
	stax	b		;; 9155: 02          .
	inx	b		;; 9156: 03          .
	mov	a,h		;; 9157: 7c          |
	stax	b		;; 9158: 02          .
	dcx	b		;; 9159: 0b          .
L915a:	pop	h		;; 915a: e1          .
	lhld	L91b7		;; 915b: 2a b7 91    *..
	ora	a		;; 915e: b7          .
	dsbc	b		;; 915f: ed 42       .B
	pushiy			;; 9161: fd e5       ..
	pop	d		;; 9163: d1          .
	ora	a		;; 9164: b7          .
	dsbc	d		;; 9165: ed 52       .R
	jrnz	L9184		;; 9167: 20 1b        .
	lhld	L91b7		;; 9169: 2a b7 91    *..
	ora	a		;; 916c: b7          .
	dsbc	d		;; 916d: ed 52       .R
	shld	L91b7		;; 916f: 22 b7 91    "..
	lxi	d,L0100		;; 9172: 11 00 01    ...
	dad	d		;; 9175: 19          .
	mov	a,h		;; 9176: 7c          |
	cma			;; 9177: 2f          /
	mov	h,a		;; 9178: 67          g
	mov	a,l		;; 9179: 7d          }
	cma			;; 917a: 2f          /
	mov	l,a		;; 917b: 6f          o
	shld	L91b9		;; 917c: 22 b9 91    "..
	pop	h		;; 917f: e1          .
	inx	h		;; 9180: 23          #
	mvi	m,000h		;; 9181: 36 00       6.
	ret			;; 9183: c9          .

L9184:	pop	h		;; 9184: e1          .
	push	h		;; 9185: e5          .
	inx	h		;; 9186: 23          #
	inx	h		;; 9187: 23          #
	mov	e,m		;; 9188: 5e          ^
	inx	h		;; 9189: 23          #
	mov	d,m		;; 918a: 56          V
	pop	h		;; 918b: e1          .
	push	h		;; 918c: e5          .
	dad	d		;; 918d: 19          .
	ora	a		;; 918e: b7          .
	dsbc	b		;; 918f: ed 42       .B
	jrnz	L91a8		;; 9191: 20 15        .
	pop	h		;; 9193: e1          .
	ldax	b		;; 9194: 0a          .
	mov	m,a		;; 9195: 77          w
	inx	b		;; 9196: 03          .
	inx	h		;; 9197: 23          #
	ldax	b		;; 9198: 0a          .
	mov	m,a		;; 9199: 77          w
	dcx	b		;; 919a: 0b          .
	inx	h		;; 919b: 23          #
	mov	e,m		;; 919c: 5e          ^
	inx	h		;; 919d: 23          #
	mov	d,m		;; 919e: 56          V
	dady	d		;; 919f: fd 19       ..
	pushiy			;; 91a1: fd e5       ..
	pop	d		;; 91a3: d1          .
	mov	m,d		;; 91a4: 72          r
	dcx	h		;; 91a5: 2b          +
	mov	m,e		;; 91a6: 73          s
	ret			;; 91a7: c9          .

L91a8:	pop	h		;; 91a8: e1          .
	mov	m,c		;; 91a9: 71          q
	inx	h		;; 91aa: 23          #
	mov	m,b		;; 91ab: 70          p
	pushiy			;; 91ac: fd e5       ..
	pop	d		;; 91ae: d1          .
	inx	b		;; 91af: 03          .
	inx	b		;; 91b0: 03          .
	mov	a,e		;; 91b1: 7b          {
	stax	b		;; 91b2: 02          .
	inx	b		;; 91b3: 03          .
	mov	a,d		;; 91b4: 7a          z
	stax	b		;; 91b5: 02          .
	ret			;; 91b6: c9          .

L91b7:	dw	0
L91b9:	dw	0
L91bb:	dw	0
L91bd:	dw	0
L91bf:	dw	0
L91c1:	dw	0
L91c3:	pushix			;; 91c3: dd e5       ..
	pushiy			;; 91c5: fd e5       ..
	call	00005h		;; 91c7: cd 05 00    ...
	popiy			;; 91ca: fd e1       ..
	popix			;; 91cc: dd e1       ..
	ret			;; 91ce: c9          .

L91cf:	lhld	L91b7		;; 91cf: 2a b7 91    *..
	dad	b		;; 91d2: 09          .
	jrc	L91e9		;; 91d3: 38 14       8.
	shld	L91b7		;; 91d5: 22 b7 91    "..
	lxi	b,00100h	;; 91d8: 01 00 01    ...
	dad	b		;; 91db: 09          .
	jrc	L91e9		;; 91dc: 38 0b       8.
	mov	a,h		;; 91de: 7c          |
	cma			;; 91df: 2f          /
	mov	h,a		;; 91e0: 67          g
	mov	a,l		;; 91e1: 7d          }
	cma			;; 91e2: 2f          /
	mov	l,a		;; 91e3: 6f          o
	shld	L91b9		;; 91e4: 22 b9 91    "..
	dad	sp		;; 91e7: 39          9
	rc			;; 91e8: d8          .
L91e9:	pop	d		;; 91e9: d1          .
	mvi	a,048h		;; 91ea: 3e 48       >H
	mvi	c,004h		;; 91ec: 0e 04       ..
	call	L921e		;; 91ee: cd 1e 92    ...
L91f1:	push	b		;; 91f1: c5          .
	push	h		;; 91f2: e5          .
	mvi	c,002h		;; 91f3: 0e 02       ..
	call	L91c3		;; 91f5: cd c3 91    ...
	pop	h		;; 91f8: e1          .
	pop	b		;; 91f9: c1          .
	ret			;; 91fa: c9          .

L91fb:	mov	c,a		;; 91fb: 4f          O
	mvi	b,002h		;; 91fc: 06 02       ..
	rar			;; 91fe: 1f          .
	rar			;; 91ff: 1f          .
	rar			;; 9200: 1f          .
	rar			;; 9201: 1f          .
L9202:	ani	00fh		;; 9202: e6 0f       ..
	adi	030h		;; 9204: c6 30       .0
	cpi	03ah		;; 9206: fe 3a       .:
	jm	L920d		;; 9208: fa 0d 92    ...
	adi	007h		;; 920b: c6 07       ..
L920d:	mov	e,a		;; 920d: 5f          _
	call	L91f1		;; 920e: cd f1 91    ...
	mov	a,c		;; 9211: 79          y
	djnz	L9202		;; 9212: 10 ee       ..
	ret			;; 9214: c9          .

	pop	h		;; 9215: e1          .
	pop	psw		;; 9216: f1          .
	mvi	c,002h		;; 9217: 0e 02       ..
	push	h		;; 9219: e5          .
	call	L921e		;; 921a: cd 1e 92    ...
	ret			;; 921d: c9          .

L921e:	ora	a		;; 921e: b7          .
	lhld	L91c1		;; 921f: 2a c1 91    *..
	call	L92bd		;; 9222: cd bd 92    ...
	jrnc	L922f		;; 9225: 30 08       0.
	rarr	c		;; 9227: cb 19       ..
	rarr	c		;; 9229: cb 19       ..
	rc			;; 922b: d8          .
	jmp	L92b3		;; 922c: c3 b3 92    ...

L922f:	push	psw		;; 922f: f5          .
	rarr	c		;; 9230: cb 19       ..
	jrnc	L923c		;; 9232: 30 08       0.
	xchg			;; 9234: eb          .
L9235:	mov	e,m		;; 9235: 5e          ^
	inx	h		;; 9236: 23          #
	call	L91f1		;; 9237: cd f1 91    ...
	djnz	L9235		;; 923a: 10 f9       ..
L923c:	push	b		;; 923c: c5          .
	mvi	c,009h		;; 923d: 0e 09       ..
	lxi	d,L92be		;; 923f: 11 be 92    ...
	call	L91c3		;; 9242: cd c3 91    ...
	pop	b		;; 9245: c1          .
	pop	psw		;; 9246: f1          .
	push	b		;; 9247: c5          .
	mov	e,a		;; 9248: 5f          _
	call	L91f1		;; 9249: cd f1 91    ...
	mvi	c,009h		;; 924c: 0e 09       ..
	lxi	d,L92c7		;; 924e: 11 c7 92    ...
	call	L91c3		;; 9251: cd c3 91    ...
	pop	b		;; 9254: c1          .
	pop	d		;; 9255: d1          .
	pop	h		;; 9256: e1          .
	push	h		;; 9257: e5          .
	push	d		;; 9258: d5          .
	push	b		;; 9259: c5          .
	mov	a,c		;; 925a: 79          y
	ani	002h		;; 925b: e6 02       ..
	jrz	L9262		;; 925d: 28 03       (.
	lhld	L91bd		;; 925f: 2a bd 91    *..
L9262:	mov	a,h		;; 9262: 7c          |
	call	L91fb		;; 9263: cd fb 91    ...
	mov	a,l		;; 9266: 7d          }
	call	L91fb		;; 9267: cd fb 91    ...
	mvi	e,00dh		;; 926a: 1e 0d       ..
	call	L91f1		;; 926c: cd f1 91    ...
	mvi	e,00ah		;; 926f: 1e 0a       ..
	call	L91f1		;; 9271: cd f1 91    ...
	lhld	L91bf		;; 9274: 2a bf 91    *..
	call	L92bd		;; 9277: cd bd 92    ...
	pop	b		;; 927a: c1          .
	rarr	c		;; 927b: cb 19       ..
	jnc	L92b3		;; 927d: d2 b3 92    ...
	lxi	d,L92d4		;; 9280: 11 d4 92    ...
L9283:	mvi	c,009h		;; 9283: 0e 09       ..
	call	L91c3		;; 9285: cd c3 91    ...
L9288:	mvi	c,001h		;; 9288: 0e 01       ..
	call	L91c3		;; 928a: cd c3 91    ...
	cpi	059h		;; 928d: fe 59       .Y
	jrz	L92a8		;; 928f: 28 17       (.
	cpi	079h		;; 9291: fe 79       .y
	jrz	L92a8		;; 9293: 28 13       (.
	cpi	04eh		;; 9295: fe 4e       .N
	jz	L92b3		;; 9297: ca b3 92    ...
	cpi	06eh		;; 929a: fe 6e       .n
	jz	L92b3		;; 929c: ca b3 92    ...
	lxi	d,L92e6		;; 929f: 11 e6 92    ...
	cpi	020h		;; 92a2: fe 20       . 
	jrnc	L9283		;; 92a4: 30 dd       0.
	jr	L9288		;; 92a6: 18 e0       ..

L92a8:	mvi	e,00dh		;; 92a8: 1e 0d       ..
	call	L91f1		;; 92aa: cd f1 91    ...
	mvi	e,00ah		;; 92ad: 1e 0a       ..
	call	L91f1		;; 92af: cd f1 91    ...
	ret			;; 92b2: c9          .

L92b3:	lhld	L91bb		;; 92b3: 2a bb 91    *..
	push	h		;; 92b6: e5          .
	call	L932f		;; 92b7: cd 2f 93    ./.
	jmp	00000h		;; 92ba: c3 00 00    ...

L92bd:	pchl			;; 92bd: e9          .

L92be:	db	0dh,0ah,'Error $'
L92c7:	db	' at address $'
L92d4:	db	'Continue ? (Y/N) $'
L92e6:	db	8,' ',8,'$'
L92ea:	mov	b,a		;; 92ea: 47          G
	ldx	a,+5		;; 92eb: dd 7e 05    .~.
	ani	00ch		;; 92ee: e6 0c       ..
	rz			;; 92f0: c8          .
	bit	3,a		;; 92f1: cb 5f       ._
	jrz	L931f		;; 92f3: 28 2a       (*
	bitx	7,+5		;; 92f5: dd cb 05 7e ...~
	jrnz	L931f		;; 92f9: 20 24        $
	bitx	0,+4		;; 92fb: dd cb 04 46 ...F
	jrz	L931f		;; 92ff: 28 1e       (.
	bitx	1,+5		;; 9301: dd cb 05 4e ...N
	jrnz	L931f		;; 9305: 20 18        .
	push	b		;; 9307: c5          .
	ldx	l,+8		;; 9308: dd 6e 08    .n.
	ldx	h,+9		;; 930b: dd 66 09    .f.
	push	h		;; 930e: e5          .
	mvix	00dh,+23	;; 930f: dd 36 17 0d .6..
	call	L932e		;; 9313: cd 2e 93    ...
	pop	h		;; 9316: e1          .
	mvix	00ah,+23	;; 9317: dd 36 17 0a .6..
	call	L932e		;; 931b: cd 2e 93    ...
	pop	b		;; 931e: c1          .
L931f:	ldx	l,+12		;; 931f: dd 6e 0c    .n.
	ldx	h,+13		;; 9322: dd 66 0d    .f.
	mov	a,b		;; 9325: 78          x
	call	L932e		;; 9326: cd 2e 93    ...
	mvix	010h,+5		;; 9329: dd 36 05 10 .6..
	ret			;; 932d: c9          .

L932e:	pchl			;; 932e: e9          .

L932f:	pop	h		;; 932f: e1          .
	xthl			;; 9330: e3          .
L9331:	mov	a,h		;; 9331: 7c          |
	ora	a		;; 9332: b7          .
	rz			;; 9333: c8          .
	push	h		;; 9334: e5          .
	popix			;; 9335: dd e1       ..
	xra	a		;; 9337: af          .
	call	L92ea		;; 9338: cd ea 92    ...
	ldx	l,+2		;; 933b: dd 6e 02    .n.
	ldx	h,+3		;; 933e: dd 66 03    .f.
	jr	L9331		;; 9341: 18 ee       ..

L9343:	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	0,0,0,0,0,0,0,0,0,0,0,0,0
	end
