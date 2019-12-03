// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

public class Z80Dissed {
	// Types for the 'addr' target
	static final int RET = 0xc9;	// unconditional return
	static final int CRET = 0xc0;	// conditional return
	static final int JMP = 0xc3;	// unconditional branch
	static final int CJMP = 0xc2;	// conditional branch
	static final int CALL = 0xcd;	// call, cond and uncond
	static final int LXI = 0x01;	// data ref
	static final int LDI = 0x22;	// data indir ref

	public String op;	// opcode string
	public String fmt;	// param fmt or null
	public int addr;	// target, or -1
	public int len;		// length of instruction
	public int type;	// target type (if addr != -1)
	public int pc;		// PC address of opcode (start)
	public int off;		// offset of addr to pc.
	public boolean rel;	// relative jump (no actual addr operand)
	public Z80Dissed() {
		addr = -1;
	}
}
