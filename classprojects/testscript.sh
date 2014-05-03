#!/bin/bash
for i in {1..5}
do
mpirun -H o251-20 matrix_multiplication_ijk testoutput.txt <test2.txt                           
mpirun -H o251-20,o251-21 matrix_multiplication_ijk testoutput.txt <test2.txt                           
done

