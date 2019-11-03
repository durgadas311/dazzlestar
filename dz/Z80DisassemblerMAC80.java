// Copyright (c) 2016 Douglas Miller <durgadas311@gmail.com>

// Uses the framework of Alberto Sánchez Terrén Z80 simulator.

public class Z80DisassemblerMAC80 implements Z80Disassembler {
	Memory mem;
	boolean rom;
	int bnk;
	int lastLen;

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
				instr = "hlt";
			} else {
				instr = String.format("mov %c,%c",
					regs[(opCode >> 3) & 7], regs[opCode & 7]);
			}
		} else if ((opCode & 0xc0) == 0x80) {
			instr = String.format("%s %c",
					ops[(opCode >> 3) & 7], regs[opCode & 7]);
		} else switch (opCode) {
			case 0x00:       /* NOP */
				instr = "nop";
				break;
			case 0x01:       /* LD BC,nn */
				instr = String.format("lxi b,%04x", read16(pc));
				break;
			case 0x02:       /* LD (BC),A */
				instr = "stax b";
				break;
			case 0x03:       /* INC BC */
				instr = "inx b";
				break;
			case 0x04:       /* INC B */
				instr = "inr b";
				break;
			case 0x05:       /* DEC B */
				instr = "dcr b";
				break;
			case 0x06:       /* LD B,n */
				instr = String.format("mvi b,%02x", read8(pc));
				break;
			case 0x07:       /* RLCA */
				instr = "rlc";
				break;
			case 0x08:        /* EX AF,AF' */
				instr = "exaf";
				break;
			case 0x09:       /* ADD HL,BC */
				instr = "dad b";
				break;
			case 0x0A:       /* LD A,(BC) */
				instr = "ldax b";
				break;
			case 0x0B:       /* DEC BC */
				instr = "dcx b";
				break;
			case 0x0C:       /* INC C */
				instr = "inr c";
				break;
			case 0x0D:       /* DEC C */
				instr = "dcr c";
				break;
			case 0x0E:       /* LD C,n */
				instr = String.format("mvi c,%02x", read8(pc));
				break;
			case 0x0F:       /* RRCA */
				instr = "rrc";
				break;
			case 0x10:       /* DJNZ e */
				instr = String.format("djnz %04x", relAdr(pc) & 0xffff);
				break;
			case 0x11:       /* LD DE,nn */
				instr = String.format("lxi d,%04x", read16(pc));
				break;
			case 0x12:       /* LD (DE),A */
				instr = "stax d";
				break;
			case 0x13:       /* INC DE */
				instr = "inx d";
				break;
			case 0x14:       /* INC D */
				instr = "inr d";
				break;
			case 0x15:       /* DEC D */
				instr = "dcr d";
				break;
			case 0x16:       /* LD D,n */
				instr = String.format("mvi d,%02x", read8(pc));
				break;
			case 0x17:       /* RLA */
				instr = "ral";
				break;
			case 0x18:       /* JR e */
				instr = String.format("jr %04x", relAdr(pc) & 0xffff);
				break;
			case 0x19:       /* ADD HL,DE */
				instr = "dad d";
				break;
			case 0x1A:       /* LD A,(DE) */
				instr = "ldax d";
				break;
			case 0x1B:       /* DEC DE */
				instr = "dcx d";
				break;
			case 0x1C:       /* INC E */
				instr = "inr e";
				break;
			case 0x1D:       /* DEC E */
				instr = "dcr e";
				break;
			case 0x1E:       /* LD E,n */
				instr = String.format("mvi e,%02x", read8(pc));
				break;
			case 0x1F:       /* RRA */
				instr = "rar";
				break;
			case 0x20:       /* JR NZ,e */
				instr = String.format("jrnz %04x", relAdr(pc) & 0xffff);
				break;
			case 0x21:       /* LD HL,nn */
				instr = String.format("lxi h,%04x", read16(pc));
				break;
			case 0x22:       /* LD (nn),HL */
				instr = String.format("shld %04x", read16(pc));
				break;
			case 0x23:       /* INC HL */
				instr = "inx h";
				break;
			case 0x24:       /* INC H */
				instr = "inr h";
				break;
			case 0x25:       /* DEC H */
				instr = "dcr h";
				break;
			case 0x26:       /* LD H,n */
				instr = String.format("mvi h,%02x", read8(pc));
				break;
			case 0x27:       /* DAA */
				instr = "daa";
				break;
			case 0x28:       /* JR Z,e */
				instr = String.format("jrz %04x", relAdr(pc) & 0xffff);
				break;
			case 0x29:       /* ADD HL,HL */
				instr = "dad h";
				break;
			case 0x2A:       /* LD HL,(nn) */
				instr = String.format("lhld %04x", read16(pc));
				break;
			case 0x2B:       /* DEC HL */
				instr = "dcx h";
				break;
			case 0x2C:       /* INC L */
				instr = "inr l";
				break;
			case 0x2D:       /* DEC L */
				instr = "dcr l";
				break;
			case 0x2E:       /* LD L,n */
				instr = String.format("mvi l,%02x", read8(pc));
				break;
			case 0x2F:       /* CPL */
				instr = "cma";
				break;
			case 0x30:       /* JR NC,e */
				instr = String.format("jrnc %04x", relAdr(pc) & 0xffff);
				break;
			case 0x31:       /* LD SP,nn */
				instr = String.format("lxi sp,%04x", read16(pc));
				break;
			case 0x32:       /* LD (nn),A */
				instr = String.format("sta %04x", read16(pc));
				break;
			case 0x33:       /* INC SP */
				instr = "inx sp";
				break;
			case 0x34:       /* INC (HL) */
				instr = "inr m";
				break;
			case 0x35:       /* DEC (HL) */
				instr = "dcr m";
				break;
			case 0x36:       /* LD (HL),n */
				instr = String.format("mvi m,%02x", read8(pc));
				break;
			case 0x37:       /* SCF */
				instr = "stc";
				break;
			case 0x38:       /* JR C,e */
				instr = String.format("jrc %04x", relAdr(pc) & 0xffff);
				break;
			case 0x39:       /* ADD HL,SP */
				instr = "dad sp";
				break;
			case 0x3A:       /* LD A,(nn) */
				instr = String.format("lda %04x", read16(pc));
				break;
			case 0x3B:       /* DEC SP */
				instr = "dcx sp";
				break;
			case 0x3C:       /* INC A */
				instr = "inr a";
				break;
			case 0x3D:       /* DEC A */
				instr = "dcr a";
				break;
			case 0x3E:       /* LD A,n */
				instr = String.format("mvi a,%02x", read8(pc));
				break;
			case 0x3F:       /* CCF */
				instr = "cmc";
				break;
			// 0x40 - 0x7f handled above...
			// 0x80 - 0xbf handled above...
			case 0xC0:       /* RET NZ */
				instr = "rnz";
				break;
			case 0xC1:       /* POP BC */
				instr = "pop b";
				break;
			case 0xC2:       /* JP NZ,nn */
				instr = String.format("jnz %04x", read16(pc));
				break;
			case 0xC3:       /* JP nn */
				instr = String.format("jmp %04x", read16(pc));
				break;
			case 0xC4:       /* CALL NZ,nn */
				instr = String.format("cnz %04x", read16(pc));
				break;
			case 0xC5:       /* PUSH BC */
				instr = "push b";
				break;
			case 0xC6:       /* ADD A,n */
				instr = String.format("adi %02x", read8(pc));
				break;
			case 0xC7:       /* RST 00H */
				instr = "rst 0";
				break;
			case 0xC8:       /* RET Z */
				instr = "rz";
				break;
			case 0xC9:       /* RET */
				instr = "ret";
				break;
			case 0xCA:       /* JP Z,nn */
				instr = String.format("jz %04x", read16(pc));
				break;
			case 0xCB:  
				instr = decodeCB(pc);
				break;
			case 0xCC:       /* CALL Z,nn */
				instr = String.format("cz %04x", read16(pc));
				break;
			case 0xCD:       /* CALL nn */
				instr = String.format("call %04x", read16(pc));
				break;
			case 0xCE:       /* ADC A,n */
				instr = String.format("aci %02x", read8(pc));
				break;
			case 0xCF:       /* RST 08H */
				instr = "rst 1";
				break;
			case 0xD0:       /* RET NC */
				instr = "rnc";
				break;
			case 0xD1:       /* POP DE */
				instr = "pop d";
				break;
			case 0xD2:       /* JP NC,nn */
				instr = String.format("jnc %04x", read16(pc));
				break;
			case 0xD3:       /* OUT (n),A */
				instr = String.format("out %02x", read8(pc));
				break;
			case 0xD4:       /* CALL NC,nn */
				instr = String.format("cnc %04x", read16(pc));
				break;
			case 0xD5:       /* PUSH DE */
				instr = "push d";
				break;
			case 0xD6:       /* SUB n */
				instr = String.format("sui %02x", read8(pc));
				break;
			case 0xD7:       /* RST 10H */
				instr = "rst 2";
				break;
			case 0xD8:       /* RET C */
				instr = "rc";
				break;
			case 0xD9:       /* EXX */
				instr = "exx";
				break;
			case 0xDA:       /* JP C,nn */
				instr = String.format("jc %04x", read16(pc));
				break;
			case 0xDB:       /* IN A,(n) */
				instr = String.format("in %02x", read8(pc));
				break;
			case 0xDC:       /* CALL C,nn */
				instr = String.format("cc %04x", read16(pc));
				break;
			case 0xDD:
				instr = decodeDDFD(pc, 'x');
				break;
			case 0xDE:       /* SBC A,n */
				instr = String.format("sbi %02x", read8(pc));
				break;
			case 0xDF:       /* RST 18H */
				instr = "rst 3";
				break;
			case 0xE0:       /* RET PO */
				instr = "rpo";
				break;
			case 0xE1:       /* POP HL */
				instr = "pop h";
				break;
			case 0xE2:       /* JP PO,nn */
				instr = String.format("jpo %04x", read16(pc));
				break;
			case 0xE3:       /* EX (SP),HL */
				instr = "xthl";
				break;
			case 0xE4:       /* CALL PO,nn */
				instr = String.format("cpo %04x", read16(pc));
				break;
			case 0xE5:       /* PUSH HL */
				instr = "push h";
				break;
			case 0xE6:       /* AND n */
				instr = String.format("ani %02x", read8(pc));
				break;
			case 0xE7:       /* RST 20H */
				instr = "rst 4";
				break;
			case 0xE8:       /* RET PE */
				instr = "rpe";
				break;
			case 0xE9:       /* JP (HL) */
				instr = "pchl";
				break;
			case 0xEA:       /* JP PE,nn */
				instr = String.format("jpe %04x", read16(pc));
				break;
			case 0xEB:       /* EX DE,HL */
				instr = "xchg";
				break;
			case 0xEC:       /* CALL PE,nn */
				instr = String.format("cpe %04x", read16(pc));
				break;
			case 0xED:
				instr = decodeED(pc);
				break;
			case 0xEE:       /* XOR n */
				instr = String.format("xri %02x", read8(pc));
				break;
			case 0xEF:       /* RST 28H */
				instr = "rst 5";
				break;
			case 0xF0:       /* RET P */
				instr = "rp";
				break;
			case 0xF1:       /* POP AF */
				instr = "pop psw";
				break;
			case 0xF2:       /* JP P,nn */
				instr = String.format("jp %04x", read16(pc));
				break;
			case 0xF3:       /* DI */
				instr = "di";
				break;
			case 0xF4:       /* CALL P,nn */
				instr = String.format("cp %04x", read16(pc));
				break;
			case 0xF5:       /* PUSH AF */
				instr = "push psw";
				break;
			case 0xF6:       /* OR n */
				instr = String.format("ori %02x", read8(pc));
				break;
			case 0xF7:       /* RST 30H */
				instr = "rst 6";
				break;
			case 0xF8:       /* RET M */
				instr = "rm";
				break;
			case 0xF9:       /* LD SP,HL */
				instr = "sphl";
				break;
			case 0xFA:       /* JP M,nn */
				instr = String.format("jm %04x", read16(pc));
				break;
			case 0xFB:       /* EI */
				instr = "ei";
				break;
			case 0xFC:       /* CALL M,nn */
				instr = String.format("cm %04x", read16(pc));
				break;
			case 0xFD:
				instr = decodeDDFD(pc, 'y');
				break;
			case 0xFE:       /* CP n */
				instr = String.format("cpi %02x", read8(pc));
				break;
			case 0xFF:       /* RST 38H */
				instr = "rst 7";
				break;
		}
		return instr;
	}

	private static final String[] cbops = new String[] {
		"rlc", "rrc", "ral", "rar", "sla", "sra", "sll", "srl" };

	private String decodeCB(int pc) {
		String instr;
		int opCode = read8(pc);
		if (opCode < 0x40) {
			instr = String.format("%sr %c",
					cbops[(opCode >> 3) & 7], regs[opCode & 7]);
		} else if (opCode < 0x80) {
			instr = String.format("bit %d,%c",
					(opCode >> 3) & 7, regs[opCode & 7]);
		} else if (opCode < 0xc0) {
			instr = String.format("res %d,%c",
					(opCode >> 3) & 7, regs[opCode & 7]);
		} else {
			instr = String.format("setb %d,%c",
					(opCode >> 3) & 7, regs[opCode & 7]);
		}
		return instr;
	}

	private String decodeDDFD(int pc, char regIXY) {
		String instr;
		int opCode = read8(pc++);
		byte disp = (byte)read8(pc++); // might not be used...

		switch (opCode) {
			case 0x09:       /* ADD IX,BC */
				instr = String.format("dad%c b", regIXY);
				--lastLen;
				break;
			case 0x19:       /* ADD IX,DE */
				instr = String.format("dad%c d", regIXY);
				--lastLen;
				break;
			case 0x21:       /* LD IX,nn */
				instr = String.format("lxi%c %04x", regIXY, read16(--pc));
				--lastLen;
				break;
			case 0x22:       /* LD (nn),IX */
				instr = String.format("si%cd %04x", regIXY, read16(--pc));
				--lastLen;
				break;
			case 0x23:       /* INC IX */
				instr = String.format("inxi%c", regIXY);
				--lastLen;
				break;
			case 0x24:       /* INC IXh */
				instr = String.format("inri%ch", regIXY);
				--lastLen;
				break;
			case 0x25:       /* DEC IXh */
				instr = String.format("dcri%ch", regIXY);
				--lastLen;
				break;
			case 0x26:       /* LD IXh,n */
				instr = String.format("mvi%ch %02x", regIXY, disp & 0xff);
				break;
			case 0x29:       /* ADD IX,IX */
				instr = String.format("dad%c i%c", regIXY, regIXY);
				--lastLen;
				break;
			case 0x2A:       /* LD IX,(nn) */
				instr = String.format("li%cd %04x", regIXY, read16(--pc));
				--lastLen;
				break;
			case 0x2B:       /* DEC IX */
				instr = String.format("dcxi%c", regIXY);
				--lastLen;
				break;
			case 0x2C:       /* INC IXl */
				instr = String.format("inri%cl", regIXY);
				--lastLen;
				break;
			case 0x2D:       /* DEC IXl */
				instr = String.format("dcri%cl", regIXY);
				--lastLen;
				break;
			case 0x2E:       /* LD IXl,n */
				instr = String.format("mvi%cl %02x", regIXY, disp & 0xff);
				break;
			case 0x34:       /* INC (IX+d) */
				instr = String.format("inr%c %d", regIXY, disp);
				break;
			case 0x35:       /* DEC (IX+d) */
				instr = String.format("dcr%c %d", regIXY, disp);
				break;
			case 0x36:       /* LD (IX+d),n */
				instr = String.format("mvi%c %02x,%d", regIXY, read8(pc), disp);
				break;
			case 0x39:       /* ADD IX,SP */
				instr = String.format("dad%c sp", regIXY);
				--lastLen;
				break;
			case 0x44:       /* LD B,IXh */
				instr = String.format("mov%c b,h", regIXY);
				--lastLen;
				break;
			case 0x45:       /* LD B,IXl */
				instr = String.format("mov%c b,l", regIXY);
				--lastLen;
				break;
			case 0x46:       /* LD B,(IX+d) */
				instr = String.format("ld%c b,%d", regIXY, disp);
				break;
			case 0x4C:       /* LD C,IXh */
				instr = String.format("mov%c c,h", regIXY);
				--lastLen;
				break;
			case 0x4D:       /* LD C,IXl */
				instr = String.format("mov%c c,l", regIXY);
				--lastLen;
				break;
			case 0x4E:       /* LD C,(IX+d) */
				instr = String.format("ld%c c,%d", regIXY, disp);
				break;
			case 0x54:       /* LD D,IXh */
				instr = String.format("mov%c d,h", regIXY);
				--lastLen;
				break;
			case 0x55:       /* LD D,IXl */
				instr = String.format("mov%c d,l", regIXY);
				--lastLen;
				break;
			case 0x56:       /* LD D,(IX+d) */
				instr = String.format("ld%c d,%d", regIXY, disp);
				break;
			case 0x5C:       /* LD E,IXh */
				instr = String.format("mov%c e,h", regIXY);
				--lastLen;
				break;
			case 0x5D:       /* LD E,IXl */
				instr = String.format("mov%c e,l", regIXY);
				--lastLen;
				break;
			case 0x5E:       /* LD E,(IX+d) */
				instr = String.format("ld%c e,%d", regIXY, disp);
				break;
			case 0x60:       /* LD IXh,B */
				instr = String.format("mov%c h,b", regIXY);
				--lastLen;
				break;
			case 0x61:       /* LD IXh,C */
				instr = String.format("mov%c h,c", regIXY);
				--lastLen;
				break;
			case 0x62:       /* LD IXh,D */
				instr = String.format("mov%c h,d", regIXY);
				--lastLen;
				break;
			case 0x63:       /* LD IXh,E */
				instr = String.format("mov%c h,e", regIXY);
				--lastLen;
				break;
			case 0x64:       /* LD IXh,IXh */
				instr = String.format("mov%c h,h", regIXY);
				--lastLen;
				break;
			case 0x65:       /* LD IXh,IXl */
				instr = String.format("mov%c h,l", regIXY);
				--lastLen;
				break;
			case 0x66:       /* LD H,(IX+d) */
				instr = String.format("ld%c h,%d", regIXY, disp);
				break;
			case 0x67:       /* LD IXh,A */
				instr = String.format("mov%c h,a", regIXY);
				--lastLen;
				break;
			case 0x68:       /* LD IXl,B */
				instr = String.format("mov%c l,b", regIXY);
				--lastLen;
				break;
			case 0x69:       /* LD IXl,C */
				instr = String.format("mov%c l,c", regIXY);
				--lastLen;
				break;
			case 0x6A:       /* LD IXl,D */
				instr = String.format("mov%c l,d", regIXY);
				--lastLen;
				break;
			case 0x6B:       /* LD IXl,E */
				instr = String.format("mov%c l,e", regIXY);
				--lastLen;
				break;
			case 0x6C:       /* LD IXl,IXh */
				instr = String.format("mov%c l,h", regIXY);
				--lastLen;
				break;
			case 0x6D:       /* LD IXl,IXl */
				instr = String.format("mov%c l,l", regIXY);
				--lastLen;
				break;
			case 0x6E:       /* LD L,(IX+d) */
				instr = String.format("ld%c l,%d", regIXY, disp);
				break;
			case 0x6F:       /* LD IXl,A */
				instr = String.format("mov%c l,a", regIXY);
				--lastLen;
				break;
			case 0x70:       /* LD (IX+d),B */
				instr = String.format("st%c b,%d", regIXY, disp);
				break;
			case 0x71:       /* LD (IX+d),C */
				instr = String.format("st%c c,%d", regIXY, disp);
				break;
			case 0x72:       /* LD (IX+d),D */
				instr = String.format("st%c d,%d", regIXY, disp);
				break;
			case 0x73:       /* LD (IX+d),E */
				instr = String.format("st%c e,%d", regIXY, disp);
				break;
			case 0x74:       /* LD (IX+d),H */
				instr = String.format("st%c h,%d", regIXY, disp);
				break;
			case 0x75:       /* LD (IX+d),L */
				instr = String.format("st%c l,%d", regIXY, disp);
				break;
			case 0x77:       /* LD (IX+d),A */
				instr = String.format("st%c a,%d", regIXY, disp);
				break;
			case 0x7C:       /* LD A,IXh */
				instr = String.format("mov%c a,h", regIXY);
				--lastLen;
				break;
			case 0x7D:       /* LD A,IXl */
				instr = String.format("mov%c a,l", regIXY);
				--lastLen;
				break;
			case 0x7E:       /* LD A,(IX+d) */
				instr = String.format("ld%c a,%d", regIXY, disp);
				break;
			case 0x84:       /* ADD A,IXh */
				instr = String.format("add%c h", regIXY);
				--lastLen;
				break;
			case 0x85:       /* ADD A,IXl */
				instr = String.format("add%c l", regIXY);
				--lastLen;
				break;
			case 0x86:       /* ADD A,(IX+d) */
				instr = String.format("add%c %d", regIXY, disp);
				break;
			case 0x8C:       /* ADC A,IXh */
				instr = String.format("adc%c h", regIXY);
				--lastLen;
				break;
			case 0x8D:       /* ADC A,IXl */
				instr = String.format("adc%c l", regIXY);
				--lastLen;
				break;
			case 0x8E:       /* ADC A,(IX+d) */
				instr = String.format("adc%c %d", regIXY, disp);
				break;
			case 0x94:       /* SUB IXh */
				instr = String.format("sub%c h", regIXY);
				--lastLen;
				break;
			case 0x95:       /* SUB IXl */
				instr = String.format("sub%c l", regIXY);
				--lastLen;
				break;
			case 0x96:       /* SUB (IX+d) */
				instr = String.format("sub%c %d", regIXY, disp);
				break;
			case 0x9C:       /* SBC A,IXh */
				instr = String.format("sbb%c h", regIXY);
				--lastLen;
				break;
			case 0x9D:       /* SBC A,IXl */
				instr = String.format("sbb%c l", regIXY);
				--lastLen;
				break;
			case 0x9E:       /* SBC A,(IX+d) */
				instr = String.format("sbb%c %d", regIXY, disp);
				break;
			case 0xA4:       /* AND IXh */
				instr = String.format("ana%c h", regIXY);
				--lastLen;
				break;
			case 0xA5:       /* AND IXl */
				instr = String.format("ana%c l", regIXY);
				--lastLen;
				break;
			case 0xA6:       /* AND (IX+d) */
				instr = String.format("ana%c %d", regIXY, disp);
				break;
			case 0xAC:       /* XOR IXh */
				instr = String.format("xra%c h", regIXY);
				--lastLen;
				break;
			case 0xAD:       /* XOR IXl */
				instr = String.format("xra%c l", regIXY);
				--lastLen;
				break;
			case 0xAE:       /* XOR (IX+d) */
				instr = String.format("xra%c %d", regIXY, disp);
				break;
			case 0xB4:       /* OR IXh */
				instr = String.format("ora%c h", regIXY);
				--lastLen;
				break;
			case 0xB5:       /* OR IXl */
				instr = String.format("ora%c l", regIXY);
				--lastLen;
				break;
			case 0xB6:       /* OR (IX+d) */
				instr = String.format("ora%c %d", regIXY, disp);
				break;
			case 0xBC:       /* CP IXh */
				instr = String.format("cmp%c h", regIXY);
				--lastLen;
				break;
			case 0xBD:       /* CP IXl */
				instr = String.format("cmp%c l", regIXY);
				--lastLen;
				break;
			case 0xBE:       /* CP (IX+d) */
				instr = String.format("cmp%c %d", regIXY, disp);
				break;
			case 0xCB:  
				opCode = read8(pc++);
				instr = decodeDDFDCB(opCode, disp, regIXY);
				break;
			case 0xE1:       /* POP IX */
				instr = String.format("popi%c", regIXY);
				--lastLen;
				break;
			case 0xE3:       /* EX (SP),IX */
				instr = String.format("xti%c", regIXY);
				--lastLen;
				break;
			case 0xE5:       /* PUSH IX */
				instr = String.format("pushi%c", regIXY);
				--lastLen;
				break;
			case 0xE9:       /* JP (IX) */
				instr = String.format("pci%c", regIXY);
				--lastLen;
				break;
			case 0xF9:       /* LD SP,IX */
				instr = String.format("spi%c", regIXY);
				--lastLen;
				break;
			default:
				int op = regIXY == 'x' ? 0xdd : 0xfd;
				instr = String.format("?%02x %02x...", op, opCode);
				break;
		}
		return instr;
	}

	private String decodeDDFDCB(int opCode, byte address, char regIXY) {
		String instr;
		if (opCode < 0x40) {
			if ((opCode & 7) == 6) {
				instr = String.format("%s%c %d",
					cbops[(opCode >> 3) & 7], regIXY, address);
			} else {
				instr = String.format("%s%c %d,%c",
					cbops[(opCode >> 3) & 7], regIXY, address,
					regs[opCode & 7]);
			}
		} else if (opCode < 0x80) {
			instr = String.format("bit%c %d,%d",
					regIXY, (opCode >> 3) & 7, address);
		} else if (opCode < 0xc0) {
			if ((opCode & 7) == 6) {
				instr = String.format("res%c %d,%d",
					regIXY, (opCode >> 3) & 7, address);
			} else {
				instr = String.format("res%c %d,%d,%c",
					regIXY, (opCode >> 3) & 7, address,
					regs[opCode & 7]);
			}
		} else {
			if ((opCode & 7) == 6) {
				instr = String.format("set%c %d,%d",
					regIXY, (opCode >> 3) & 7, address);
			} else {
				instr = String.format("set%c %d,%d,%c",
					regIXY, (opCode >> 3) & 7, address,
					regs[opCode & 7]);
			}
		}
		return instr;
	}

	private String decodeED(int pc) {
		String instr;
		int opCode = read8(pc++);

		switch (opCode) {
			case 0x40:       /* IN B,(C) */
				instr = "inp b";
				break;
			case 0x41:       /* OUT (C),B */
				instr = "outp b";
				break;
			case 0x42:       /* SBC HL,BC */
				instr = "dsbc b";
				break;
			case 0x43:       /* LD (nn),BC */
				instr = String.format("sbcd %04x", read16(pc));
				break;
			case 0x44:
			case 0x4C:
			case 0x54:
			case 0x5C:
			case 0x64:
			case 0x6C:
			case 0x74:
			case 0x7C:       /* NEG */
				instr = "neg";
				break;
			case 0x4D:       /* RETI */
				instr = "reti";
				break;
			case 0x45:
			case 0x55:
			case 0x5D:
			case 0x65:
			case 0x6D:
			case 0x75:
			case 0x7D:       /* RETN */
				instr = "retn";
				break;
			case 0x46:
			case 0x4E:
			case 0x66:
			case 0x6E:       /* IM 0 */
				instr = "im0";
				break;
			case 0x47:       /* LD I,A */
				instr = "stai";
				break;
			case 0x48:       /* IN C,(C) */
				instr = "inp c";
				break;
			case 0x49:       /* OUT (C),C */
				instr = "outp c";
				break;
			case 0x4A:       /* ADC HL,BC */
				instr = "dadc b";
				break;
			case 0x4B:       /* LD BC,(nn) */
				instr = String.format("lbcd %04x", read16(pc));
				break;
			case 0x4F:       /* LD R,A */
				instr = "star";
				break;
			case 0x50:       /* IN D,(C) */
				instr = "inp d";
				break;
			case 0x51:       /* OUT (C),D */
				instr = "outp d";
				break;
			case 0x52:       /* SBC HL,DE */
				instr = "dsbc d";
				break;
			case 0x53:       /* LD (nn),DE */
				instr = String.format("sded %04x", read16(pc));
				break;
			case 0x56:
			case 0x76:       /* IM 1 */
				instr = "im1";
				break;
			case 0x57:       /* LD A,I */
				instr = "ldai";
				break;
			case 0x58:       /* IN E,(C) */
				instr = "inp e";
				break;
			case 0x59:       /* OUT (C),E */
				instr = "outp e";
				break;
			case 0x5A:       /* ADC HL,DE */
				instr = "dadc d";
				break;
			case 0x5B:       /* LD DE,(nn) */
				instr = String.format("lded %04x", read16(pc));
				break;
			case 0x5E:
			case 0x7E:       /* IM 2 */
				instr = "im2";
				break;
			case 0x5F:       /* LD A,R */
				instr = "ldar";
				break;
			case 0x60:       /* IN H,(C) */
				instr = "inp h";
				break;
			case 0x61:       /* OUT (C),H */
				instr = "outp h";
				break;
			case 0x62:       /* SBC HL,HL */
				instr = "dsbc h";
				break;
			case 0x63:       /* LD (nn),HL */
				instr = String.format("shld* %04x", read16(pc));
				break;
			case 0x67:       /* RRD */
				instr = "rrd";
				break;
			case 0x68:       /* IN L,(C) */
				instr = "inp l";
				break;
			case 0x69:       /* OUT (C),L */
				instr = "outp l";
				break;
			case 0x6A:       /* ADC HL,HL */
				instr = "dadc h";
				break;
			case 0x6B:       /* LD HL,(nn) */
				instr = String.format("lhld* %04x", read16(pc));
				break;
			case 0x6F:       /* RLD */
				instr = "rld";
				break;
			case 0x70:       /* IN F,(C) */
				instr = "inf";
				break;
			case 0x71:       /* OUT (C),F */
				instr = "outf";
				break;
			case 0x72:       /* SBC HL,SP */
				instr = "dsbc sp";
				break;
			case 0x73:       /* LD (nn),SP */
				instr = String.format("sspd %04x", read16(pc));
				break;
			case 0x78:       /* IN A,(C) */
				instr = "inp a";
				break;
			case 0x79:       /* OUT (C),A */
				instr = "outp a";
				break;
			case 0x7A:       /* ADC HL,SP */
				instr = "dadc sp";
				break;
			case 0x7B:       /* LD SP,(nn) */
				instr = String.format("lspd %04x", read16(pc));
				break;
			case 0xA0:       /* LDI */
				instr = "ldi";
				break;
			case 0xA1:       /* CPI */
				instr = "cci";
				break;
			case 0xA2:       /* INI */
				instr = "ini";
				break;
			case 0xA3:       /* OUTI */
				instr = "outi";
				break;
			case 0xA8:       /* LDD */
				instr = "ldd";
				break;
			case 0xA9:       /* CPD */
				instr = "ccd";
				break;
			case 0xAA:       /* IND */
				instr = "ind";
				break;
			case 0xAB:       /* OUTD */
				instr = "outd";
				break;
			case 0xB0:       /* LDIR */
				instr = "ldir";
				break;
			case 0xB1:       /* CPIR */
				instr = "ccir";
				break;
			case 0xB2:       /* INIR */
				instr = "inir";
				break;
			case 0xB3:       /* OTIR */
				instr = "outir";
				break;
			case 0xB8:       /* LDDR */
				instr = "lddr";
				break;
			case 0xB9:       /* CPDR */
				instr = "ccdr";
				break;
			case 0xBA:       /* INDR */
				instr = "indr";
				break;
			case 0xBB:       /* OTDR */
				instr = "outdr";
				break;
			default:
				instr = String.format("?ed %02x", opCode);
				break;
		}
		return instr;
	}

}
