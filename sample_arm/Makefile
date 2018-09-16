CROSS_COMPILE=arm-none-eabi-

CC=$(CROSS_COMPILE)gcc
LD=$(CROSS_COMPILE)ld
AS=$(CROSS_COMPILE)as


test.elf: test.o
	$(LD) -Ttext 0x0  -o test.elf   $^

%.o : %.S
	$(CC)  -o $@ $<  -g  -c

clean:
		rm *.o *.elf    -f
