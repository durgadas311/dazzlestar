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
	ds	64
	db	0,0,1ah
;
	db	7,'H19/H89',0	; length, term name, NUL terminator
	rept	017ch-$	;  55-chars max for terminal name (+len,NUL)
	db	0
	endm

	db	0ffh,80,11h
	db	3	; help level

	db	' ',0,1,127,127,127,95,1,1,18,20,23,1

	db	1fh	; alt down-arrow
	db	1eh	; alt up-arrow
	db	22,26,31,39,45	; KP tabs
	db	0,8,16,24,32	; KW tabs

	db	4,'LST:'	; printer
	db	4,'.MAC'	; ASM suffix
	db	1,'HF'
	db	16,7
	db	1,'D',0,0,'C',0,'HB'

	; multi-language support:
	db	12,'DZENGMNU.OVR',0,0	; Menus
	db	12,'DZENGHLP.OVR',0,0	; Help
	db	12,'DZENGMSG.OVR',0,0	; Messages
	db	0e8h,3

	; terminal definition start?
	db	24	; rows (lines)
	db	80	; columns
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0		; init seq
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0		; exit seq
	db	2,esc,'Y',0,0,0,0,0,0,0,0,0,0,0,0,0	; curs pre
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0		; curs sep
	db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0		; curs end
	db	0	; 0=row-first, 1=col-first
	db	' '	; row offset
	db	' '	; col offset
	db	0	; r/c type, 0=binary, 2=ascii 2-dig, 3=ascii 3-dig

	db	2,esc,'K',0,0,0,0,0,0,0,0,0,0,0,0,0	; erase to EOL
	db	2,esc,'M',0,0,0,0,0,0,0,0,0,0,0,0,0	; delete line
	db	2,esc,'L',0,0,0,0,0,0,0,0,0,0,0,0,0	; insert line
	db	2,esc,'E',0,0,0,0,0,0,0,0,0,0,0,0,0	; clear screen
	db	2,esc,'p',0,0,0,0,0,0,0,0,0,0,0,0,0	; rev video
	db	2,esc,'q',0,0,0,0,0,0,0,0,0,0,0,0,0	; norm video

	db	08,00,00,00,00,00,00,00

	; hooks to customize functions
	nop
	ret
	nop

	nop
	ret
	nop

	nop
	ret
	nop

	nop
	ret
	nop

	nop
	ret
	nop

	nop	; BIOS conout hook
	ret
	nop

	db	0,0
	db	1	; keyboard scanning (1=on)
	db	00,00,00,00,00,00,00,00,00,00,00,00,00,00
	db	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
	db	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
	db	'k',00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
	db	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00

	end
