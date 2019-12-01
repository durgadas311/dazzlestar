// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

// PRELIMINARY
// Proposed interface to abstract details of various program file
// images, such as COM, SPR, PRL, REL. Needs to provide the capability
// to determine if an oprand/DW specifies a "relocatable" value
// or absolute. In addition, some symbol table information is
// embedded in REL files, which should be used to enhance disassembly.

// Typical constructor is <extends ProgramFile>(File prog) throws exception
//
public interface ProgramFile {
	// TODO: does segment API obsolete this?
	int base();	// lowest address of program
	int end();	// end address of program (+1)
	int size();	// total size of all segments
	// segment API
	int numSeg();	// number of segments
	int sizeSeg(int seg);	// size of specific segment
	int baseSeg(int seg);	// lowest adr of segment
	int endSeg(int seg);	// end adr of seg (+1)
	//
	boolean isReloc(int adr);	// is word *at* 'adr' relocatable?
	// TODO: how to share symbol table info?
	//
	int read(int adr);	// read a byte from program
	int read(int seg, int adr);	// read a byte from segment
	//
}
