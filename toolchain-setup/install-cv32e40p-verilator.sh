#!/bin/bash

export CV32SIM=/opt/core-v-verif/cv32/sim/core
export PATH=$PATH:$CV32SIM

cd /opt

sudo apt install verilator
git clone https://github.com/openhwgroup/core-v-verif.git


cd ./core-v-verif/cv32/sim/core
make    # Clone the CV32E40P, build the Verilator model, run a bare-metal hello-world example




