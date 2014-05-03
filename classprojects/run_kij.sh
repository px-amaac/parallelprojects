#!/bin/bash

clear
echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijresults.txt < two.txt

echo "4processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijresults.txt < two.txt
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19 matrix_multiplication_ijk kijresults.txt < two.txt
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijresults.txt < two.txt
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24 matrix_multiplication_ijk kijresults.txt < two.txt
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk kijresults.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk kijresults.txt < two.txt
