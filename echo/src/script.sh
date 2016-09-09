#!/bin/bash
#make clean
make evaluation
export LD_LIBRARY_PATH=./malloc/lib/:../lib/:$LD_LIBRARY_PATH
rm -rf /dev/shm/efile
./evaluation/evaluation --kpvm-dram 2 3 128 1024 8 8 7 400 2
# <cpus> <iters> <ksize> <vsize> <merge_every> <put_prob> <update_prob> <num_operations> <threads> 
#PREPOP number is a macro hardcoded in evaluation.c, which determines number of prepopulated keys
