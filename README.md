# How to Install QEMU

wget http://download.qemu-project.org/qemu-2.8.0.tar.xz
tar xvJf qemu-2.8.0.tar.xz
cd qemu-2.8.0
./configure
make


----------------------------------------------
git clone git://git.qemu-project.org/qemu.git
cd qemu
git submodule init
git submodule update --recursive
./configure
make


# QEMU 常用快捷键

ctrl-a x退出QEMU


# debug with gdb in qemu
`-S    freeze CPU at startup`
`-s    shorthand for -gdb tcp::1234`
qemu-system-arm -M vexpress-a9 -m 512M -serial stdio -kernel test.elf -S -s

打开gdb
arm-none-eabi-gdb test.elf
在gdb命令行中输入：
(gdb) target remote localhost:1234

