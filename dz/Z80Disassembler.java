// Copyright (c) 2016 Douglas Miller <durgadas311@gmail.com>

public interface Z80Disassembler {
	Z80Dissed disas(int pc);
	Z80Dissed disas(boolean rom, int bnk, int pc);
}
