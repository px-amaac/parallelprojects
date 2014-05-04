#!/bin/bash

echo "Running Timing runs on two processes."
./omp_elimination 100 2 >  results.txt
for i in 1 .. 5
do
	echo "Running"
	./omp_elimination 100 2 >>  results.txt
done
