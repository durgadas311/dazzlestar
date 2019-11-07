	maclib	z80
	public	L8E7C
	extrn	L0300,L8FB7

bdos	equ	00005h

print	equ	9

	cseg
L8E7C:
	mvi	c,print
	lxi	d,noz80
	mvi	a,2
	inr	a	; Z80 sets overflow, 8080 sets parity
	jpe	bdos
	; compute checksum for L0300-L8FB7
	mvi	b,0
	lxi	h,0
	lxi	d,L0300
l8e8f:	xchg
	mov	c,m
	inx	h
	xchg
	dad	b
	mvi	a,low L8FB7	; won't work in RMAC...
	cmp	e
	jrnz	l8e8f
	mvi	a,high L8FB7	; won't work in RMAC...
	cmp	d
	jrnz	l8e8f
	; computed checksum in HL, DE -> stored checksum
	xchg
	mov	a,m
	inx	h
	mov	b,m
	xchg
	mvi	c,print
	lxi	d,badcs
	cmp	l	; low byte checksum OK?
	jrnz	l8ead
	mov	a,b
	cmp	h	; high byte checksum OK?
l8ead:	jnz	bdos	; bad checksum
	; checksum validated OK...
	lxi	sp,stack
	lda	bdos+2	; BDOS page
	dcr	a	; 
	mvi	l,ff
	mov	h,a	; HL = last byte before BDOS page
	lxi	d,nomem
	cpi	96	; TODO: abstract this
	jc	bdos
	xchg		; DE = last byte before BDOS page
	lxi	h,picend
	lxi	b,piclen
	lddr		; copy PIC routine to top TPA
	xchg
	sphl		; stack below this code
	inx	h	; entry to code
	push	h	; poised for return
	lxi	d,pictbl
	dad	d	; HL = table
	ret		; jump to PIC

badcs:	db	'Corrupt$'
nomem:	db	'No room$'
stack:	ds	0
noz80:	db	'Needs Z80$'

picbeg:
	mov	c,m
	inx	h
	mov	b,m	; BC = first word (source)
	inx	h
	push	b
	mov	e,m
	inx	h
	mov	d,m	; DE = second word (dest)
	inx	h
	xra	a
	cmp	e
	jrnz	l8f01
	cmp	d
	jrnz	l8f01
	; second word == 0, end of table.
	pop	h	; HL = first word
	push	d	; (SP) = 0 (safety net?)
	pchl		; jump to second word

l8f01:	mov	c,m
	inx	h
	mov	b,m	; BC = third word, length
	inx	h
	xthl		; HL = first word (source)
	lddr		; 
	pop	h
	jr	picbeg

pictbl	equ	$-picbeg
	; de-scramble table...
	dw	L8e7b,L93ff,0001h	; "0"
	dw	L93ff,L93fe,00bch	; fill/zero region
	dw	L8e7a,L9342,0181h
	dw	L91c2,L91c1,000bh
	dw	L8cf9,L91b6,0343h
	dw	L8e74,L8e73,0062h
	dw	L89b6,L8e11,0db1h
	dw	L8061,L8060,0011h
	dw	L7c05,L804f,0a14h
	dw	L763c,L763b,000fh
	dw	L71f1,L762c,029dh
	dw	L7390,L738f,0014h
	dw	L6f54,L737b,0429h
	dw	L6f53,L6f52,000ch
	dw	L6b2b,L6f46,0134h
	dw	L6e13,L6e12,0025h
	dw	L69f7,L6ded,1243h
	dw	L5bab,L5baa,003bh
	dw	L57b4,L5b6f,0703h
	dw	L546d,L546c,000bh
	dw	L50b1,L5461,2235h
	dw	L322d,L322c,00c4h
	dw	L2e7c,L3168,140dh
	dw	L1d5c,L1d5b,0152h
	dw	L1a6f,L1c09,0b38h
	dw	L10d2,L10d1,0086h
	dw	L0f37,L104b,0c39h
	dw	L0413,L0412,0114h
	dw	L4d49,0
piclen	equ	$-picbeg
picend:
L8FB7:	dw	0c072h	; checksum

; TODO: fill page...
	end
