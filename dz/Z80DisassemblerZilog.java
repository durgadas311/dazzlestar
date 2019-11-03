// Copyright (c) 2016 Douglas Miller <durgadas311@gmail.com>

// Uses the framework of Alberto Sánchez Terrén Z80 simulator.

public class Z80DisassemblerZilog implements Z80Disassembler {
	Memory mem;
	boolean rom;
	int bnk;
	int lastLen;

	public Z80DisassemblerZilog(Memory mem) {
		this.mem = mem;
	}

	private int read8(int adr) {
		++lastLen;
		if (bnk < 0) {
			return mem.read(adr & 0xffff);
		} else {
			return mem.read(rom, bnk, adr & 0xffff);
		}
	}

	private int read16(int adr) {
		int w;
		// little endian...
		if (bnk < 0) {
			w = mem.read(adr & 0xffff);
			++adr;
			w |= (mem.read(adr & 0xffff) << 8);
		} else {
			w = mem.read(rom, bnk, adr & 0xffff);
			++adr;
			w |= (mem.read(rom, bnk, adr & 0xffff) << 8);
		}
		lastLen += 2;
		return w;
	}

	private int relAdr(int adr) {
		byte d;
		if (bnk < 0) {
			d = (byte)mem.read(adr & 0xffff);
		} else {
			d = (byte)mem.read(rom, bnk, adr & 0xffff);
		}
		++adr;
		++lastLen;
		return adr + d;
	}

	private static final String[] regs = new String[] {
		"b", "c", "d", "e", "h", "l", "(hl)", "a" };

	private static final String[] ops = new String[] {
		"add", "adc", "sub", "sbc", "and", "xor", "or", "cp" };

	public int instrLen() { return lastLen; }

	public String disas(int pc) {
		return disas(false, -1, pc);
	}

	public String disas(boolean rom, int bnk, int pc) {
		String instr = "";
		lastLen = 0;
		this.rom = rom;
		this.bnk = bnk;
		int opCode = read8(pc++);
		if ((opCode & 0xc0) == 0x40) {
			if (opCode == 0x76) {
				instr = "halt";
			} else {
				instr = String.format("ld %s,%s",
					regs[(opCode >> 3) & 7], regs[opCode & 7]);
			}
		} else if ((opCode & 0xc0) == 0x80) {
			instr = String.format("%s %s",
					ops[(opCode >> 3) & 7], regs[opCode & 7]);
		} else switch (opCode) {
			case 0x00:       /* NOP */
				instr = "nop";
				break;
			case 0x01: {     /* LD BC,nn */
				instr = String.format("ld bc,%04x", read16(pc));
				break;
			}
			case 0x02: {     /* LD (BC),A */
				instr = "ld (bc),a";
				break;
			}
			case 0x03: {     /* INC BC */
				instr = "inc bc";
				break;
			}
			case 0x04: {     /* INC B */
				instr = "inc b";
				break;
			}
			case 0x05: {     /* DEC B */
				instr = "dec b";
				break;
			}
			case 0x06: {     /* LD B,n */
				instr = String.format("ld b,%02x", read8(pc));
				break;
			}
			case 0x07: {     /* RLCA */
				instr = "rlca";
				break;
			}
			case 0x08: {      /* EX AF,AF' */
				instr = "ex af,af'";
				break;
			}
			case 0x09: {     /* ADD HL,BC */
				instr = "add hl,bc";
				break;
			}
			case 0x0A: {     /* LD A,(BC) */
				instr = "ld a,(bc)";
				break;
			}
			case 0x0B: {     /* DEC BC */
				instr = "dec bc";
				break;
			}
			case 0x0C: {     /* INC C */
				instr = "inc c";
				break;
			}
			case 0x0D: {     /* DEC C */
				instr = "dec c";
				break;
			}
			case 0x0E: {     /* LD C,n */
				instr = String.format("ld c,%02x", read8(pc));
				break;
			}
			case 0x0F: {     /* RRCA */
				instr = "rrca";
				break;
			}
			case 0x10: {     /* DJNZ e */
				instr = String.format("djnz %04x", relAdr(pc) & 0xffff);
				break;
			}
			case 0x11: {     /* LD DE,nn */
				instr = String.format("ld de,%04x", read16(pc));
				break;
			}
			case 0x12: {     /* LD (DE),A */
				instr = "ld (de),a";
				break;
			}
			case 0x13: {     /* INC DE */
				instr = "inc de";
				break;
			}
			case 0x14: {     /* INC D */
				instr = "inc d";
				break;
			}
			case 0x15: {     /* DEC D */
				instr = "dec d";
				break;
			}
			case 0x16: {     /* LD D,n */
				instr = String.format("ld d,%02x", read8(pc));
				break;
			}
			case 0x17: {     /* RLA */
				instr = "rla";
				break;
			}
			case 0x18: {     /* JR e */
				instr = String.format("jr %04x", relAdr(pc) & 0xffff);
				break;
			}
			case 0x19: {     /* ADD HL,DE */
				instr = "add hl,de";
				break;
			}
			case 0x1A: {     /* LD A,(DE) */
				instr = "ld a,(de)";
				break;
			}
			case 0x1B: {     /* DEC DE */
				instr = "dec de";
				break;
			}
			case 0x1C: {     /* INC E */
				instr = "inc e";
				break;
			}
			case 0x1D: {     /* DEC E */
				instr = "dec e";
				break;
			}
			case 0x1E: {     /* LD E,n */
				instr = String.format("ld e,%02x", read8(pc));
				break;
			}
			case 0x1F: {     /* RRA */
				instr = "rra";
				break;
			}
			case 0x20: {     /* JR NZ,e */
				instr = String.format("jr nz,%04x", relAdr(pc) & 0xffff);
				break;
			}
			case 0x21: {     /* LD HL,nn */
				instr = String.format("ld hl,%04x", read16(pc));
				break;
			}
			case 0x22: {     /* LD (nn),HL */
				instr = String.format("ld (%04x),hl", read16(pc));
				break;
			}
			case 0x23: {     /* INC HL */
				instr = "inc hl";
				break;
			}
			case 0x24: {     /* INC H */
				instr = "inc h";
				break;
			}
			case 0x25: {     /* DEC H */
				instr = "dec h";
				break;
			}
			case 0x26: {     /* LD H,n */
				instr = String.format("ld h,%02x", read8(pc));
				break;
			}
			case 0x27: {     /* DAA */
				instr = "daa";
				break;
			}
			case 0x28: {     /* JR Z,e */
				instr = String.format("jr z,%04x", relAdr(pc) & 0xffff);
				break;
			}
			case 0x29: {     /* ADD HL,HL */
				instr = "add hl,hl";
				break;
			}
			case 0x2A: {     /* LD HL,(nn) */
				instr = String.format("ld hl,(%04x)", read16(pc));
				break;
			}
			case 0x2B: {     /* DEC HL */
				instr = "dec hl";
				break;
			}
			case 0x2C: {     /* INC L */
				instr = "inc l";
				break;
			}
			case 0x2D: {     /* DEC L */
				instr = "dec l";
				break;
			}
			case 0x2E: {     /* LD L,n */
				instr = String.format("ld l,%02x", read8(pc));
				break;
			}
			case 0x2F: {     /* CPL */
				instr = "cpl";
				break;
			}
			case 0x30: {     /* JR NC,e */
				instr = String.format("jr nc,%04x", relAdr(pc) & 0xffff);
				break;
			}
			case 0x31: {     /* LD SP,nn */
				instr = String.format("ld sp,%04x", read16(pc));
				break;
			}
			case 0x32: {     /* LD (nn),A */
				instr = String.format("ld (%04x),a", read16(pc));
				break;
			}
			case 0x33: {     /* INC SP */
				instr = "inc sp";
				break;
			}
			case 0x34: {     /* INC (HL) */
				instr = "inc (hl)";
				break;
			}
			case 0x35: {     /* DEC (HL) */
				instr = "dec (hl)";
				break;
			}
			case 0x36: {     /* LD (HL),n */
				instr = String.format("ld (hl),%02x", read8(pc));
				break;
			}
			case 0x37: {     /* SCF */
				instr = "scf";
				break;
			}
			case 0x38: {     /* JR C,e */
				instr = String.format("jr c,%04x", relAdr(pc) & 0xffff);
				break;
			}
			case 0x39: {     /* ADD HL,SP */
				instr = "add hl,sp";
				break;
			}
			case 0x3A: {     /* LD A,(nn) */
				instr = String.format("ld a,(%04x)", read16(pc));
				break;
			}
			case 0x3B: {     /* DEC SP */
				instr = "dec sp";
				break;
			}
			case 0x3C: {     /* INC A */
				instr = "inc a";
				break;
			}
			case 0x3D: {     /* DEC A */
				instr = "dec a";
				break;
			}
			case 0x3E: {     /* LD A,n */
				instr = String.format("ld a,%02x", read8(pc));
				break;
			}
			case 0x3F: {     /* CCF */
				instr = "ccf";
				break;
			}
			// 0x40 - 0x7f handled above...
			// 0x80 - 0xbf handled above...
			case 0xC0: {     /* RET NZ */
				instr = "ret nz";
				break;
			}
			case 0xC1: {     /* POP BC */
				instr = "pop bc";
				break;
			}
			case 0xC2: {     /* JP NZ,nn */
				instr = String.format("jp nz,%04x", read16(pc));
				break;
			}
			case 0xC3: {     /* JP nn */
				instr = String.format("jp %04x", read16(pc));
				break;
			}
			case 0xC4: {     /* CALL NZ,nn */
				instr = String.format("call nz,%04x", read16(pc));
				break;
			}
			case 0xC5: {     /* PUSH BC */
				instr = "push bc";
				break;
			}
			case 0xC6: {     /* ADD A,n */
				instr = String.format("add a,%02x", read8(pc));
				break;
			}
			case 0xC7: {     /* RST 00H */
				instr = "rst 00";
				break;
			}
			case 0xC8: {     /* RET Z */
				instr = "ret z";
				break;
			}
			case 0xC9: {     /* RET */
				instr = "ret";
				break;
			}
			case 0xCA: {     /* JP Z,nn */
				instr = String.format("jp z,%04x", read16(pc));
				break;
			}
			case 0xCB: {
				instr = decodeCB(pc);
				break;
			}
			case 0xCC: {     /* CALL Z,nn */
				instr = String.format("call z,%04x", read16(pc));
				break;
			}
			case 0xCD: {     /* CALL nn */
				instr = String.format("call %04x", read16(pc));
				break;
			}
			case 0xCE: {     /* ADC A,n */
				instr = String.format("adc a,%02x", read8(pc));
				break;
			}
			case 0xCF: {     /* RST 08H */
				instr = "rst 08";
				break;
			}
			case 0xD0: {     /* RET NC */
				instr = "ret nc";
				break;
			}
			case 0xD1: {     /* POP DE */
				instr = "pop de";
				break;
			}
			case 0xD2: {     /* JP NC,nn */
				instr = String.format("jp nc,%04x", read16(pc));
				break;
			}
			case 0xD3: {     /* OUT (n),A */
				instr = String.format("out (%02x),a", read8(pc));
				break;
			}
			case 0xD4: {     /* CALL NC,nn */
				instr = String.format("call nc,%04x", read16(pc));
				break;
			}
			case 0xD5: {     /* PUSH DE */
				instr = "push de";
				break;
			}
			case 0xD6: {     /* SUB n */
				instr = String.format("sub a,%02x", read8(pc));
				break;
			}
			case 0xD7: {     /* RST 10H */
				instr = "rst 10";
				break;
			}
			case 0xD8: {     /* RET C */
				instr = "ret c";
				break;
			}
			case 0xD9: {     /* EXX */
				instr = "exx";
				break;
			}
			case 0xDA: {     /* JP C,nn */
				instr = String.format("jp c,%04x", read16(pc));
				break;
			}
			case 0xDB: {     /* IN A,(n) */
				instr = String.format("in a,(%02x)", read8(pc));
				break;
			}
			case 0xDC: {     /* CALL C,nn */
				instr = String.format("call c,%04x", read16(pc));
				break;
			}
			case 0xDD: {
				instr = decodeDDFD(pc, 'x');
				break;
			}
			case 0xDE: {     /* SBC A,n */
				instr = String.format("sbc a,%02x", read8(pc));
				break;
			}
			case 0xDF: {     /* RST 18H */
				instr = "rst 18";
				break;
			}
			case 0xE0:       /* RET PO */
				instr = "ret po";
				break;
			case 0xE1:       /* POP HL */
				instr = "pop hl";
				break;
			case 0xE2:       /* JP PO,nn */
				instr = String.format("jp po,%04x", read16(pc));
				break;
			case 0xE3: {     /* EX (SP),HL */
				instr = "ex (sp),hl";
				break;
			}
			case 0xE4:       /* CALL PO,nn */
				instr = String.format("call po,%04x", read16(pc));
				break;
			case 0xE5:       /* PUSH HL */
				instr = "push hl";
				break;
			case 0xE6:       /* AND n */
				instr = String.format("and a,%02x", read8(pc));
				break;
			case 0xE7:       /* RST 20H */
				instr = "rst 20";
				break;
			case 0xE8:       /* RET PE */
				instr = "ret pe";
				break;
			case 0xE9:       /* JP (HL) */
				instr = "jp (hl)";
				break;
			case 0xEA:       /* JP PE,nn */
				instr = String.format("jp pe,%04x", read16(pc));
				break;
			case 0xEB: {     /* EX DE,HL */
				instr = "ex de,hl";
				break;
			}
			case 0xEC:       /* CALL PE,nn */
				instr = String.format("call pe,%04x", read16(pc));
				break;
			case 0xED:
				instr = decodeED(pc);
				break;
			case 0xEE:       /* XOR n */
				instr = String.format("xor a,%02x", read8(pc));
				break;
			case 0xEF:       /* RST 28H */
				instr = "rst 28";
				break;
			case 0xF0:       /* RET P */
				instr = "ret p";
				break;
			case 0xF1:       /* POP AF */
				instr = "pop af";
				break;
			case 0xF2:       /* JP P,nn */
				instr = String.format("jp p,%04x", read16(pc));
				break;
			case 0xF3:       /* DI */
				instr = "di";
				break;
			case 0xF4:       /* CALL P,nn */
				instr = String.format("call p,%04x", read16(pc));
				break;
			case 0xF5:       /* PUSH AF */
				instr = "push af";
				break;
			case 0xF6:       /* OR n */
				instr = String.format("or a,%02x", read8(pc));
				break;
			case 0xF7:       /* RST 30H */
				instr = "rst 30";
				break;
			case 0xF8:       /* RET M */
				instr = "ret m";
				break;
			case 0xF9:       /* LD SP,HL */
				instr = "ld sp,hl";
				break;
			case 0xFA:       /* JP M,nn */
				instr = String.format("jp m,%04x", read16(pc));
				break;
			case 0xFB:       /* EI */
				instr = "ei";
				break;
			case 0xFC:       /* CALL M,nn */
				instr = String.format("call m,%04x", read16(pc));
				break;
			case 0xFD:
				instr = decodeDDFD(pc, 'y');
				break;
			case 0xFE:       /* CP n */
				instr = String.format("cp a,%02x", read8(pc));
				break;
			case 0xFF:       /* RST 38H */
				instr = "rst 38";
				break;
		}
		return instr;
	}

	private static final String[] cbops = new String[] {
		"rlc", "rrc", "rl", "rr", "sla", "sra", "sll", "srl" };

	private String decodeCB(int pc) {
		String instr;
		int opCode = read8(pc);
		if (opCode < 0x40) {
			instr = String.format("%s %s",
					cbops[(opCode >> 3) & 7], regs[opCode & 7]);
		} else if (opCode < 0x80) {
			instr = String.format("bit %d,%s",
					(opCode >> 3) & 7, regs[opCode & 7]);
		} else if (opCode < 0xc0) {
			instr = String.format("res %d,%s",
					(opCode >> 3) & 7, regs[opCode & 7]);
		} else {
			instr = String.format("setb %d,%s",
					(opCode >> 3) & 7, regs[opCode & 7]);
		}
		return instr;
	}

	private String decodeDDFD(int pc, char regIXY) {
		String instr;
		int opCode = read8(pc++);
		byte disp = (byte)read8(pc++); // might not be used...

		switch (opCode) {
			case 0x09: {     /* ADD IX,BC */
				instr = String.format("add i%c,bc", regIXY);
				--lastLen;
				break;
			}
			case 0x19: {     /* ADD IX,DE */
				instr = String.format("add i%c,de", regIXY);
				--lastLen;
				break;
			}
			case 0x21: {     /* LD IX,nn */
				instr = String.format("ld i%c,%04x", regIXY, read16(--pc));
				--lastLen;
				break;
			}
			case 0x22: {     /* LD (nn),IX */
				instr = String.format("ld (%04x),i%c", read16(--pc), regIXY);
				--lastLen;
				break;
			}
			case 0x23: {     /* INC IX */
				instr = String.format("inc i%c", regIXY);
				--lastLen;
				break;
			}
			case 0x24: {     /* INC IXh */
				instr = String.format("inc i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x25: {     /* DEC IXh */
				instr = String.format("dec i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x26: {     /* LD IXh,n */
				instr = String.format("ld i%ch,%02x", regIXY, disp & 0xff);
				break;
			}
			case 0x29: {     /* ADD IX,IX */
				instr = String.format("add i%c,i%c", regIXY, regIXY);
				--lastLen;
				break;
			}
			case 0x2A: {     /* LD IX,(nn) */
				instr = String.format("ld i%c,(%04x)", regIXY, read16(--pc));
				--lastLen;
				break;
			}
			case 0x2B: {     /* DEC IX */
				instr = String.format("dec i%c", regIXY);
				--lastLen;
				break;
			}
			case 0x2C: {     /* INC IXl */
				instr = String.format("inc i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x2D: {     /* DEC IXl */
				instr = String.format("dec i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x2E: {     /* LD IXl,n */
				instr = String.format("ld i%cl,%02x", regIXY, disp & 0xff);
				break;
			}
			case 0x34: {     /* INC (IX+d) */
				instr = String.format("inc (i%c+%d)", regIXY, disp);
				break;
			}
			case 0x35: {     /* DEC (IX+d) */
				instr = String.format("dec (i%c+%d)", regIXY, disp);
				break;
			}
			case 0x36: {     /* LD (IX+d),n */
				instr = String.format("ld (i%c+%d),%02x", regIXY, disp, read8(pc));
				break;
			}
			case 0x39: {     /* ADD IX,SP */
				instr = String.format("add i%c,sp", regIXY);
				--lastLen;
				break;
			}
			case 0x44: {     /* LD B,IXh */
				instr = String.format("ld b,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x45: {     /* LD B,IXl */
				instr = String.format("ld b,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x46: {     /* LD B,(IX+d) */
				instr = String.format("ld b,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0x4C: {     /* LD C,IXh */
				instr = String.format("ld c,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x4D: {     /* LD C,IXl */
				instr = String.format("ld c,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x4E: {     /* LD C,(IX+d) */
				instr = String.format("ld c,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0x54: {     /* LD D,IXh */
				instr = String.format("ld d,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x55: {     /* LD D,IXl */
				instr = String.format("ld d,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x56: {     /* LD D,(IX+d) */
				instr = String.format("ld d,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0x5C: {     /* LD E,IXh */
				instr = String.format("ld e,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x5D: {     /* LD E,IXl */
				instr = String.format("ld e,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x5E: {     /* LD E,(IX+d) */
				instr = String.format("ld e,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0x60: {     /* LD IXh,B */
				instr = String.format("ld i%ch,b", regIXY);
				--lastLen;
				break;
			}
			case 0x61: {     /* LD IXh,C */
				instr = String.format("ld i%ch,c", regIXY);
				--lastLen;
				break;
			}
			case 0x62: {     /* LD IXh,D */
				instr = String.format("ld i%ch,d", regIXY);
				--lastLen;
				break;
			}
			case 0x63: {     /* LD IXh,E */
				instr = String.format("ld i%ch,e", regIXY);
				--lastLen;
				break;
			}
			case 0x64: {     /* LD IXh,IXh */
				instr = String.format("ld i%ch,i%ch", regIXY, regIXY);
				--lastLen;
				break;
			}
			case 0x65: {     /* LD IXh,IXl */
				instr = String.format("ld i%ch,i%cl", regIXY, regIXY);
				--lastLen;
				break;
			}
			case 0x66: {     /* LD H,(IX+d) */
				instr = String.format("ld h,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0x67: {     /* LD IXh,A */
				instr = String.format("ld i%ch,a", regIXY);
				--lastLen;
				break;
			}
			case 0x68: {     /* LD IXl,B */
				instr = String.format("ld i%cl,b", regIXY);
				--lastLen;
				break;
			}
			case 0x69: {     /* LD IXl,C */
				instr = String.format("ld i%cl,c", regIXY);
				--lastLen;
				break;
			}
			case 0x6A: {     /* LD IXl,D */
				instr = String.format("ld i%cl,d", regIXY);
				--lastLen;
				break;
			}
			case 0x6B: {     /* LD IXl,E */
				instr = String.format("ld i%cl,e", regIXY);
				--lastLen;
				break;
			}
			case 0x6C: {     /* LD IXl,IXh */
				instr = String.format("ld i%cl,i%ch", regIXY, regIXY);
				--lastLen;
				break;
			}
			case 0x6D: {     /* LD IXl,IXl */
				instr = String.format("ld i%cl,i%cl", regIXY, regIXY);
				--lastLen;
				break;
			}
			case 0x6E: {     /* LD L,(IX+d) */
				instr = String.format("ld l,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0x6F: {     /* LD IXl,A */
				instr = String.format("ld i%cl,a", regIXY);
				--lastLen;
				break;
			}
			case 0x70: {     /* LD (IX+d),B */
				instr = String.format("ld (i%c+%d),b", regIXY, disp);
				break;
			}
			case 0x71: {     /* LD (IX+d),C */
				instr = String.format("ld (i%c+%d),c", regIXY, disp);
				break;
			}
			case 0x72: {     /* LD (IX+d),D */
				instr = String.format("ld (i%c+%d),d", regIXY, disp);
				break;
			}
			case 0x73: {     /* LD (IX+d),E */
				instr = String.format("ld (i%c+%d),e", regIXY, disp);
				break;
			}
			case 0x74: {     /* LD (IX+d),H */
				instr = String.format("ld (i%c+%d),h", regIXY, disp);
				break;
			}
			case 0x75: {     /* LD (IX+d),L */
				instr = String.format("ld (i%c+%d),l", regIXY, disp);
				break;
			}
			case 0x77: {     /* LD (IX+d),A */
				instr = String.format("ld (i%c+%d),a", regIXY, disp);
				break;
			}
			case 0x7C: {     /* LD A,IXh */
				instr = String.format("ld a,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x7D: {     /* LD A,IXl */
				instr = String.format("ld a,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x7E: {     /* LD A,(IX+d) */
				instr = String.format("ld a,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0x84: {     /* ADD A,IXh */
				instr = String.format("add a,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x85: {     /* ADD A,IXl */
				instr = String.format("add a,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x86: {     /* ADD A,(IX+d) */
				instr = String.format("add a,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0x8C: {     /* ADC A,IXh */
				instr = String.format("adc a,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x8D: {     /* ADC A,IXl */
				instr = String.format("adc a,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x8E: {     /* ADC A,(IX+d) */
				instr = String.format("adc a,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0x94: {     /* SUB IXh */
				instr = String.format("sub a,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x95: {     /* SUB IXl */
				instr = String.format("sub a,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x96: {     /* SUB (IX+d) */
				instr = String.format("sub a,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0x9C: {     /* SBC A,IXh */
				instr = String.format("sbc a,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0x9D: {     /* SBC A,IXl */
				instr = String.format("sbc a,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0x9E: {     /* SBC A,(IX+d) */
				instr = String.format("sbc a,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0xA4: {     /* AND IXh */
				instr = String.format("and a,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0xA5: {     /* AND IXl */
				instr = String.format("and a,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0xA6: {     /* AND (IX+d) */
				instr = String.format("and a,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0xAC: {     /* XOR IXh */
				instr = String.format("xor a,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0xAD: {     /* XOR IXl */
				instr = String.format("xor a,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0xAE: {     /* XOR (IX+d) */
				instr = String.format("xor a,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0xB4: {     /* OR IXh */
				instr = String.format("or a,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0xB5: {     /* OR IXl */
				instr = String.format("or a,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0xB6: {     /* OR (IX+d) */
				instr = String.format("or a,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0xBC: {     /* CP IXh */
				instr = String.format("cp a,i%ch", regIXY);
				--lastLen;
				break;
			}
			case 0xBD: {     /* CP IXl */
				instr = String.format("cp a,i%cl", regIXY);
				--lastLen;
				break;
			}
			case 0xBE: {     /* CP (IX+d) */
				instr = String.format("cp a,(i%c+%d)", regIXY, disp);
				break;
			}
			case 0xCB: {
				opCode = read8(pc++);
				instr = decodeDDFDCB(opCode, disp, regIXY);
				break;
			}
			case 0xE1: {     /* POP IX */
				instr = String.format("pop i%c", regIXY);
				--lastLen;
				break;
			}
			case 0xE3: {     /* EX (SP),IX */
				instr = String.format("ex (sp),i%c", regIXY);
				--lastLen;
				break;
			}
			case 0xE5: {     /* PUSH IX */
				instr = String.format("push i%c", regIXY);
				--lastLen;
				break;
			}
			case 0xE9: {     /* JP (IX) */
				instr = String.format("jp (i%c)", regIXY);
				--lastLen;
				break;
			}
			case 0xF9: {     /* LD SP,IX */
				instr = String.format("ld sp,i%c", regIXY);
				--lastLen;
				break;
			}
			default: {
				int op = regIXY == 'x' ? 0xdd : 0xfd;
				instr = String.format("?%02x %02x...", op, opCode);
				break;
			}
		}
		return instr;
	}

	private String decodeDDFDCB(int opCode, byte address, char regIXY) {
		String instr;
		if (opCode < 0x40) {
			if ((opCode & 7) == 6) {
				instr = String.format("%s (i%c+%d)",
					cbops[(opCode >> 3) & 7], regIXY, address);
			} else {
				instr = String.format("%s (i%c+%d),%s",
					cbops[(opCode >> 3) & 7], regIXY, address,
					regs[opCode & 7]);
			}
		} else if (opCode < 0x80) {
			instr = String.format("bit %d,(i%c+%d)",
					(opCode >> 3) & 7, regIXY, address);
		} else if (opCode < 0xc0) {
			if ((opCode & 7) == 6) {
				instr = String.format("res %d,(i%c+%d)",
					(opCode >> 3) & 7, regIXY, address);
			} else {
				instr = String.format("res %d,(i%c+%d),%s",
					(opCode >> 3) & 7, regIXY, address,
					regs[opCode & 7]);
			}
		} else {
			if ((opCode & 7) == 6) {
				instr = String.format("set %d,(i%c+%d)",
					(opCode >> 3) & 7, regIXY, address);
			} else {
				instr = String.format("set %d,(i%c+%d),%s",
					(opCode >> 3) & 7, regIXY, address,
					regs[opCode & 7]);
			}
		}
		return instr;
	}

	private String decodeED(int pc) {
		String instr;
		int opCode = read8(pc++);

		switch (opCode) {
			case 0x40: {     /* IN B,(C) */
				instr = "in b,(c)";
				break;
			}
			case 0x41: {     /* OUT (C),B */
				instr = "out (c),b";
				break;
			}
			case 0x42: {     /* SBC HL,BC */
				instr = "sbc hl,bc";
				break;
			}
			case 0x43: {     /* LD (nn),BC */
				instr = String.format("ld (%04x),bc", read16(pc));
				break;
			}
			case 0x44:
			case 0x4C:
			case 0x54:
			case 0x5C:
			case 0x64:
			case 0x6C:
			case 0x74:
			case 0x7C: {     /* NEG */
				instr = "neg";
				break;
			}
			case 0x4D:       /* RETI */
				instr = "reti";
				break;
			case 0x45:
			case 0x55:
			case 0x5D:
			case 0x65:
			case 0x6D:
			case 0x75:
			case 0x7D: {     /* RETN */
				instr = "retn";
				break;
			}
			case 0x46:
			case 0x4E:
			case 0x66:
			case 0x6E: {     /* IM 0 */
				instr = "im 0";
				break;
			}
			case 0x47: {     /* LD I,A */
				instr = "ld i,a";
				break;
			}
			case 0x48: {     /* IN C,(C) */
				instr = "in c,(c)";
				break;
			}
			case 0x49: {     /* OUT (C),C */
				instr = "out (c),c";
				break;
			}
			case 0x4A: {     /* ADC HL,BC */
				instr = "adc hl,bc";
				break;
			}
			case 0x4B: {     /* LD BC,(nn) */
				instr = String.format("ld bc,(%04x)", read16(pc));
				break;
			}
			case 0x4F: {     /* LD R,A */
				instr = "ld r,a";
				break;
			}
			case 0x50: {     /* IN D,(C) */
				instr = "in d,(c)";
				break;
			}
			case 0x51: {     /* OUT (C),D */
				instr = "out (c),d";
				break;
			}
			case 0x52: {     /* SBC HL,DE */
				instr = "sbc hl,de";
				break;
			}
			case 0x53: {     /* LD (nn),DE */
				instr = String.format("ld (%04x),de", read16(pc));
				break;
			}
			case 0x56:
			case 0x76: {     /* IM 1 */
				instr = "im 1";
				break;
			}
			case 0x57: {     /* LD A,I */
				instr = "ld a,i";
				break;
			}
			case 0x58: {     /* IN E,(C) */
				instr = "in e,(c)";
				break;
			}
			case 0x59: {     /* OUT (C),E */
				instr = "out (c),e";
				break;
			}
			case 0x5A: {     /* ADC HL,DE */
				instr = "adc hl,de";
				break;
			}
			case 0x5B: {     /* LD DE,(nn) */
				instr = String.format("ld de,(%04x)", read16(pc));
				break;
			}
			case 0x5E:
			case 0x7E: {     /* IM 2 */
				instr = "im 2";
				break;
			}
			case 0x5F: {     /* LD A,R */
				instr = "ld a,r";
				break;
			}
			case 0x60: {     /* IN H,(C) */
				instr = "in h,(c)";
				break;
			}
			case 0x61: {     /* OUT (C),H */
				instr = "out (c),h";
				break;
			}
			case 0x62: {     /* SBC HL,HL */
				instr = "sbc hl,hl";
				break;
			}
			case 0x63: {     /* LD (nn),HL */
				instr = String.format("ld* (%04x),hl", read16(pc));
				break;
			}
			case 0x67: {     /* RRD */
				instr = "rrd";
				break;
			}
			case 0x68: {     /* IN L,(C) */
				instr = "in l,(c)";
				break;
			}
			case 0x69: {     /* OUT (C),L */
				instr = "out (c),l";
				break;
			}
			case 0x6A: {     /* ADC HL,HL */
				instr = "adc hl,hl";
				break;
			}
			case 0x6B: {     /* LD HL,(nn) */
				instr = String.format("ld* hl,(%04x)", read16(pc));
				break;
			}
			case 0x6F: {     /* RLD */
				instr = "rld";
				break;
			}
			case 0x70: {     /* IN F,(C) */
				instr = "in f,(c)";
				break;
			}
			case 0x71: {     /* OUT (C),F */
				instr = "out (c),f";
				break;
			}
			case 0x72: {     /* SBC HL,SP */
				instr = "sbc hl,sp";
				break;
			}
			case 0x73: {     /* LD (nn),SP */
				instr = String.format("ld (%04x),sp", read16(pc));
				break;
			}
			case 0x78: {     /* IN A,(C) */
				instr = "in a,(c)";
				break;
			}
			case 0x79: {     /* OUT (C),A */
				instr = "out (c),a";
				break;
			}
			case 0x7A: {     /* ADC HL,SP */
				instr = "adc hl,sp";
				break;
			}
			case 0x7B: {     /* LD SP,(nn) */
				instr = String.format("ld sp,(%04x)", read16(pc));
				break;
			}
			case 0xA0: {     /* LDI */
				instr = "ldi";
				break;
			}
			case 0xA1: {     /* CPI */
				instr = "cpi";
				break;
			}
			case 0xA2: {     /* INI */
				instr = "ini";
				break;
			}
			case 0xA3: {     /* OUTI */
				instr = "outi";
				break;
			}
			case 0xA8: {     /* LDD */
				instr = "ldd";
				break;
			}
			case 0xA9: {     /* CPD */
				instr = "cpd";
				break;
			}
			case 0xAA: {     /* IND */
				instr = "ind";
				break;
			}
			case 0xAB: {     /* OUTD */
				instr = "outd";
				break;
			}
			case 0xB0: {     /* LDIR */
				instr = "ldir";
				break;
			}
			case 0xB1: {     /* CPIR */
				instr = "cpir";
				break;
			}
			case 0xB2: {     /* INIR */
				instr = "inir";
				break;
			}
			case 0xB3: {     /* OTIR */
				instr = "outir";
				break;
			}
			case 0xB8: {     /* LDDR */
				instr = "lddr";
				break;
			}
			case 0xB9: {     /* CPDR */
				instr = "cpdr";
				break;
			}
			case 0xBA: {     /* INDR */
				instr = "indr";
				break;
			}
			case 0xBB: {     /* OTDR */
				instr = "outdr";
				break;
			}
			default: {
				instr = String.format("?ed %02x", opCode);
				break;
			}
		}
		return instr;
	}

}
