#########################################################################
# File Name: run.sh
# Description: 
# Author: CaoDan
# mail: caodan@linuxtoy.cn
# Created Time: 2017-03-25 21:44:04
#########################################################################
#!/bin/sh

BOARD=vexpress-a9

ZIMAGE=${KERNEL_DIR}/arch/arm/boot/zImage
DTB_FILE=${KERNEL_DIR}/arch/arm/boot/dts/vexpress-v2p-ca9.dtb
ROOTFS=rootfs.ext3

# -S    freeze CPU at startup
# -s    shorthand for -gdb tcp::1234
qemu-system-arm -M ${BOARD} -m 512M \
	-serial stdio \
	-kernel test.elf \
	-S -s

