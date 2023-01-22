# Script for running a file in the qemu BIOS – type a filename as a CLI argument.
nasm $1 -f bin -o test.bin && qemu-system-x86_64 test.bin