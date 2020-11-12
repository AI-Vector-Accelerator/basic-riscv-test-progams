#!/bin/bash
# call with first argument = 0 to checkout only

export RISCV=/opt/riscv
export PATH=$PATH:$RISCV/bin

sudo apt install git autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev -y

mkdir -p $RISCV
cd $RISCV


git clone -b rvv-0.8.x https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain
git submodule update --init --recursive

./configure --disable-linux --disable-multilib --disable-gdb --prefix=$RISCV --with-arch=rv32imc --with-abi=ilp32
make
