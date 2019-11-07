/* descramble DZ.COM according to table therein... */

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

uint8_t obj[64*1024];
int tbl[128][3] = {0};
int max;

static void lddr(int hl, int de, int bc) {
	do {
		if (de > max) max = de;
		obj[de--] = obj[hl--];
		--bc;
		de &= 0xffff;
		hl &= 0xffff;
		bc &= 0xffff;
	} while (bc != 0);
}

static void put_byte(int a, int v) {
	obj[a] = (v & 0xff);
}

static void put_word(int a, int v) {
	put_byte(a, v);
	put_byte(a + 1, v >> 8);
}

static int word(int a) {
	return (obj[a] | (obj[a+1] << 8));
}

// boolean
static int checksum() {
	int de;
	int hl = 0;
	for (de = 0x0300; de < 0x8fb7; ++de) {
		hl += obj[de];
	}
	hl &= 0xffff;
	return (hl == word(0x8fb7));
}

int main(int argc, char **argv) {
	int fd;
	int n;
	int hl;
	int de;
	int bc;
	int x;

	memset(obj, 0, sizeof(obj));

	if (argc < 3) {
		fprintf(stderr, "usage: %s <dz.com> <outfile>\n", argv[0]);
		exit(1);
	}
	fd = open(argv[1], O_RDONLY);
	if (fd < 0) {
		perror(argv[1]);
		exit(1);
	}
	n = read(fd, obj + 0x0100, sizeof(obj) - 0x0100);
	if (n < 0) {
		perror(argv[1]);
		exit(1);
	}
	if (n < 0x8f00) {
		fprintf(stderr, "DZ.COM too small\n");
		exit(1);
	}
	close(fd);
	if (!checksum()) {
		fprintf(stderr, "DZ.COM corrupted\n");
		exit(1);
	}
	max = 0;
	// copy table to safety...
	n = 0x8f0b;
	x = 0;
	do {
		hl = word(n);
		n += 2;
		de = word(n);
		n += 2;
		bc = word(n);
		n += 2;
		tbl[x][0] = hl;
		tbl[x][1] = de;
		tbl[x][2] = bc;
		++x;
	} while (de != 0);
	// perform moves in table...
	x = 0;
	while (tbl[x][1] != 0) {
		lddr(tbl[x][0], tbl[x][1], tbl[x][2]);
		++x;
	}
	if (max == 0) {
		fprintf(stderr, "Unscramble did nothing\n");
		exit(1);
	}
	put_byte(0x0100, 0xc3);	// JMP
	put_word(0x0101, tbl[x][0]); // new start/entry point
	max += 1;	// bound
	fd = open(argv[2], O_WRONLY|O_CREAT|O_TRUNC, 0666);
	if (fd < 0) {
		perror(argv[2]);
		exit(1);
	}
	n = write(fd, obj + 0x0100, max - 0x0100);
	if (n < 0) {
		perror(argv[2]);
		exit(1);
	}
	if (close(fd) < 0) {
		perror(argv[2]);
		exit(1);
	}
	printf("done. entry = 0x%04x\n", tbl[x][0]);
	return 0;
}
