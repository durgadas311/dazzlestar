all: dzout2 dzh19 dzxterm

everything: all dzout dzoutz dzout2z

zout/%.cim: %.asm
	zmac --dri -i -8 -c -s -n $?

zout/%.hex: %.asm
	zmac --dri -i -8 -c -s -n $?

zzout/%.cim: %.z80
	zmac --od zzout --dri $?

dzh19: zout/dzh19.hex

dzxterm: zout/dzxterm.hex

dzout2: zout/dz-out2.cim

dzout: zout/dz-out.cim

dzoutz: zzout/dz-out.cim

dzout2z: zzout/dz-out2.cim
