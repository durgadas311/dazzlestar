// Copyright (c) 2016 Douglas Miller <durgadas311@gmail.com>

// Uses the framework of Alberto Sánchez Terrén Z80 simulator.

public class Z80DisassemblerZilog implements Z80Disassembler {
	Memory mem;
	boolean rom;
	int bnk;
	int lastLen;
	Z80Dissed instr;

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

	public Z80Dissed disas(int pc) {
		return disas(false, -1, pc);
	}

	public Z80Dissed disas(boolean rom, int bnk, int pc) {
		instr = new Z80Dissed();
		lastLen = 0;
		this.rom = rom;
		this.bnk = bnk;
		int opCode = read8(pc++);
		if ((opCode & 0xc0) == 0x40) {
			if (opCode == 0x76) {
				instr.op = "halt";
			} else {
				instr.op = "ld";
				instr.fmt = String.format("%s,%s",
					regs[(opCode >> 3) & 7], regs[opCode & 7]);
			}
		} else if ((opCode & 0xc0) == 0x80) {
			instr.op = ops[(opCode >> 3) & 7];
			instr.fmt = String.format("%s", regs[opCode & 7]);
		} else switch (opCode) {
			case 0x00:       /* NOP */
				instr.op = "nop";
				break;
			case 0x01:       /* LD BC,nn */
				instr.op = "ld";
				instr.fmt = "bc,%s";
				instr.addr = read16(pc);
				break;
			case 0x02:       /* LD (BC),A */
				instr.op = "ld";
				instr.fmt = "(bc),a";
				break;
			case 0x03:       /* INC BC */
				instr.op = "inc";
				instr.fmt = "bc";
				break;
			case 0x04:       /* INC B */
				instr.op = "inc";
				instr.fmt = "b";
				break;
			case 0x05:       /* DEC B */
				instr.op = "dec";
				instr.fmt = "b";
				break;
			case 0x06:       /* LD B,n */
				instr.op = "ld";
				instr.fmt = String.format("b,0%02xh", read8(pc));
				break;
			case 0x07:       /* RLCA */
				instr.op = "rlca";
				break;
			case 0x08:        /* EX AF,AF' */
				instr.op = "ex";
				instr.fmt = "af,af";
				break;
			case 0x09:       /* ADD HL,BC */
				instr.op = "add";
				instr.fmt = "hl,bc";
				break;
			case 0x0A:       /* LD A,(BC) */
				instr.op = "ld";
				instr.fmt = "a,(bc)";
				break;
			case 0x0B:       /* DEC BC */
				instr.op = "dec";
				instr.fmt = "bc";
				break;
			case 0x0C:       /* INC C */
				instr.op = "inc";
				instr.fmt = "c";
				break;
			case 0x0D:       /* DEC C */
				instr.op = "dec";
				instr.fmt = "c";
				break;
			case 0x0E:       /* LD C,n */
				instr.op = "ld";
				instr.fmt = String.format("c,0%02xh", read8(pc));
				break;
			case 0x0F:       /* RRCA */
				instr.op = "rrca";
				break;
			case 0x10:       /* DJNZ e */
				instr.op = "djnz";
				instr.fmt = "%s";
				instr.addr = relAdr(pc) & 0xffff;
				break;
			case 0x11:       /* LD DE,nn */
				instr.op = "ld";
				instr.fmt = "de,%s";
				instr.addr = read16(pc);
				break;
			case 0x12:       /* LD (DE),A */
				instr.op = "ld";
				instr.fmt = "(de),a";
				break;
			case 0x13:       /* INC DE */
				instr.op = "inc";
				instr.fmt = "de";
				break;
			case 0x14:       /* INC D */
				instr.op = "inc";
				instr.fmt = "d";
				break;
			case 0x15:       /* DEC D */
				instr.op = "dec";
				instr.fmt = "d";
				break;
			case 0x16:       /* LD D,n */
				instr.op = "ld";
				instr.fmt = String.format("d,0%02xh", read8(pc));
				break;
			case 0x17:       /* RLA */
				instr.op = "rla";
				break;
			case 0x18:       /* JR e */
				instr.op = "jr";
				instr.fmt = "%s";
				instr.addr = relAdr(pc) & 0xffff;
				break;
			case 0x19:       /* ADD HL,DE */
				instr.op = "add";
				instr.fmt = "hl,de";
				break;
			case 0x1A:       /* LD A,(DE) */
				instr.op = "ld";
				instr.fmt = "a,(de)";
				break;
			case 0x1B:       /* DEC DE */
				instr.op = "dec";
				instr.fmt = "de";
				break;
			case 0x1C:       /* INC E */
				instr.op = "inc";
				instr.fmt = "e";
				break;
			case 0x1D:       /* DEC E */
				instr.op = "dec";
				instr.fmt = "e";
				break;
			case 0x1E:       /* LD E,n */
				instr.op = "ld";
				instr.fmt = String.format("e,0%02xh", read8(pc));
				break;
			case 0x1F:       /* RRA */
				instr.op = "rra";
				break;
			case 0x20:       /* JR NZ,e */
				instr.op = "jr";
				instr.fmt = "nz,%s";
				instr.addr = relAdr(pc) & 0xffff;
				break;
			case 0x21:       /* LD HL,nn */
				instr.op = "ld";
				instr.fmt = "hl,%s";
				instr.addr = read16(pc);
				break;
			case 0x22:       /* LD (nn),HL */
				instr.op = "ld";
				instr.fmt = "(%s),hl";
				instr.addr = read16(pc);
				break;
			case 0x23:       /* INC HL */
				instr.op = "inc";
				instr.fmt = "hl";
				break;
			case 0x24:       /* INC H */
				instr.op = "inc";
				instr.fmt = "h";
				break;
			case 0x25:       /* DEC H */
				instr.op = "dec";
				instr.fmt = "h";
				break;
			case 0x26:       /* LD H,n */
				instr.op = "ld";
				instr.fmt = String.format("h,0%02xh", read8(pc));
				break;
			case 0x27:       /* DAA */
				instr.op = "daa";
				break;
			case 0x28:       /* JR Z,e */
				instr.op = "jr";
				instr.fmt = "z,%s";
				instr.addr = relAdr(pc) & 0xffff;
				break;
			case 0x29:       /* ADD HL,HL */
				instr.op = "add";
				instr.fmt = "hl,hl";
				break;
			case 0x2A:       /* LD HL,(nn) */
				instr.op = "ld";
				instr.fmt = "hl,(%s)";
				instr.addr = read16(pc);
				break;
			case 0x2B:       /* DEC HL */
				instr.op = "dec";
				instr.fmt = "hl";
				break;
			case 0x2C:       /* INC L */
				instr.op = "inc";
				instr.fmt = "l";
				break;
			case 0x2D:       /* DEC L */
				instr.op = "dec";
				instr.fmt = "l";
				break;
			case 0x2E:       /* LD L,n */
				instr.op = "ld";
				instr.fmt = String.format("l,0%02xh", read8(pc));
				break;
			case 0x2F:       /* CPL */
				instr.op = "cpl";
				break;
			case 0x30:       /* JR NC,e */
				instr.op = "jr";
				instr.fmt = "nc,%s";
				instr.addr = relAdr(pc) & 0xffff;
				break;
			case 0x31:       /* LD SP,nn */
				instr.op = "ld";
				instr.fmt = "sp,%s";
				instr.addr = read16(pc);
				break;
			case 0x32:       /* LD (nn),A */
				instr.op = "ld";
				instr.fmt = "(%s),a";
				instr.addr = read16(pc);
				break;
			case 0x33:       /* INC SP */
				instr.op = "inc";
				instr.fmt = "sp";
				break;
			case 0x34:       /* INC (HL) */
				instr.op = "inc";
				instr.fmt = "(hl)";
				break;
			case 0x35:       /* DEC (HL) */
				instr.op = "dec";
				instr.fmt = "(hl)";
				break;
			case 0x36:       /* LD (HL),n */
				instr.op = "ld";
				instr.fmt = String.format("(hl),0%02xh", read8(pc));
				break;
			case 0x37:       /* SCF */
				instr.op = "scf";
				break;
			case 0x38:       /* JR C,e */
				instr.op = "jr";
				instr.fmt = "c,%s";
				instr.addr = relAdr(pc) & 0xffff;
				break;
			case 0x39:       /* ADD HL,SP */
				instr.op = "add";
				instr.fmt = "hl,sp";
				break;
			case 0x3A:       /* LD A,(nn) */
				instr.op = "ld";
				instr.fmt = "a,(%s)";
				instr.addr = read16(pc);
				break;
			case 0x3B:       /* DEC SP */
				instr.op = "dec";
				instr.fmt = "sp";
				break;
			case 0x3C:       /* INC A */
				instr.op = "inc";
				instr.fmt = "a";
				break;
			case 0x3D:       /* DEC A */
				instr.op = "dec";
				instr.fmt = "a";
				break;
			case 0x3E:       /* LD A,n */
				instr.op = "ld";
				instr.fmt = String.format("a,0%02xh", read8(pc));
				break;
			case 0x3F:       /* CCF */
				instr.op = "ccf";
				break;
			// 0x40 - 0x7f handled above...
			// 0x80 - 0xbf handled above...
			case 0xC0:       /* RET NZ */
				instr.op = "ret";
				instr.fmt = "nz";
				break;
			case 0xC1:       /* POP BC */
				instr.op = "pop";
				instr.fmt = "bc";
				break;
			case 0xC2:       /* JP NZ,nn */
				instr.op = "jp";
				instr.fmt = "nz,%s";
				instr.addr = read16(pc);
				break;
			case 0xC3:       /* JP nn */
				instr.op = "jp";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				break;
			case 0xC4:       /* CALL NZ,nn */
				instr.op = "call";
				instr.fmt = "nz,%s";
				instr.addr = read16(pc);
				break;
			case 0xC5:       /* PUSH BC */
				instr.op = "push";
				instr.fmt = "bc";
				break;
			case 0xC6:       /* ADD A,n */
				instr.op = "add";
				instr.fmt = String.format("a,0%02xh", read8(pc));
				break;
			case 0xC7:       /* RST 00H */
				instr.op = "rst";
				instr.fmt = "00h";
				break;
			case 0xC8:       /* RET Z */
				instr.op = "ret";
				instr.fmt = "z";
				break;
			case 0xC9:       /* RET */
				instr.op = "ret";
				break;
			case 0xCA:       /* JP Z,nn */
				instr.op = "jp";
				instr.fmt = "z,%s";
				instr.addr = read16(pc);
				break;
			case 0xCB:  
				decodeCB(pc);
				break;
			case 0xCC:       /* CALL Z,nn */
				instr.op = "call";
				instr.fmt = "z,%s";
				instr.addr = read16(pc);
				break;
			case 0xCD:       /* CALL nn */
				instr.op = "call";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				break;
			case 0xCE:       /* ADC A,n */
				instr.op = "adc";
				instr.fmt = String.format("a,0%02xh", read8(pc));
				break;
			case 0xCF:       /* RST 08H */
				instr.op = "rst";
				instr.fmt = "08h";
				break;
			case 0xD0:       /* RET NC */
				instr.op = "ret";
				instr.fmt = "nc";
				break;
			case 0xD1:       /* POP DE */
				instr.op = "pop";
				instr.fmt = "de";
				break;
			case 0xD2:       /* JP NC,nn */
				instr.op = "jp";
				instr.fmt = "nc,%s";
				instr.addr = read16(pc);
				break;
			case 0xD3:       /* OUT (n),A */
				instr.op = "out";
				instr.fmt = String.format("(0%02xh),a", read8(pc));
				break;
			case 0xD4:       /* CALL NC,nn */
				instr.op = "call";
				instr.fmt = "nc,%s";
				instr.addr = read16(pc);
				break;
			case 0xD5:       /* PUSH DE */
				instr.op = "push";
				instr.fmt = "de";
				break;
			case 0xD6:       /* SUB n */
				instr.op = "sub";
				instr.fmt = String.format("a,0%02xh", read8(pc));
				break;
			case 0xD7:       /* RST 10H */
				instr.op = "rst";
				instr.fmt = "10h";
				break;
			case 0xD8:       /* RET C */
				instr.op = "ret";
				instr.fmt = "c";
				break;
			case 0xD9:       /* EXX */
				instr.op = "exx";
				break;
			case 0xDA:       /* JP C,nn */
				instr.op = "jp";
				instr.fmt = "c,%s";
				instr.addr = read16(pc);
				break;
			case 0xDB:       /* IN A,(n) */
				instr.op = "in";
				instr.fmt = String.format("a,(0%02xh)", read8(pc));
				break;
			case 0xDC:       /* CALL C,nn */
				instr.op = "call";
				instr.fmt = "c,%s";
				instr.addr = read16(pc);
				break;
			case 0xDD:
				decodeDDFD(pc, 'x');
				break;
			case 0xDE:       /* SBC A,n */
				instr.op = "sbc";
				instr.fmt = String.format("a,0%02xh", read8(pc));
				break;
			case 0xDF:       /* RST 18H */
				instr.op = "rst";
				instr.fmt = "18h";
				break;
			case 0xE0:       /* RET PO */
				instr.op = "ret";
				instr.fmt = "po";
				break;
			case 0xE1:       /* POP HL */
				instr.op = "pop";
				instr.fmt = "hl";
				break;
			case 0xE2:       /* JP PO,nn */
				instr.op = "jp";
				instr.fmt = "po,%s";
				instr.addr = read16(pc);
				break;
			case 0xE3:       /* EX (SP),HL */
				instr.op = "ex";
				instr.fmt = "(sp),hl";
				break;
			case 0xE4:       /* CALL PO,nn */
				instr.op = "call";
				instr.fmt = "po,%s";
				instr.addr = read16(pc);
				break;
			case 0xE5:       /* PUSH HL */
				instr.op = "push";
				instr.fmt = "hl";
				break;
			case 0xE6:       /* AND n */
				instr.op = "and";
				instr.fmt = String.format("a,0%02xh", read8(pc));
				break;
			case 0xE7:       /* RST 20H */
				instr.op = "rst";
				instr.fmt = "20h";
				break;
			case 0xE8:       /* RET PE */
				instr.op = "ret";
				instr.fmt = "pe";
				break;
			case 0xE9:       /* JP (HL) */
				instr.op = "jp";
				instr.fmt = "(hl)";
				break;
			case 0xEA:       /* JP PE,nn */
				instr.op = "jp";
				instr.fmt = "pe,%s";
				instr.addr = read16(pc);
				break;
			case 0xEB:       /* EX DE,HL */
				instr.op = "ex";
				instr.fmt = "de,hl";
				break;
			case 0xEC:       /* CALL PE,nn */
				instr.op = "call";
				instr.fmt = "pe,%s";
				instr.addr = read16(pc);
				break;
			case 0xED:
				decodeED(pc);
				break;
			case 0xEE:       /* XOR n */
				instr.op = "xor";
				instr.fmt = String.format("a,0%02xh", read8(pc));
				break;
			case 0xEF:       /* RST 28H */
				instr.op = "rst";
				instr.fmt = "28h";
				break;
			case 0xF0:       /* RET P */
				instr.op = "ret";
				instr.fmt = "p";
				break;
			case 0xF1:       /* POP AF */
				instr.op = "pop";
				instr.fmt = "af";
				break;
			case 0xF2:       /* JP P,nn */
				instr.op = "jp";
				instr.fmt = "p,%s";
				instr.addr = read16(pc);
				break;
			case 0xF3:       /* DI */
				instr.op = "di";
				break;
			case 0xF4:       /* CALL P,nn */
				instr.op = "call";
				instr.fmt = "p,%s";
				instr.addr = read16(pc);
				break;
			case 0xF5:       /* PUSH AF */
				instr.op = "push";
				instr.fmt = "af";
				break;
			case 0xF6:       /* OR n */
				instr.op = "or";
				instr.fmt = String.format("a,0%02xh", read8(pc));
				break;
			case 0xF7:       /* RST 30H */
				instr.op = "rst";
				instr.fmt = "30h";
				break;
			case 0xF8:       /* RET M */
				instr.op = "ret";
				instr.fmt = "m";
				break;
			case 0xF9:       /* LD SP,HL */
				instr.op = "ld";
				instr.fmt = "sp,hl";
				break;
			case 0xFA:       /* JP M,nn */
				instr.op = "jp";
				instr.fmt = "m,%s";
				instr.addr = read16(pc);
				break;
			case 0xFB:       /* EI */
				instr.op = "ei";
				break;
			case 0xFC:       /* CALL M,nn */
				instr.op = "call";
				instr.fmt = "m,%s";
				instr.addr = read16(pc);
				break;
			case 0xFD:
				decodeDDFD(pc, 'y');
				break;
			case 0xFE:       /* CP n */
				instr.op = "cp";
				instr.fmt = String.format("a,0%02xh", read8(pc));
				break;
			case 0xFF:       /* RST 38H */
				instr.op = "rst";
				instr.fmt = "38h";
				break;
		}
		instr.len = lastLen;
		return instr;
	}

	private static final String[] cbops = new String[] {
		"rlc", "rrc", "rl", "rr", "sla", "sra", "sll", "srl" };

	private void decodeCB(int pc) {
		int opCode = read8(pc);
		if (opCode < 0x40) {
			instr.op = cbops[(opCode >> 3) & 7];
			instr.fmt = String.format("%s", regs[opCode & 7]);
		} else if (opCode < 0x80) {
			instr.op = "bit";
			instr.fmt = String.format("%d,%s",
					(opCode >> 3) & 7, regs[opCode & 7]);
		} else if (opCode < 0xc0) {
			instr.op = "res";
			instr.fmt = String.format("%d,%s",
					(opCode >> 3) & 7, regs[opCode & 7]);
		} else {
			instr.op = "setb";
			instr.fmt = String.format("%d,%s",
					(opCode >> 3) & 7, regs[opCode & 7]);
		}
	}

	private void decodeDDFD(int pc, char regIXY) {
		int opCode = read8(pc++);
		byte disp = (byte)read8(pc++); // might not be used...

		switch (opCode) {
			case 0x09:       /* ADD IX,BC */
				instr.op = "add";
				instr.fmt = String.format("i%c,bc", regIXY);
				--lastLen;
				break;
			case 0x19:       /* ADD IX,DE */
				instr.op = "add";
				instr.fmt = String.format("i%c,de", regIXY);
				--lastLen;
				break;
			case 0x21:       /* LD IX,nn */
				instr.op = "ld";
				instr.fmt = String.format("i%c,%%s", regIXY);
				instr.addr = read16(--pc);
				--lastLen;
				break;
			case 0x22:       /* LD (nn),IX */
				instr.op = "ld";
				instr.fmt = String.format("(%%s),i%c", regIXY);
				instr.addr = read16(--pc);
				--lastLen;
				break;
			case 0x23:       /* INC IX */
				instr.op = "inc";
				instr.op = String.format("i%c", regIXY);
				--lastLen;
				break;
			case 0x24:       /* INC IXh */
				instr.op = "inc";
				instr.op = String.format("i%ch", regIXY);
				--lastLen;
				break;
			case 0x25:       /* DEC IXh */
				instr.op = "dec";
				instr.fmt = String.format("i%ch", regIXY);
				--lastLen;
				break;
			case 0x26:       /* LD IXh,n */
				instr.op = "ld";
				instr.fmt = String.format("i%ch,0%02xh", regIXY, disp & 0xff);
				break;
			case 0x29:       /* ADD IX,IX */
				instr.op = "add";
				instr.fmt = String.format("i%c,i%c", regIXY, regIXY);
				--lastLen;
				break;
			case 0x2A:       /* LD IX,(nn) */
				instr.op = "ld";
				instr.fmt = String.format("i%c,(%%s)", regIXY);
				instr.addr = read16(--pc);
				--lastLen;
				break;
			case 0x2B:       /* DEC IX */
				instr.op = "dec";
				instr.fmt = String.format("i%c", regIXY);
				--lastLen;
				break;
			case 0x2C:       /* INC IXl */
				instr.op = "inc";
				instr.fmt = String.format("i%cl", regIXY);
				--lastLen;
				break;
			case 0x2D:       /* DEC IXl */
				instr.op = "dec";
				instr.fmt = String.format("i%cl", regIXY);
				--lastLen;
				break;
			case 0x2E:       /* LD IXl,n */
				instr.op = "ld";
				instr.fmt = String.format("i%cl,0%02xh", regIXY, disp & 0xff);
				break;
			case 0x34:       /* INC (IX+d) */
				instr.op = "inc";
				instr.fmt = String.format("(i%c+%d)", regIXY, disp);
				break;
			case 0x35:       /* DEC (IX+d) */
				instr.op = "dec";
				instr.fmt = String.format("(i%c+%d)", regIXY, disp);
				break;
			case 0x36:       /* LD (IX+d),n */
				instr.op = "ld";
				instr.fmt = String.format("(i%c+%d),0%02xh", regIXY, disp, read8(pc));
				break;
			case 0x39:       /* ADD IX,SP */
				instr.op = "add";
				instr.fmt = String.format("i%c,sp", regIXY);
				--lastLen;
				break;
			case 0x44:       /* LD B,IXh */
				instr.op = "ld";
				instr.fmt = String.format("b,i%ch", regIXY);
				--lastLen;
				break;
			case 0x45:       /* LD B,IXl */
				instr.op = "ld";
				instr.fmt = String.format("b,i%cl", regIXY);
				--lastLen;
				break;
			case 0x46:       /* LD B,(IX+d) */
				instr.op = "ld";
				instr.fmt = String.format("b,(i%c+%d)", regIXY, disp);
				break;
			case 0x4C:       /* LD C,IXh */
				instr.op = "ld";
				instr.fmt = String.format("c,i%ch", regIXY);
				--lastLen;
				break;
			case 0x4D:       /* LD C,IXl */
				instr.op = "ld";
				instr.fmt = String.format("c,i%cl", regIXY);
				--lastLen;
				break;
			case 0x4E:       /* LD C,(IX+d) */
				instr.op = "ld";
				instr.fmt = String.format("c,(i%c+%d)", regIXY, disp);
				break;
			case 0x54:       /* LD D,IXh */
				instr.op = "ld";
				instr.fmt = String.format("d,i%ch", regIXY);
				--lastLen;
				break;
			case 0x55:       /* LD D,IXl */
				instr.op = "ld";
				instr.fmt = String.format("d,i%cl", regIXY);
				--lastLen;
				break;
			case 0x56:       /* LD D,(IX+d) */
				instr.op = "ld";
				instr.fmt = String.format("d,(i%c+%d)", regIXY, disp);
				break;
			case 0x5C:       /* LD E,IXh */
				instr.op = "ld";
				instr.fmt = String.format("e,i%ch", regIXY);
				--lastLen;
				break;
			case 0x5D:       /* LD E,IXl */
				instr.op = "ld";
				instr.fmt = String.format("e,i%cl", regIXY);
				--lastLen;
				break;
			case 0x5E:       /* LD E,(IX+d) */
				instr.op = "ld";
				instr.fmt = String.format("e,(i%c+%d)", regIXY, disp);
				break;
			case 0x60:       /* LD IXh,B */
				instr.op = "ld";
				instr.fmt = String.format("i%ch,b", regIXY);
				--lastLen;
				break;
			case 0x61:       /* LD IXh,C */
				instr.op = "ld";
				instr.fmt = String.format("i%ch,c", regIXY);
				--lastLen;
				break;
			case 0x62:       /* LD IXh,D */
				instr.op = "ld";
				instr.fmt = String.format("i%ch,d", regIXY);
				--lastLen;
				break;
			case 0x63:       /* LD IXh,E */
				instr.op = "ld";
				instr.fmt = String.format("i%ch,e", regIXY);
				--lastLen;
				break;
			case 0x64:       /* LD IXh,IXh */
				instr.op = "ld";
				instr.fmt = String.format("i%ch,i%ch", regIXY, regIXY);
				--lastLen;
				break;
			case 0x65:       /* LD IXh,IXl */
				instr.op = "ld";
				instr.fmt = String.format("i%ch,i%cl", regIXY, regIXY);
				--lastLen;
				break;
			case 0x66:       /* LD H,(IX+d) */
				instr.op = "ld";
				instr.fmt = String.format("h,(i%c+%d)", regIXY, disp);
				break;
			case 0x67:       /* LD IXh,A */
				instr.op = "ld";
				instr.fmt = String.format("i%ch,a", regIXY);
				--lastLen;
				break;
			case 0x68:       /* LD IXl,B */
				instr.op = "ld";
				instr.fmt = String.format("i%cl,b", regIXY);
				--lastLen;
				break;
			case 0x69:       /* LD IXl,C */
				instr.op = "ld";
				instr.fmt = String.format("i%cl,c", regIXY);
				--lastLen;
				break;
			case 0x6A:       /* LD IXl,D */
				instr.op = "ld";
				instr.fmt = String.format("i%cl,d", regIXY);
				--lastLen;
				break;
			case 0x6B:       /* LD IXl,E */
				instr.op = "ld";
				instr.fmt = String.format("i%cl,e", regIXY);
				--lastLen;
				break;
			case 0x6C:       /* LD IXl,IXh */
				instr.op = "ld";
				instr.fmt = String.format("i%cl,i%ch", regIXY, regIXY);
				--lastLen;
				break;
			case 0x6D:       /* LD IXl,IXl */
				instr.op = "ld";
				instr.fmt = String.format("i%cl,i%cl", regIXY, regIXY);
				--lastLen;
				break;
			case 0x6E:       /* LD L,(IX+d) */
				instr.op = "ld";
				instr.fmt = String.format("l,(i%c+%d)", regIXY, disp);
				break;
			case 0x6F:       /* LD IXl,A */
				instr.op = "ld";
				instr.fmt = String.format("i%cl,a", regIXY);
				--lastLen;
				break;
			case 0x70:       /* LD (IX+d),B */
				instr.op = "ld";
				instr.fmt = String.format("(i%c+%d),b", regIXY, disp);
				break;
			case 0x71:       /* LD (IX+d),C */
				instr.op = "ld";
				instr.fmt = String.format("(i%c+%d),c", regIXY, disp);
				break;
			case 0x72:       /* LD (IX+d),D */
				instr.op = "ld";
				instr.fmt = String.format("(i%c+%d),d", regIXY, disp);
				break;
			case 0x73:       /* LD (IX+d),E */
				instr.op = "ld";
				instr.fmt = String.format("(i%c+%d),e", regIXY, disp);
				break;
			case 0x74:       /* LD (IX+d),H */
				instr.op = "ld";
				instr.fmt = String.format("(i%c+%d),h", regIXY, disp);
				break;
			case 0x75:       /* LD (IX+d),L */
				instr.op = "ld";
				instr.fmt = String.format("(i%c+%d),l", regIXY, disp);
				break;
			case 0x77:       /* LD (IX+d),A */
				instr.op = "ld";
				instr.fmt = String.format("(i%c+%d),a", regIXY, disp);
				break;
			case 0x7C:       /* LD A,IXh */
				instr.op = "ld";
				instr.fmt = String.format("a,i%ch", regIXY);
				--lastLen;
				break;
			case 0x7D:       /* LD A,IXl */
				instr.op = "ld";
				instr.fmt = String.format("a,i%cl", regIXY);
				--lastLen;
				break;
			case 0x7E:       /* LD A,(IX+d) */
				instr.op = "ld";
				instr.fmt = String.format("a,(i%c+%d)", regIXY, disp);
				break;
			case 0x84:       /* ADD A,IXh */
				instr.op = "add";
				instr.fmt = String.format("a,i%ch", regIXY);
				--lastLen;
				break;
			case 0x85:       /* ADD A,IXl */
				instr.op = "add";
				instr.fmt = String.format("a,i%cl", regIXY);
				--lastLen;
				break;
			case 0x86:       /* ADD A,(IX+d) */
				instr.op = "add";
				instr.fmt = String.format("a,(i%c+%d)", regIXY, disp);
				break;
			case 0x8C:       /* ADC A,IXh */
				instr.op = "adc";
				instr.fmt = String.format("a,i%ch", regIXY);
				--lastLen;
				break;
			case 0x8D:       /* ADC A,IXl */
				instr.op = "adc";
				instr.fmt = String.format("a,i%cl", regIXY);
				--lastLen;
				break;
			case 0x8E:       /* ADC A,(IX+d) */
				instr.op = "adc";
				instr.fmt = String.format("a,(i%c+%d)", regIXY, disp);
				break;
			case 0x94:       /* SUB IXh */
				instr.op = "sub";
				instr.fmt = String.format("a,i%ch", regIXY);
				--lastLen;
				break;
			case 0x95:       /* SUB IXl */
				instr.op = "sub";
				instr.fmt = String.format("a,i%cl", regIXY);
				--lastLen;
				break;
			case 0x96:       /* SUB (IX+d) */
				instr.op = "sub";
				instr.fmt = String.format("a,(i%c+%d)", regIXY, disp);
				break;
			case 0x9C:       /* SBC A,IXh */
				instr.op = "sbc";
				instr.fmt = String.format("a,i%ch", regIXY);
				--lastLen;
				break;
			case 0x9D:       /* SBC A,IXl */
				instr.op = "sbc";
				instr.fmt = String.format("a,i%cl", regIXY);
				--lastLen;
				break;
			case 0x9E:       /* SBC A,(IX+d) */
				instr.op = "sbc";
				instr.fmt = String.format("a,(i%c+%d)", regIXY, disp);
				break;
			case 0xA4:       /* AND IXh */
				instr.op = "and";
				instr.fmt = String.format("a,i%ch", regIXY);
				--lastLen;
				break;
			case 0xA5:       /* AND IXl */
				instr.op = "and";
				instr.fmt = String.format("a,i%cl", regIXY);
				--lastLen;
				break;
			case 0xA6:       /* AND (IX+d) */
				instr.op = "and";
				instr.fmt = String.format("a,(i%c+%d)", regIXY, disp);
				break;
			case 0xAC:       /* XOR IXh */
				instr.op = "xor";
				instr.fmt = String.format("a,i%ch", regIXY);
				--lastLen;
				break;
			case 0xAD:       /* XOR IXl */
				instr.op = "xor";
				instr.fmt = String.format("a,i%cl", regIXY);
				--lastLen;
				break;
			case 0xAE:       /* XOR (IX+d) */
				instr.op = "xor";
				instr.fmt = String.format("a,(i%c+%d)", regIXY, disp);
				break;
			case 0xB4:       /* OR IXh */
				instr.op = "or";
				instr.fmt = String.format("a,i%ch", regIXY);
				--lastLen;
				break;
			case 0xB5:       /* OR IXl */
				instr.op = "or";
				instr.fmt = String.format("a,i%cl", regIXY);
				--lastLen;
				break;
			case 0xB6:       /* OR (IX+d) */
				instr.op = "or";
				instr.fmt = String.format("a,(i%c+%d)", regIXY, disp);
				break;
			case 0xBC:       /* CP IXh */
				instr.op = "cp";
				instr.fmt = String.format("a,i%ch", regIXY);
				--lastLen;
				break;
			case 0xBD:       /* CP IXl */
				instr.op = "cp";
				instr.fmt = String.format("a,i%cl", regIXY);
				--lastLen;
				break;
			case 0xBE:       /* CP (IX+d) */
				instr.op = "cp";
				instr.fmt = String.format("a,(i%c+%d)", regIXY, disp);
				break;
			case 0xCB:  
				opCode = read8(pc++);
				decodeDDFDCB(opCode, disp, regIXY);
				break;
			case 0xE1:       /* POP IX */
				instr.op = "pop";
				instr.fmt = String.format("i%c", regIXY);
				--lastLen;
				break;
			case 0xE3:       /* EX (SP),IX */
				instr.op = "ex";
				instr.fmt = String.format("(sp),i%c", regIXY);
				--lastLen;
				break;
			case 0xE5:       /* PUSH IX */
				instr.op = "push";
				instr.fmt = String.format("i%c", regIXY);
				--lastLen;
				break;
			case 0xE9:       /* JP (IX) */
				instr.op = "jp";
				instr.fmt = String.format("(i%c)", regIXY);
				--lastLen;
				break;
			case 0xF9:       /* LD SP,IX */
				instr.op = "ld";
				instr.fmt = String.format("sp,i%c", regIXY);
				--lastLen;
				break;
			default:
				int op = regIXY == 'x' ? 0xdd : 0xfd;
				instr.op = String.format("?%02x %02x...", op, opCode);
				break;
		}
	}

	private void decodeDDFDCB(int opCode, byte address, char regIXY) {
		if (opCode < 0x40) {
			instr.op = String.format("%s",
					cbops[(opCode >> 3) & 7]);
			if ((opCode & 7) == 6) {
				instr.fmt = String.format("(i%c+%d)",
					regIXY, address);
			} else {
				instr.fmt = String.format("(i%c+%d),%s",
					regIXY, address, regs[opCode & 7]);
			}
		} else if (opCode < 0x80) {
			instr.op = "bit";
			instr.fmt = String.format("%d,(i%c+%d)",
					(opCode >> 3) & 7, regIXY, address);
		} else if (opCode < 0xc0) {
			instr.op = "res";
			if ((opCode & 7) == 6) {
			instr.fmt = String.format("%d,(i%c+%d)",
					(opCode >> 3) & 7, regIXY, address);
			} else {
			instr.fmt = String.format("%d,(i%c+%d),%s",
					(opCode >> 3) & 7, regIXY, address,
					regs[opCode & 7]);
			}
		} else {
			instr.op = "set";
			if ((opCode & 7) == 6) {
			instr.fmt = String.format("%d,(i%c+%d)",
					(opCode >> 3) & 7, regIXY, address);
			} else {
			instr.fmt = String.format("%d,(i%c+%d),%s",
					(opCode >> 3) & 7, regIXY, address,
					regs[opCode & 7]);
			}
		}
	}

	private void decodeED(int pc) {
		int opCode = read8(pc++);

		switch (opCode) {
			case 0x40:       /* IN B,(C) */
				instr.op = "in";
				instr.fmt = "b,(c)";
				break;
			case 0x41:       /* OUT (C),B */
				instr.op = "out";
				instr.fmt = "(c),b";
				break;
			case 0x42:       /* SBC HL,BC */
				instr.op = "sbc";
				instr.fmt = "hl,bc";
				break;
			case 0x43:       /* LD (nn),BC */
				instr.op = "ld";
				instr.fmt = "(%s),bc";
				instr.addr = read16(pc);
				break;
			case 0x44:
			case 0x4C:
			case 0x54:
			case 0x5C:
			case 0x64:
			case 0x6C:
			case 0x74:
			case 0x7C:       /* NEG */
				instr.op = "neg";
				break;
			case 0x4D:       /* RETI */
				instr.op = "reti";
				break;
			case 0x45:
			case 0x55:
			case 0x5D:
			case 0x65:
			case 0x6D:
			case 0x75:
			case 0x7D:       /* RETN */
				instr.op = "retn";
				break;
			case 0x46:
			case 0x4E:
			case 0x66:
			case 0x6E:       /* IM 0 */
				instr.op = "im";
				instr.fmt = "0";
				break;
			case 0x47:       /* LD I,A */
				instr.op = "ld";
				instr.fmt = "i,a";
				break;
			case 0x48:       /* IN C,(C) */
				instr.op = "in";
				instr.fmt = "c,(c)";
				break;
			case 0x49:       /* OUT (C),C */
				instr.op = "out";
				instr.fmt = "(c),c";
				break;
			case 0x4A:       /* ADC HL,BC */
				instr.op = "adc";
				instr.fmt = "hl,bc";
				break;
			case 0x4B:       /* LD BC,(nn) */
				instr.op = "ld";
				instr.fmt = "bc,(%s)";
				instr.addr = read16(pc);
				break;
			case 0x4F:       /* LD R,A */
				instr.op = "ld";
				instr.fmt = "r,a";
				break;
			case 0x50:       /* IN D,(C) */
				instr.op = "in";
				instr.fmt = "d,(c)";
				break;
			case 0x51:       /* OUT (C),D */
				instr.op = "out";
				instr.fmt = "(c),d";
				break;
			case 0x52:       /* SBC HL,DE */
				instr.op = "sbc";
				instr.fmt = "hl,de";
				break;
			case 0x53:       /* LD (nn),DE */
				instr.op = "ld";
				instr.fmt = "(%s),de";
				instr.addr = read16(pc);
				break;
			case 0x56:
			case 0x76:       /* IM 1 */
				instr.op = "im";
				instr.fmt = "1";
				break;
			case 0x57:       /* LD A,I */
				instr.op = "ld";
				instr.fmt = "a,i";
				break;
			case 0x58:       /* IN E,(C) */
				instr.op = "in";
				instr.fmt = "e,(c)";
				break;
			case 0x59:       /* OUT (C),E */
				instr.op = "out";
				instr.fmt = "(c),e";
				break;
			case 0x5A:       /* ADC HL,DE */
				instr.op = "adc";
				instr.fmt = "hl,de";
				break;
			case 0x5B:       /* LD DE,(nn) */
				instr.op = "ld";
				instr.fmt = "de,(%s)";
				instr.addr = read16(pc);
				break;
			case 0x5E:
			case 0x7E:       /* IM 2 */
				instr.op = "im";
				instr.fmt = "2";
				break;
			case 0x5F:       /* LD A,R */
				instr.op = "ld";
				instr.fmt = "a,r";
				break;
			case 0x60:       /* IN H,(C) */
				instr.op = "in";
				instr.fmt = "h,(c)";
				break;
			case 0x61:       /* OUT (C),H */
				instr.op = "out";
				instr.fmt = "(c),h";
				break;
			case 0x62:       /* SBC HL,HL */
				instr.op = "sbc";
				instr.fmt = "hl,hl";
				break;
			case 0x63:       /* LD (nn),HL */
				instr.op = "ld*";
				instr.fmt = "(%s),hl";
				instr.addr = read16(pc);
				break;
			case 0x67:       /* RRD */
				instr.op = "rrd";
				break;
			case 0x68:       /* IN L,(C) */
				instr.op = "in";
				instr.fmt = "l,(c)";
				break;
			case 0x69:       /* OUT (C),L */
				instr.op = "out";
				instr.fmt = "(c),l";
				break;
			case 0x6A:       /* ADC HL,HL */
				instr.op = "adc";
				instr.fmt = "hl,hl";
				break;
			case 0x6B:       /* LD HL,(nn) */
				instr.op = "ld*";
				instr.fmt = "hl,(%s)";
				instr.addr = read16(pc);
				break;
			case 0x6F:       /* RLD */
				instr.op = "rld";
				break;
			case 0x70:       /* IN F,(C) */
				instr.op = "in";
				instr.fmt = "f,(c)";
				break;
			case 0x71:       /* OUT (C),F */
				instr.op = "out";
				instr.fmt = "(c),f";
				break;
			case 0x72:       /* SBC HL,SP */
				instr.op = "sbc";
				instr.fmt = "hl,sp";
				break;
			case 0x73:       /* LD (nn),SP */
				instr.op = "ld";
				instr.fmt = "(%s),sp";
				instr.addr = read16(pc);
				break;
			case 0x78:       /* IN A,(C) */
				instr.op = "in";
				instr.fmt = "a,(c)";
				break;
			case 0x79:       /* OUT (C),A */
				instr.op = "out";
				instr.fmt = "(c),a";
				break;
			case 0x7A:       /* ADC HL,SP */
				instr.op = "adc";
				instr.fmt = "hl,sp";
				break;
			case 0x7B:       /* LD SP,(nn) */
				instr.op = "ld";
				instr.fmt = "sp,(%s)";
				instr.addr = read16(pc);
				break;
			case 0xA0:       /* LDI */
				instr.op = "ldi";
				break;
			case 0xA1:       /* CPI */
				instr.op = "cpi";
				break;
			case 0xA2:       /* INI */
				instr.op = "ini";
				break;
			case 0xA3:       /* OUTI */
				instr.op = "outi";
				break;
			case 0xA8:       /* LDD */
				instr.op = "ldd";
				break;
			case 0xA9:       /* CPD */
				instr.op = "cpd";
				break;
			case 0xAA:       /* IND */
				instr.op = "ind";
				break;
			case 0xAB:       /* OUTD */
				instr.op = "outd";
				break;
			case 0xB0:       /* LDIR */
				instr.op = "ldir";
				break;
			case 0xB1:       /* CPIR */
				instr.op = "cpir";
				break;
			case 0xB2:       /* INIR */
				instr.op = "inir";
				break;
			case 0xB3:       /* OTIR */
				instr.op = "outir";
				break;
			case 0xB8:       /* LDDR */
				instr.op = "lddr";
				break;
			case 0xB9:       /* CPDR */
				instr.op = "cpdr";
				break;
			case 0xBA:       /* INDR */
				instr.op = "indr";
				break;
			case 0xBB:       /* OTDR */
				instr.op = "outdr";
				break;
			default:
				instr.op = String.format("?ed %02x", opCode);
				break;
		}
	}

}
