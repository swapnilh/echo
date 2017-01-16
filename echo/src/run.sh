#!/bin/bash
export LD_LIBRARY_PATH=./malloc/lib/:../lib/:$LD_LIBRARY_PATH
#./evaluation/evaluation -n --kpvm-dram 2 3 128 1024 8 8 7 400 2
# trace
#time ./evaluation/evaluation -n --kpvm-dram 2 16 128 1024 8 8 7 1024000 4
# no trace
time ./evaluation/evaluation --kpvm-dram 2 16 128 1024 8 8 7 1024000 4
# <cpus> <iters> <ksize> <vsize> <merge_every> <put_prob> <update_prob> <num_operations> <threads> 
#PREPOP number is a macro hardcoded in evaluation.c, which determines number of prepopulated keys
