#!/bin/bash

clear
echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -H o251-01 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -H o251-01 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -H o251-01 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -H o251-01 matrix_multiplication_ijk ikjresults.txt < zero.txt

echo "4processes."
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03 matrix_multiplication_ijk ikjresults.txt < zero.txt
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06 matrix_multiplication_ijk ikjresults.txt < zero.txt
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08 matrix_multiplication_ijk ikjresults.txt < zero.txt
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10 matrix_multiplication_ijk ikjresults.txt < zero.txt
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10,o251-04,o251-04,o251-12,o251-12 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10,o251-04,o251-04,o251-12,o251-12 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10,o251-04,o251-04,o251-12,o251-12 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10,o251-04,o251-04,o251-12,o251-12 matrix_multiplication_ijk ikjresults.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10,o251-04,o251-04,o251-12,o251-12 matrix_multiplication_ijk ikjresults.txt < zero.txt
