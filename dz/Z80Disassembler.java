// Copyright (c) 2016 Douglas Miller <durgadas311@gmail.com>

public interface Z80Disassembler {
	String disas(int pc);
	String disas(boolean rom, int bnk, int pc);
	int instrLen();	// length of instr from last call to disas()
}
