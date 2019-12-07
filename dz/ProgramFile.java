// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.io.*;

// PRELIMINARY
// Proposed interface to abstract details of various program file
// images, such as COM, SPR, PRL, REL. Needs to provide the capability
// to determine if an oprand/DW specifies a "relocatable" value
// or absolute. In addition, some symbol table information is
// embedded in REL files, which should be used to enhance disassembly.

// Typical constructor is <extends ProgramFile>(File prog) throws exception
//
public interface ProgramFile {
	// segment API
	int numSeg();	// number of segments
	int sizeSeg(int seg);	// size of specific segment
	int baseSeg(int seg);	// lowest adr of segment
	int endSeg(int seg);	// end adr of seg (+1)
	int maxSeg(int seg);	// max adr of seg (+1)
	//
	int segAdr(int seg, int adr);
	int segAdr(int seg, Z80Dissed d);
	int segOf(int sa);
	int adrOf(int sa);
	boolean symbol(int seg, int a);		// only used for breaks
	String lookup(int seg, int a);		// only used for statement labels
	void putsym(int sgc, int a, String l);	// for DZ/Hint interp
	// For disassembly
	String getsym(int seg, Z80Dissed d);	// always returns something
	void mksym(int seg, Z80Dissed d);
	void resetSymtab();
	String segName(int seg);
	//
	int read(int seg, int adr);	// read a byte from segment
	//
	// ASM to init (e.g. ORG xxxx)
	void preASM(PrintStream ps, boolean prn, int seg);
}
