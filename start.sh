#!/bin/sh
LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$(pwd)/lib"
export LD_LIBRARY_PATH

./rpcfetch.sh 0 &
cd build
./rpcpp
pkill -x rpcfetch.sh