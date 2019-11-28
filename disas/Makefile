all: dzout2 dzh19 dzxterm

zout/%.cim: %.asm
	zmac --dri -i -8 -c -s -n $?

zout/%.hex: %.asm
	zmac --dri -i -8 -c -s -n $?

dzh19: zout/dzh19.hex

dzxterm: zout/dzxterm.hex

dzout2: zout/dz-out2.cim
