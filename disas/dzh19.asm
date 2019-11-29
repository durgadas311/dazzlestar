; Terminal definition, and other config, for DazzleStar
; Overlay on DZ.COM:
;	A> DDT DZ.COM
;	...
;	* IDZTERM.HEX
;	* R
;	...
;	* G0
;	A> SAVE xx DZyy.COM
;
; Or, SID (easier):
;	A>sid dz-out2.com
;	CP/M 3 SID - Version 3.0
;	NEXT MSZE  PC  END
;	9A80 9A80 0100 E1FF
;	#rdzterm.hex
;	NEXT MSZE  PC  END
;	0300 9A80 0100 E1FF
;	#wdz-out2x.com,0100,9a80
;	0135h record(s) written.
;	#g0
;	A>
; Be certain to use MSZE value in W command.

esc	equ	27

	org	0100h
	ds	3	; entry point - not disturbed
	ds	2
	ds	2
	ds	1	; 0107
	ds	1
	ds	1
	ds	56	; copyright message (len,str)
	db	1ah	; terminator? marker?
; -------------------
; 0143:
	db	7,'H19/H89',0	; length, term name, NUL terminator
	rept	017ch-$	;  55-chars max for terminal name (+len,NUL)
	db	0
	endm

	db	0ffh	; 017c: menus rev vid (0x80)
	db	80	; 017d:	'P'
	db	17	; 017e: disp cnt for 2nd menus
	db	3	; 017f: help level

	db	' '	; 0180:
	db	0	; 0181:
	db	1	; 0182:
	db	127	; 0183: 80-ff undisplayable (0x80)
	db	127	; 0184: bit7 in ascii win (0x80)
	db	127	; 0185:
	db	95	; 0186:
	db	1	; 0187: hilite in hex win
	db	1	; 0188: hilite in ascii win
	db	18	; 0189: instr last
	db	20	; 018a: hex first
	db	23	; 018b: hex last
	db	1	; 018c:	rel jmp adds "; $+"

	db	1fh	; 018d: alt down-arrow
	db	1eh	; 018e: alt up-arrow
	db	22,26,31,39,45	; 018f: KP tabs
	db	0,8,16,24,32	; 0194: KW tabs

	db	4,'LST:'	; 0199: printer
	db	4,'.MAC'	; 019e: ASM suffix
	db	1		; 01a3: SA interative pref
	db	72		; 01a4: screen right
	db	70		; 01a5:	list right
	db	16		; 01a6:	word break
	db	7		; 01a7: cache
	db	1,'D',0,0	; 01a8:
	db	'C'		; 01ac:
	db	0		; 01ad:	LST: shift
	db	'H'		; 01ae: radix (for?)
	db	'B'		; 01af: radix (for?)

	; multi-language support:
	db	12,'DZENGMNU.OVR',0,0	; 01b0: Menus file
	db	12,'DZENGHLP.OVR',0,0	; 01bf: Help file
	db	12,'DZENGMSG.OVR',0,0	; 01ce: Messages file
	dw	1000		; 01dd: headroom

	; terminal definition start?
	db	24	; 01df: rows (lines)
	db	80	; 01e0: columns
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0		; 01e1: init seq
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0		; 01f1: exit seq
	db	2,esc,'Y',0,0,0,0,0,0,0,0,0,0,0,0,0	; 0201: curs pre
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0		; 0211: curs sep
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0		; 0221: curs end
	db	0	; 0231: 0=row-first, 1=col-first
	db	' '	; 0232: row offset
	db	' '	; 0233: col offset
	db	0	; 0234: r/c type, 0=binary, 2=ascii 2-dig, 3=ascii 3-dig

	db	2,esc,'K',0,0,0,0,0,0,0,0,0,0,0,0,0	; 0235: erase to EOL
	db	2,esc,'M',0,0,0,0,0,0,0,0,0,0,0,0,0	; 0245: delete line
	db	2,esc,'L',0,0,0,0,0,0,0,0,0,0,0,0,0	; 0255: insert line
	db	2,esc,'E',0,0,0,0,0,0,0,0,0,0,0,0,0	; 0265: clear screen
	db	2,esc,'p',0,0,0,0,0,0,0,0,0,0,0,0,0	; 0275: rev video
	db	2,esc,'q',0,0,0,0,0,0,0,0,0,0,0,0,0	; 0285: norm video

	db	08	; 0295:
	db	00	; 0296:
	db	00	; 0297:
	dw	00	; 0298:
	db	00	; 029a:
	db	00	; 029b:
	db	00	; 029c:

	; hooks to customize functions
	nop	; 029d:
	ret
	nop

	nop	; 02a0
	ret
	nop

	nop	; 02a3
	ret
	nop

	nop	; 02a6
	ret
	nop

	nop	; 02a9
	ret
	nop

	nop	; 02ac: BIOS conout hook
	ret
	nop

	db	0	; 02af:
	db	0	; 02b0:
	db	1	; 02b1: keyboard scanning (1=on)
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	; 02b2:
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0	; 02c2:
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	db	107,0,0			; 02e0:
	db	0,0,0,0,0,0,0,0,0	; 02e4:
	db	0			; 02ed:
	db	0			; 02ee:
	db	0			; 02ef:
	db	0			; 02f0:
	db	0,0			; 02f1:
	db	0,0,0,0,0,0,0		; 02f3:
	db	0,0,0,0,0,0,0		; 02fa:	(0107)

	end
