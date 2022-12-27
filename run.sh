#!/bin/bash
source /opt/intel/oneapi/setvars.sh > /dev/null 2>&1
/bin/echo "##" $(whoami) is running CRC64 - 1 of 1 CRC64Test.cpp/CRC64Test.f90
echo "########## Compiling"
icpx -qopenmp -fopenmp-targets=spir64 CRC64Test.cpp -o bin/a.out || exit $?
echo "########## Executing"
cd bin
./a.out
echo "########## Done"
