// Copyright (c) 2016 Douglas Miller <durgadas311@gmail.com>

// Uses the framework of Alberto Sánchez Terrén Z80 simulator.

public class Z80DisassemblerMAC80 implements Z80Disassembler {
	Memory mem;
	boolean rom;
	int bnk;
	int lastLen;
	Z80Dissed instr;

	public Z80DisassemblerMAC80(Memory mem) {
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

	private static final char[] regs = new char[] {
		'b', 'c', 'd', 'e', 'h', 'l', 'm', 'a' };

	private static final String[] ops = new String[] {
		"add", "adc", "sub", "sbb", "ana", "xra", "ora", "cmp" };

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
				instr.op = "hlt";
			} else {
				instr.op = "mov";
				instr.fmt = String.format("%c,%c",
					regs[(opCode >> 3) & 7], regs[opCode & 7]);
			}
		} else if ((opCode & 0xc0) == 0x80) {
			instr.op = ops[(opCode >> 3) & 7];
			instr.fmt = String.format("%c", regs[opCode & 7]);
		} else switch (opCode) {
			case 0x00:       /* NOP */
				instr.op = "nop";
				break;
			case 0x01:       /* LD BC,nn */
				instr.op = "lxi";
				instr.fmt = "b,%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LXI;
				break;
			case 0x02:       /* LD (BC),A */
				instr.op = "stax";
				instr.fmt = "b";
				break;
			case 0x03:       /* INC BC */
				instr.op = "inx";
				instr.fmt = "b";
				break;
			case 0x04:       /* INC B */
				instr.op = "inr";
				instr.fmt = "b";
				break;
			case 0x05:       /* DEC B */
				instr.op = "dcr";
				instr.fmt = "b";
				break;
			case 0x06:       /* LD B,n */
				instr.op = "mvi";
				instr.fmt = String.format("b,0%02xh", read8(pc));
				break;
			case 0x07:       /* RLCA */
				instr.op = "rlc";
				break;
			case 0x08:        /* EX AF,AF' */
				instr.op = "exaf";
				break;
			case 0x09:       /* ADD HL,BC */
				instr.op = "dad";
				instr.fmt = "b";
				break;
			case 0x0A:       /* LD A,(BC) */
				instr.op = "ldax";
				instr.fmt = "b";
				break;
			case 0x0B:       /* DEC BC */
				instr.op = "dcx";
				instr.fmt = "b";
				break;
			case 0x0C:       /* INC C */
				instr.op = "inr";
				instr.fmt = "c";
				break;
			case 0x0D:       /* DEC C */
				instr.op = "dcr";
				instr.fmt = "c";
				break;
			case 0x0E:       /* LD C,n */
				instr.op = "mvi";
				instr.fmt = String.format("c,0%02xh", read8(pc));
				break;
			case 0x0F:       /* RRCA */
				instr.op = "rrc";
				break;
			case 0x10:       /* DJNZ e */
				instr.op = "djnz";
				instr.fmt = "%s";
				instr.addr = relAdr(pc) & 0xffff;
				instr.type = Z80Dissed.CJMP;
				break;
			case 0x11:       /* LD DE,nn */
				instr.op = "lxi";
				instr.fmt = "d,%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LXI;
				break;
			case 0x12:       /* LD (DE),A */
				instr.op = "stax";
				instr.fmt = "d";
				break;
			case 0x13:       /* INC DE */
				instr.op = "inx";
				instr.fmt = "d";
				break;
			case 0x14:       /* INC D */
				instr.op = "inr";
				instr.fmt = "d";
				break;
			case 0x15:       /* DEC D */
				instr.op = "dcr";
				instr.fmt = "d";
				break;
			case 0x16:       /* LD D,n */
				instr.op = "mvi";
				instr.fmt = String.format("d,0%02xh", read8(pc));
				break;
			case 0x17:       /* RLA */
				instr.op = "ral";
				break;
			case 0x18:       /* JR e */
				instr.op = "jr";
				instr.fmt = "%s";
				instr.addr = relAdr(pc) & 0xffff;
				instr.type = Z80Dissed.JMP;
				break;
			case 0x19:       /* ADD HL,DE */
				instr.op = "dad";
				instr.fmt = "d";
				break;
			case 0x1A:       /* LD A,(DE) */
				instr.op = "ldax";
				instr.fmt = "d";
				break;
			case 0x1B:       /* DEC DE */
				instr.op = "dcx";
				instr.fmt = "d";
				break;
			case 0x1C:       /* INC E */
				instr.op = "inr";
				instr.fmt = "e";
				break;
			case 0x1D:       /* DEC E */
				instr.op = "dcr";
				instr.fmt = "e";
				break;
			case 0x1E:       /* LD E,n */
				instr.op = "mvi";
				instr.fmt = String.format("e,0%02xh", read8(pc));
				break;
			case 0x1F:       /* RRA */
				instr.op = "rar";
				break;
			case 0x20:       /* JR NZ,e */
				instr.op = "jrnz";
				instr.fmt = "%s";
				instr.addr = relAdr(pc) & 0xffff;
				instr.type = Z80Dissed.CJMP;
				break;
			case 0x21:       /* LD HL,nn */
				instr.op = "lxi";
				instr.fmt = "h,%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LXI;
				break;
			case 0x22:       /* LD (nn),HL */
				instr.op = "shld";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0x23:       /* INC HL */
				instr.op = "inx";
				instr.fmt = "h";
				break;
			case 0x24:       /* INC H */
				instr.op = "inr";
				instr.fmt = "h";
				break;
			case 0x25:       /* DEC H */
				instr.op = "dcr";
				instr.fmt = "h";
				break;
			case 0x26:       /* LD H,n */
				instr.op = "mvi";
				instr.fmt = String.format("h,0%02xh", read8(pc));
				break;
			case 0x27:       /* DAA */
				instr.op = "daa";
				break;
			case 0x28:       /* JR Z,e */
				instr.op = "jrz";
				instr.fmt = "%s";
				instr.addr = relAdr(pc) & 0xffff;
				instr.type = Z80Dissed.CJMP;
				break;
			case 0x29:       /* ADD HL,HL */
				instr.op = "dad";
				instr.fmt = "h";
				break;
			case 0x2A:       /* LD HL,(nn) */
				instr.op = "lhld";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0x2B:       /* DEC HL */
				instr.op = "dcx";
				instr.fmt = "h";
				break;
			case 0x2C:       /* INC L */
				instr.op = "inr";
				instr.fmt = "l";
				break;
			case 0x2D:       /* DEC L */
				instr.op = "dcr";
				instr.fmt = "l";
				break;
			case 0x2E:       /* LD L,n */
				instr.op = "mvi";
				instr.fmt = String.format("l,0%02xh", read8(pc));
				break;
			case 0x2F:       /* CPL */
				instr.op = "cma";
				break;
			case 0x30:       /* JR NC,e */
				instr.op = "jrnc";
				instr.fmt = "%s";
				instr.addr = relAdr(pc) & 0xffff;
				instr.type = Z80Dissed.CJMP;
				break;
			case 0x31:       /* LD SP,nn */
				instr.op = "lxi";
				instr.fmt = "sp,%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LXI;
				break;
			case 0x32:       /* LD (nn),A */
				instr.op = "sta";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0x33:       /* INC SP */
				instr.op = "inx";
				instr.fmt = "sp";
				break;
			case 0x34:       /* INC (HL) */
				instr.op = "inr";
				instr.fmt = "m";
				break;
			case 0x35:       /* DEC (HL) */
				instr.op = "dcr";
				instr.fmt = "m";
				break;
			case 0x36:       /* LD (HL),n */
				instr.op = "mvi";
				instr.fmt = String.format("m,0%02xh", read8(pc));
				break;
			case 0x37:       /* SCF */
				instr.op = "stc";
				break;
			case 0x38:       /* JR C,e */
				instr.op = "jrc";
				instr.fmt = "%s";
				instr.addr = relAdr(pc) & 0xffff;
				instr.type = Z80Dissed.CJMP;
				break;
			case 0x39:       /* ADD HL,SP */
				instr.op = "dad";
				instr.fmt = "sp";
				break;
			case 0x3A:       /* LD A,(nn) */
				instr.op = "lda";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0x3B:       /* DEC SP */
				instr.op = "dcx";
				instr.fmt = "sp";
				break;
			case 0x3C:       /* INC A */
				instr.op = "inr";
				instr.fmt = "a";
				break;
			case 0x3D:       /* DEC A */
				instr.op = "dcr";
				instr.fmt = "a";
				break;
			case 0x3E:       /* LD A,n */
				instr.op = "mvi";
				instr.fmt = String.format("a,0%02xh", read8(pc));
				break;
			case 0x3F:       /* CCF */
				instr.op = "cmc";
				break;
			// 0x40 - 0x7f handled above...
			// 0x80 - 0xbf handled above...
			case 0xC0:       /* RET NZ */
				instr.op = "rnz";
				instr.type = Z80Dissed.CRET;
				break;
			case 0xC1:       /* POP BC */
				instr.op = "pop";
				instr.fmt = "b";
				break;
			case 0xC2:       /* JP NZ,nn */
				instr.op = "jnz";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CJMP;
				break;
			case 0xC3:       /* JP nn */
				instr.op = "jmp";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.JMP;
				break;
			case 0xC4:       /* CALL NZ,nn */
				instr.op = "cnz";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CALL;
				break;
			case 0xC5:       /* PUSH BC */
				instr.op = "push";
				instr.fmt = "b";
				break;
			case 0xC6:       /* ADD A,n */
				instr.op = "adi";
				instr.fmt = String.format("0%02xh", read8(pc));
				break;
			case 0xC7:       /* RST 00H */
				instr.op = "rst";
				instr.fmt = "0";
				instr.addr = 0;
				instr.type = Z80Dissed.CALL;
				break;
			case 0xC8:       /* RET Z */
				instr.op = "rz";
				instr.type = Z80Dissed.CRET;
				break;
			case 0xC9:       /* RET */
				instr.op = "ret";
				instr.type = Z80Dissed.RET;
				break;
			case 0xCA:       /* JP Z,nn */
				instr.op = "jz";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CJMP;
				break;
			case 0xCB:  
				decodeCB(pc);
				break;
			case 0xCC:       /* CALL Z,nn */
				instr.op = "cz";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CALL;
				break;
			case 0xCD:       /* CALL nn */
				instr.op = "call";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CALL;
				break;
			case 0xCE:       /* ADC A,n */
				instr.op = "aci";
				instr.fmt = String.format("0%02xh", read8(pc));
				break;
			case 0xCF:       /* RST 08H */
				instr.op = "rst";
				instr.fmt = "1";
				instr.addr = 8;
				instr.type = Z80Dissed.CALL;
				break;
			case 0xD0:       /* RET NC */
				instr.op = "rnc";
				instr.type = Z80Dissed.CRET;
				break;
			case 0xD1:       /* POP DE */
				instr.op = "pop";
				instr.fmt = "d";
				break;
			case 0xD2:       /* JP NC,nn */
				instr.op = "jnc";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CJMP;
				break;
			case 0xD3:       /* OUT (n),A */
				instr.op = "out";
				instr.fmt = String.format("0%02xh", read8(pc));
				break;
			case 0xD4:       /* CALL NC,nn */
				instr.op = "cnc";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CALL;
				break;
			case 0xD5:       /* PUSH DE */
				instr.op = "push";
				instr.fmt = "d";
				break;
			case 0xD6:       /* SUB n */
				instr.op = "sui";
				instr.fmt = String.format("0%02xh", read8(pc));
				break;
			case 0xD7:       /* RST 10H */
				instr.op = "rst";
				instr.fmt = "2";
				instr.addr = 16;
				instr.type = Z80Dissed.CALL;
				break;
			case 0xD8:       /* RET C */
				instr.op = "rc";
				instr.type = Z80Dissed.CRET;
				break;
			case 0xD9:       /* EXX */
				instr.op = "exx";
				break;
			case 0xDA:       /* JP C,nn */
				instr.op = "jc";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CJMP;
				break;
			case 0xDB:       /* IN A,(n) */
				instr.op = "in";
				instr.fmt = String.format("0%02xh", read8(pc));
				break;
			case 0xDC:       /* CALL C,nn */
				instr.op = "cc";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CALL;
				break;
			case 0xDD:
				decodeDDFD(pc, 'x');
				break;
			case 0xDE:       /* SBC A,n */
				instr.op = "sbi";
				instr.fmt = String.format("0%02xh", read8(pc));
				break;
			case 0xDF:       /* RST 18H */
				instr.op = "rst";
				instr.fmt = "3";
				instr.addr = 24;
				instr.type = Z80Dissed.CALL;
				break;
			case 0xE0:       /* RET PO */
				instr.op = "rpo";
				instr.type = Z80Dissed.CRET;
				break;
			case 0xE1:       /* POP HL */
				instr.op = "pop";
				instr.fmt = "h";
				break;
			case 0xE2:       /* JP PO,nn */
				instr.op = "jpo";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CJMP;
				break;
			case 0xE3:       /* EX (SP),HL */
				instr.op = "xthl";
				break;
			case 0xE4:       /* CALL PO,nn */
				instr.op = "cpo";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CALL;
				break;
			case 0xE5:       /* PUSH HL */
				instr.op = "push";
				instr.fmt = "h";
				break;
			case 0xE6:       /* AND n */
				instr.op = "ani";
				instr.fmt = String.format("0%02xh", read8(pc));
				break;
			case 0xE7:       /* RST 20H */
				instr.op = "rst";
				instr.fmt = "4";
				instr.addr = 32;
				instr.type = Z80Dissed.CALL;
				break;
			case 0xE8:       /* RET PE */
				instr.op = "rpe";
				instr.type = Z80Dissed.CRET;
				break;
			case 0xE9:       /* JP (HL) */
				instr.op = "pchl";
				instr.type = Z80Dissed.RET; // sort of...
				break;
			case 0xEA:       /* JP PE,nn */
				instr.op = "jpe";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CJMP;
				break;
			case 0xEB:       /* EX DE,HL */
				instr.op = "xchg";
				break;
			case 0xEC:       /* CALL PE,nn */
				instr.op = "cpe";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CALL;
				break;
			case 0xED:
				decodeED(pc);
				break;
			case 0xEE:       /* XOR n */
				instr.op = "xri";
				instr.fmt = String.format("0%02xh", read8(pc));
				break;
			case 0xEF:       /* RST 28H */
				instr.op = "rst";
				instr.fmt = "5";
				instr.addr = 40;
				instr.type = Z80Dissed.CALL;
				break;
			case 0xF0:       /* RET P */
				instr.op = "rp";
				instr.type = Z80Dissed.CRET;
				break;
			case 0xF1:       /* POP AF */
				instr.op = "pop";
				instr.fmt = "psw";
				break;
			case 0xF2:       /* JP P,nn */
				instr.op = "jp";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CJMP;
				break;
			case 0xF3:       /* DI */
				instr.op = "di";
				break;
			case 0xF4:       /* CALL P,nn */
				instr.op = "cp";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CALL;
				break;
			case 0xF5:       /* PUSH AF */
				instr.op = "push";
				instr.fmt = "psw";
				break;
			case 0xF6:       /* OR n */
				instr.op = "ori";
				instr.fmt = String.format("0%02xh", read8(pc));
				break;
			case 0xF7:       /* RST 30H */
				instr.op = "rst";
				instr.fmt = "6";
				instr.addr = 48;
				instr.type = Z80Dissed.CALL;
				break;
			case 0xF8:       /* RET M */
				instr.op = "rm";
				instr.type = Z80Dissed.CRET;
				break;
			case 0xF9:       /* LD SP,HL */
				instr.op = "sphl";
				break;
			case 0xFA:       /* JP M,nn */
				instr.op = "jm";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CJMP;
				break;
			case 0xFB:       /* EI */
				instr.op = "ei";
				break;
			case 0xFC:       /* CALL M,nn */
				instr.op = "cm";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.CALL;
				break;
			case 0xFD:
				decodeDDFD(pc, 'y');
				break;
			case 0xFE:       /* CP n */
				instr.op = "cpi";
				instr.fmt = String.format("0%02xh", read8(pc));
				break;
			case 0xFF:       /* RST 38H */
				instr.op = "rst";
				instr.fmt = "7";
				instr.addr = 56;
				instr.type = Z80Dissed.CALL;
				break;
		}
		instr.len = lastLen;
		return instr;
	}

	private static final String[] cbops = new String[] {
		"rlc", "rrc", "ral", "rar", "sla", "sra", "sll", "srl" };

	private void decodeCB(int pc) {
		int opCode = read8(pc);
		if (opCode < 0x40) {
			instr.op = cbops[(opCode >> 3) & 7] + 'r';
			instr.fmt = String.format("%c", regs[opCode & 7]);
		} else if (opCode < 0x80) {
			instr.op = "bit";
			instr.fmt = String.format("%d,%c",
					(opCode >> 3) & 7, regs[opCode & 7]);
		} else if (opCode < 0xc0) {
			instr.op = "res";
			instr.fmt = String.format("%d,%c",
					(opCode >> 3) & 7, regs[opCode & 7]);
		} else {
			instr.op = "setb";
			instr.fmt = String.format("%d,%c",
					(opCode >> 3) & 7, regs[opCode & 7]);
		}
	}

	private void decodeDDFD(int pc, char regIXY) {
		int opCode = read8(pc++);
		byte disp = (byte)read8(pc++); // might not be used...

		switch (opCode) {
			case 0x09:       /* ADD IX,BC */
				instr.op = String.format("dad%c", regIXY);
				instr.fmt = "b";
				--lastLen;
				break;
			case 0x19:       /* ADD IX,DE */
				instr.op = String.format("dad%c", regIXY);
				instr.fmt = "d";
				--lastLen;
				break;
			case 0x21:       /* LD IX,nn */
				instr.op = String.format("lxi%c", regIXY);
				instr.fmt = "%s";
				instr.addr = read16(--pc);
				instr.type = Z80Dissed.LXI;
				--lastLen;
				break;
			case 0x22:       /* LD (nn),IX */
				instr.op = String.format("si%cd", regIXY);
				instr.fmt = "%s";
				instr.addr = read16(--pc);
				instr.type = Z80Dissed.LDI;
				--lastLen;
				break;
			case 0x23:       /* INC IX */
				instr.op = String.format("inxi%c", regIXY);
				--lastLen;
				break;
			case 0x24:       /* INC IXh */
				instr.op = String.format("inri%ch", regIXY);
				--lastLen;
				break;
			case 0x25:       /* DEC IXh */
				instr.op = String.format("dcri%ch", regIXY);
				--lastLen;
				break;
			case 0x26:       /* LD IXh,n */
				instr.op = String.format("mvi%ch", regIXY);
				instr.fmt = String.format("0%02xh", disp & 0xff);
				break;
			case 0x29:       /* ADD IX,IX */
				instr.op = String.format("dad%c", regIXY);
				instr.fmt = String.format("i%c", regIXY);
				--lastLen;
				break;
			case 0x2A:       /* LD IX,(nn) */
				instr.op = String.format("li%cd", regIXY);
				instr.fmt = "%s";
				instr.addr = read16(--pc);
				instr.type = Z80Dissed.LDI;
				--lastLen;
				break;
			case 0x2B:       /* DEC IX */
				instr.op = String.format("dcxi%c", regIXY);
				--lastLen;
				break;
			case 0x2C:       /* INC IXl */
				instr.op = String.format("inri%cl", regIXY);
				--lastLen;
				break;
			case 0x2D:       /* DEC IXl */
				instr.op = String.format("dcri%cl", regIXY);
				--lastLen;
				break;
			case 0x2E:       /* LD IXl,n */
				instr.op = String.format("mvi%cl", regIXY);
				instr.fmt = String.format("0%02xh", disp & 0xff);
				break;
			case 0x34:       /* INC (IX+d) */
				instr.op = String.format("inr%c", regIXY);
				instr.fmt = String.format("%+d", disp);
				break;
			case 0x35:       /* DEC (IX+d) */
				instr.op = String.format("dcr%c", regIXY);
				instr.fmt = String.format("%+d", disp);
				break;
			case 0x36:       /* LD (IX+d),n */
				instr.op = String.format("mvi%c", regIXY);
				instr.fmt = String.format("0%02xh,%+d", read8(pc), disp);
				break;
			case 0x39:       /* ADD IX,SP */
				instr.op = String.format("dad%c", regIXY);
				instr.fmt = "sp";
				--lastLen;
				break;
			case 0x44:       /* LD B,IXh */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "b,h";
				--lastLen;
				break;
			case 0x45:       /* LD B,IXl */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "b,l";
				--lastLen;
				break;
			case 0x46:       /* LD B,(IX+d) */
				instr.op = String.format("ld%c", regIXY);
				instr.fmt = String.format("b,%+d", disp);
				break;
			case 0x4C:       /* LD C,IXh */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "c,h";
				--lastLen;
				break;
			case 0x4D:       /* LD C,IXl */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "c,l";
				--lastLen;
				break;
			case 0x4E:       /* LD C,(IX+d) */
				instr.op = String.format("ld%c", regIXY);
				instr.fmt = String.format("c,%+d", disp);
				break;
			case 0x54:       /* LD D,IXh */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "d,h";
				--lastLen;
				break;
			case 0x55:       /* LD D,IXl */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "d,l";
				--lastLen;
				break;
			case 0x56:       /* LD D,(IX+d) */
				instr.op = String.format("ld%c", regIXY);
				instr.fmt = String.format("d,%+d", disp);
				break;
			case 0x5C:       /* LD E,IXh */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "e,h";
				--lastLen;
				break;
			case 0x5D:       /* LD E,IXl */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "e,l";
				--lastLen;
				break;
			case 0x5E:       /* LD E,(IX+d) */
				instr.op = String.format("ld%c", regIXY);
				instr.fmt = String.format("e,%+d", disp);
				break;
			case 0x60:       /* LD IXh,B */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "h,b";
				--lastLen;
				break;
			case 0x61:       /* LD IXh,C */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "h,c";
				--lastLen;
				break;
			case 0x62:       /* LD IXh,D */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "h,d";
				--lastLen;
				break;
			case 0x63:       /* LD IXh,E */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "h,e";
				--lastLen;
				break;
			case 0x64:       /* LD IXh,IXh */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "h,h";
				--lastLen;
				break;
			case 0x65:       /* LD IXh,IXl */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "h,l";
				--lastLen;
				break;
			case 0x66:       /* LD H,(IX+d) */
				instr.op = String.format("ld%c", regIXY);
				instr.fmt = String.format("h,%+d", disp);
				break;
			case 0x67:       /* LD IXh,A */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "h,a";
				--lastLen;
				break;
			case 0x68:       /* LD IXl,B */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "l,b";
				--lastLen;
				break;
			case 0x69:       /* LD IXl,C */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "l,c";
				--lastLen;
				break;
			case 0x6A:       /* LD IXl,D */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "l,d";
				--lastLen;
				break;
			case 0x6B:       /* LD IXl,E */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "l,e";
				--lastLen;
				break;
			case 0x6C:       /* LD IXl,IXh */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "l,h";
				--lastLen;
				break;
			case 0x6D:       /* LD IXl,IXl */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "l,l";
				--lastLen;
				break;
			case 0x6E:       /* LD L,(IX+d) */
				instr.op = String.format("ld%c", regIXY);
				instr.fmt = String.format("l,%+d", disp);
				break;
			case 0x6F:       /* LD IXl,A */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "l,a";
				--lastLen;
				break;
			case 0x70:       /* LD (IX+d),B */
				instr.op = String.format("st%c", regIXY);
				instr.fmt = String.format("b,%+d", disp);
				break;
			case 0x71:       /* LD (IX+d),C */
				instr.op = String.format("st%c", regIXY);
				instr.fmt = String.format("c,%+d", disp);
				break;
			case 0x72:       /* LD (IX+d),D */
				instr.op = String.format("st%c", regIXY);
				instr.fmt = String.format("d,%+d", disp);
				break;
			case 0x73:       /* LD (IX+d),E */
				instr.op = String.format("st%c", regIXY);
				instr.fmt = String.format("e,%+d", disp);
				break;
			case 0x74:       /* LD (IX+d),H */
				instr.op = String.format("st%c", regIXY);
				instr.fmt = String.format("h,%+d", disp);
				break;
			case 0x75:       /* LD (IX+d),L */
				instr.op = String.format("st%c", regIXY);
				instr.fmt = String.format("l,%+d", disp);
				break;
			case 0x77:       /* LD (IX+d),A */
				instr.op = String.format("st%c", regIXY);
				instr.fmt = String.format("a,%+d", disp);
				break;
			case 0x7C:       /* LD A,IXh */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "a,h";
				--lastLen;
				break;
			case 0x7D:       /* LD A,IXl */
				instr.op = String.format("mov%c", regIXY);
				instr.fmt = "a,l";
				--lastLen;
				break;
			case 0x7E:       /* LD A,(IX+d) */
				instr.op = String.format("ld%c", regIXY);
				instr.fmt = String.format("a,%+d", disp);
				break;
			case 0x84:       /* ADD A,IXh */
				instr.op = String.format("add%c", regIXY);
				instr.fmt = "h";
				--lastLen;
				break;
			case 0x85:       /* ADD A,IXl */
				instr.op = String.format("add%c", regIXY);
				instr.fmt = "l";
				--lastLen;
				break;
			case 0x86:       /* ADD A,(IX+d) */
				instr.op = String.format("add%c", regIXY);
				instr.fmt = String.format("%+d", disp);
				break;
			case 0x8C:       /* ADC A,IXh */
				instr.op = String.format("adc%c", regIXY);
				instr.fmt = "h";
				--lastLen;
				break;
			case 0x8D:       /* ADC A,IXl */
				instr.op = String.format("adc%c", regIXY);
				instr.fmt = "l";
				--lastLen;
				break;
			case 0x8E:       /* ADC A,(IX+d) */
				instr.op = String.format("adc%c", regIXY);
				instr.fmt = String.format("%+d", disp);
				break;
			case 0x94:       /* SUB IXh */
				instr.op = String.format("sub%c", regIXY);
				instr.fmt = "h";
				--lastLen;
				break;
			case 0x95:       /* SUB IXl */
				instr.op = String.format("sub%c", regIXY);
				instr.fmt = "l";
				--lastLen;
				break;
			case 0x96:       /* SUB (IX+d) */
				instr.op = String.format("sub%c", regIXY);
				instr.fmt = String.format("%+d", disp);
				break;
			case 0x9C:       /* SBC A,IXh */
				instr.op = String.format("sbb%c", regIXY);
				instr.fmt = "h";
				--lastLen;
				break;
			case 0x9D:       /* SBC A,IXl */
				instr.op = String.format("sbb%c", regIXY);
				instr.fmt = "l";
				--lastLen;
				break;
			case 0x9E:       /* SBC A,(IX+d) */
				instr.op = String.format("sbb%c", regIXY);
				instr.fmt = String.format("%+d", disp);
				break;
			case 0xA4:       /* AND IXh */
				instr.op = String.format("ana%c", regIXY);
				instr.fmt = "h";
				--lastLen;
				break;
			case 0xA5:       /* AND IXl */
				instr.op = String.format("ana%c", regIXY);
				instr.fmt = "l";
				--lastLen;
				break;
			case 0xA6:       /* AND (IX+d) */
				instr.op = String.format("ana%c", regIXY);
				instr.fmt = String.format("%+d", disp);
				break;
			case 0xAC:       /* XOR IXh */
				instr.op = String.format("xra%c", regIXY);
				instr.fmt = "h";
				--lastLen;
				break;
			case 0xAD:       /* XOR IXl */
				instr.op = String.format("xra%c", regIXY);
				instr.fmt = "l";
				--lastLen;
				break;
			case 0xAE:       /* XOR (IX+d) */
				instr.op = String.format("xra%c", regIXY);
				instr.fmt = String.format("%+d", disp);
				break;
			case 0xB4:       /* OR IXh */
				instr.op = String.format("ora%c", regIXY);
				instr.fmt = "h";
				--lastLen;
				break;
			case 0xB5:       /* OR IXl */
				instr.op = String.format("ora%c", regIXY);
				instr.fmt = "l";
				--lastLen;
				break;
			case 0xB6:       /* OR (IX+d) */
				instr.op = String.format("ora%c", regIXY);
				instr.fmt = String.format("%+d", disp);
				break;
			case 0xBC:       /* CP IXh */
				instr.op = String.format("cmp%c", regIXY);
				instr.fmt = "h";
				--lastLen;
				break;
			case 0xBD:       /* CP IXl */
				instr.op = String.format("cmp%c", regIXY);
				instr.fmt = "l";
				--lastLen;
				break;
			case 0xBE:       /* CP (IX+d) */
				instr.op = String.format("cmp%c", regIXY);
				instr.fmt = String.format("%+d", disp);
				break;
			case 0xCB:  
				opCode = read8(pc++);
				decodeDDFDCB(opCode, disp, regIXY);
				break;
			case 0xE1:       /* POP IX */
				instr.op = String.format("popi%c", regIXY);
				--lastLen;
				break;
			case 0xE3:       /* EX (SP),IX */
				instr.op = String.format("xti%c", regIXY);
				--lastLen;
				break;
			case 0xE5:       /* PUSH IX */
				instr.op = String.format("pushi%c", regIXY);
				--lastLen;
				break;
			case 0xE9:       /* JP (IX) */
				instr.op = String.format("pci%c", regIXY);
				instr.type = Z80Dissed.RET; // sort of...
				--lastLen;
				break;
			case 0xF9:       /* LD SP,IX */
				instr.op = String.format("spi%c", regIXY);
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
			instr.op = String.format("%s%c",
					cbops[(opCode >> 3) & 7], regIXY);
			if ((opCode & 7) == 6) {
				instr.fmt = String.format("%+d", address);
			} else {
				instr.fmt = String.format("%+d,%c",
					address, regs[opCode & 7]);
			}
		} else if (opCode < 0x80) {
			instr.op = String.format("bit%c", regIXY);
			instr.fmt = String.format("%d,%+d",
					(opCode >> 3) & 7, address);
		} else if (opCode < 0xc0) {
			instr.op = String.format("res%c", regIXY);
			if ((opCode & 7) == 6) {
				instr.fmt = String.format("%d,%+d",
					(opCode >> 3) & 7, address);
			} else {
				instr.fmt = String.format("%d,%+d,%c",
					(opCode >> 3) & 7, address,
					regs[opCode & 7]);
			}
		} else {
			instr.op = String.format("set%c", regIXY);
			if ((opCode & 7) == 6) {
				instr.fmt = String.format("%d,%+d",
					(opCode >> 3) & 7, address);
			} else {
				instr.fmt = String.format("%d,%+d,%c",
					(opCode >> 3) & 7, address,
					regs[opCode & 7]);
			}
		}
	}

	private void decodeED(int pc) {
		int opCode = read8(pc++);

		switch (opCode) {
			case 0x40:       /* IN B,(C) */
				instr.op = "inp";
				instr.fmt = "b";
				break;
			case 0x41:       /* OUT (C),B */
				instr.op = "outp";
				instr.fmt = "b";
				break;
			case 0x42:       /* SBC HL,BC */
				instr.op = "dsbc";
				instr.fmt = "b";
				break;
			case 0x43:       /* LD (nn),BC */
				instr.op = "sbcd";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
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
				instr.type = Z80Dissed.RET;
				break;
			case 0x45:
			case 0x55:
			case 0x5D:
			case 0x65:
			case 0x6D:
			case 0x75:
			case 0x7D:       /* RETN */
				instr.op = "retn";
				instr.type = Z80Dissed.RET;
				break;
			case 0x46:
			case 0x4E:
			case 0x66:
			case 0x6E:       /* IM 0 */
				instr.op = "im0";
				break;
			case 0x47:       /* LD I,A */
				instr.op = "stai";
				break;
			case 0x48:       /* IN C,(C) */
				instr.op = "inp";
				instr.fmt = "c";
				break;
			case 0x49:       /* OUT (C),C */
				instr.op = "outp";
				instr.fmt = "c";
				break;
			case 0x4A:       /* ADC HL,BC */
				instr.op = "dadc";
				instr.fmt = "b";
				break;
			case 0x4B:       /* LD BC,(nn) */
				instr.op = "lbcd";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0x4F:       /* LD R,A */
				instr.op = "star";
				break;
			case 0x50:       /* IN D,(C) */
				instr.op = "inp";
				instr.fmt = "d";
				break;
			case 0x51:       /* OUT (C),D */
				instr.op = "outp";
				instr.fmt = "d";
				break;
			case 0x52:       /* SBC HL,DE */
				instr.op = "dsbc";
				instr.fmt = "d";
				break;
			case 0x53:       /* LD (nn),DE */
				instr.op = "sded";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0x56:
			case 0x76:       /* IM 1 */
				instr.op = "im1";
				break;
			case 0x57:       /* LD A,I */
				instr.op = "ldai";
				break;
			case 0x58:       /* IN E,(C) */
				instr.op = "inp";
				instr.fmt = "e";
				break;
			case 0x59:       /* OUT (C),E */
				instr.op = "outp";
				instr.fmt = "e";
				break;
			case 0x5A:       /* ADC HL,DE */
				instr.op = "dadc";
				instr.fmt = "d";
				break;
			case 0x5B:       /* LD DE,(nn) */
				instr.op = "lded";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0x5E:
			case 0x7E:       /* IM 2 */
				instr.op = "im2";
				break;
			case 0x5F:       /* LD A,R */
				instr.op = "ldar";
				break;
			case 0x60:       /* IN H,(C) */
				instr.op = "inp";
				instr.fmt = "h";
				break;
			case 0x61:       /* OUT (C),H */
				instr.op = "outp";
				instr.fmt = "h";
				break;
			case 0x62:       /* SBC HL,HL */
				instr.op = "dsbc";
				instr.fmt = "h";
				break;
			case 0x63:       /* LD (nn),HL */
				instr.op = "shld*";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0x67:       /* RRD */
				instr.op = "rrd";
				break;
			case 0x68:       /* IN L,(C) */
				instr.op = "inp";
				instr.fmt = "l";
				break;
			case 0x69:       /* OUT (C),L */
				instr.op = "outp";
				instr.fmt = "l";
				break;
			case 0x6A:       /* ADC HL,HL */
				instr.op = "dadc";
				instr.fmt = "h";
				break;
			case 0x6B:       /* LD HL,(nn) */
				instr.op = "lhld*";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0x6F:       /* RLD */
				instr.op = "rld";
				break;
			case 0x70:       /* IN F,(C) */
				instr.op = "inf";
				break;
			case 0x71:       /* OUT (C),F */
				instr.op = "outf";
				break;
			case 0x72:       /* SBC HL,SP */
				instr.op = "dsbc";
				instr.fmt = "sp";
				break;
			case 0x73:       /* LD (nn),SP */
				instr.op = "sspd";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0x78:       /* IN A,(C) */
				instr.op = "inp";
				instr.fmt = "a";
				break;
			case 0x79:       /* OUT (C),A */
				instr.op = "outp";
				instr.fmt = "a";
				break;
			case 0x7A:       /* ADC HL,SP */
				instr.op = "dadc";
				instr.fmt = "sp";
				break;
			case 0x7B:       /* LD SP,(nn) */
				instr.op = "lspd";
				instr.fmt = "%s";
				instr.addr = read16(pc);
				instr.type = Z80Dissed.LDI;
				break;
			case 0xA0:       /* LDI */
				instr.op = "ldi";
				break;
			case 0xA1:       /* CPI */
				instr.op = "cci";
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
				instr.op = "ccd";
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
				instr.op = "ccir";
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
				instr.op = "ccdr";
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
