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
	ds	3	; entry point - do not disturb
	ds	2
	ds	2
	ds	1	; 0107
	ds	1
	ds	1
	ds	56	; copyright message (len,str)

 if ($ <> 0142h)
	.error "ConfigBegin Fail"
 endif
; ConfigBegin
	db	1ah	; 0142: terminator? marker?
	db	5,'xterm',0	; 0143: len, term name, NUL term
	rept	017ch-$	;  55-chars max for terminal name (+len,NUL)
	db	0
	endm

	db	0ffh	; 017c: menus rev vid (0x80)
	db	80	; 017d:	delay for blink (*8)
	db	17	; 017e: delay for 2ndry menus (*128)
	db	3	; 017f: help level

	db	20h	; 0180: CP/M version (>= 2.0)
	db	0	; 0181: OF on/off
	db	1	; 0182: OU on/ff
	db	7fh	; 0183: 80-ff undisplayable (0x80)
	db	7fh	; 0184: bit7 in ascii win (0x80)
	db	7fh	; 0185: disp char limit (7eh=Hazeltine/7fh)
	db	'_'	; 0186: char for undisplayables
	db	1	; 0187: hilite in hex win
	db	1	; 0188: hilite in ascii win
	db	18	; 0189: instr win last line
	db	20	; 018a: hex win first line
	db	23	; 018b: hex win last line
	db	1	; 018c:	rel jmp adds "; $+xx"

	db	1fh	; 018d: alt down-arrow key
	db	1eh	; 018e: alt up-arrow key
	db	22,26,31,39,45	; 018f: LST tab stops
	db	0,8,16,24,32	; 0194: ASM tab stops

	db	4,'LST:'	; 0199: printer device
	db	4,'.MAC'	; 019e: ASM suffix
	db	1		; 01a3: SA interative pref
	db	72		; 01a4: screen right col
	db	70		; 01a5:	list right col
	db	16		; 01a6:	word break (threshold)?
	db	7		; 01a7: cache
	db	1,'D',0,0	; 01a8:	(BC mode? N/U?)
	db	'C'		; 01ac:	(BC mode? N/U?)
	db	0		; 01ad:	LST: left margin
	db	'H'		; 01ae: suffix for hex const
	db	'B'		; 01af: suffix for bin const

	; multi-language support:
	db	12,'DZENGMNU.OVR',0,0	; 01b0: Menus file
	db	12,'DZENGHLP.OVR',0,0	; 01bf: Help file
	db	12,'DZENGMSG.OVR',0,0	; 01ce: Messages file
	dw	1000		; 01dd: headroom

	; terminal definition start?
	db	24	; 01df: rows (lines)
	db	80	; 01e0: columns
	db	14,esc,'[H',esc,'[2J',esc,'[1;24r',0		; 01e1: init seq
	db	10,esc,'[r',esc,'[H',esc,'[2J',0,0,0,0,0	; 01f1: exit seq
	db	2,esc,'[',0,0,0,0,0,0,0,0,0,0,0,0,0	; 0201: curs pre
	db	1,';',0,0,0,0,0,0,0,0,0,0,0,0,0,0	; 0211: curs sep
	db	1,'H',0,0,0,0,0,0,0,0,0,0,0,0,0,0	; 0221: curs end
	db	0	; 0231: 0=row-first, 1=col-first
	db	1	; 0232: row offset
	db	1	; 0233: col offset
	db	2	; 0234: r/c type, 0=binary, 2=ascii 2-dig, 3=ascii 3-dig

	db	3,esc,'[K',0,0,0,0,0,0,0,0,0,0,0,0	; 0235: erase to EOL
	db	3,esc,'[M',0,0,0,0,0,0,0,0,0,0,0,0	; 0245: delete line
	db	3,esc,'[L',0,0,0,0,0,0,0,0,0,0,0,0	; 0255: insert line
	db	4,esc,'[2J',0,0,0,0,0,0,0,0,0,0,0	; 0265: clear screen
	db	4,esc,'[7m',0,0,0,0,0,0,0,0,0,0,0	; 0275: rev video
	db	4,esc,'[0m',0,0,0,0,0,0,0,0,0,0,0	; 0285: norm video

	db	8	; 0295: n/c
	db	1	; 0296: last screen char usable
	db	0	; 0297:	patch, non-zero flag for video RAM
	dw	0	; 0298: patch, video RAM addr
	db	0	; 029a: (?)
	db	0	; 029b: n/c
	db	0	; 029c: n/c

	; hooks to customize functions
	nop	; 029d: video RAM map in hook
	ret
	nop

	nop	; 02a0: video RAM map out hook
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

	db	0	; 02af: n/c
	db	0	; 02b0: n/c
	db	1	; 02b1: keyboard scanning (1=on)
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	; 02b2: printer init
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0	; 02c2: patch area...
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0	; ...02df
; ConfigEnd
 if ($ <> 02e0h)
	.error "Overflow Config Area"
 endif
	end
