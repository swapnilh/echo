#!/bin/bash
make clean
make evaluation
export LD_LIBRARY_PATH=./malloc/lib/:../lib/:$LD_LIBRARY_PATH
./evaluation/evaluation --kpvm-dram 2 10 128 1024 8 0.1 0.7 100 2
# <cpus> <iters> <ksize> <vsize> <merge_every> <put_prob> <update_prob> <num_operations> <threads> 
#PREPOP number is a macro hardcoded in evaluation.c, which determines number of prepopulated keys
