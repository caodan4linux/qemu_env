#########################################################################
# File Name: run.sh
# Description: 
# Author: CaoDan
# mail: caodan@linuxtoy.cn
# Created Time: 2017-03-25 21:44:04
#########################################################################
#!/bin/sh

BOARD=vexpress-a9
KERNEL_DIR=linux-4.14.26

ZIMAGE=${KERNEL_DIR}/arch/arm/boot/zImage
DTB_FILE=${KERNEL_DIR}/arch/arm/boot/dts/vexpress-v2p-ca9.dtb
ROOTFS=rootfs.ext3

qemu-system-arm -M ${BOARD} -smp 4 -m 1024M \
	-kernel ${ZIMAGE} -dtb ${DTB_FILE} \
	-nographic \
	-append "root=/dev/mmcblk0 rw console=ttyAMA0" \
	-sd ${ROOTFS}
