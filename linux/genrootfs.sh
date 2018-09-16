#!/bin/bash

#--------------------------------------------------------------------
# File Name: genrootfs.sh
# Description:
# Author: Dan Cao <caodan@linuxtoy.cn>
# Created Time: 2018-09-16 10:14:44
#--------------------------------------------------------------------

mkdir .root.fs

dd if=/dev/zero of=rootfs.ext3 bs=512K count=512
mkfs.ext3 rootfs.ext3

sudo mount -t ext3 rootfs.ext3 .root.fs
sudo cp -R rootfs/* .root.fs
sudo umount .root.fs

rm -rf .root.fs
