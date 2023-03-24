#!/bin/bash
module load gcc/8.2.0 r/4.1.3 
# https://scicomp.ethz.ch/wiki/Using_the_batch_system
sbatch -J "MyBatchJob" -n 1 --time=1:00:00 -e error_messages.txt -o output.txt --mem-per-cpu=3000 --wrap="R --vanilla --slave <run_analysis.R&> log.txt"
