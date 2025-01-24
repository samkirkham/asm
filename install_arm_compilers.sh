#!/bin/bash
# run: sudo bash install_arm_compilers.sh

# install Arm cross-compilers
# .
# ..
# ..
# ..
apt-get install gcc-aarch64-linux-gnu # AArch64 C
apt-get install g++-aarch64-linux-gnu # AArch64 C++
apt-get install gcc-arm-linux-gnueabihf # AArch32 C
apt-get install g++-arm-linux-gnueabihf # AArch32 C++

# install QEMU user for running binaries in emulation
apt install qemu-user