#!/bin/bash

echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-27 matrix_multiplication_ijk ijkresults.txt <  ./one.txt
mpirun --prefix /opt/openmpi -host o251-27 matrix_multiplication_ijk ijkresults.txt <  ./one.txt
mpirun --prefix /opt/openmpi -host o251-27 matrix_multiplication_ijk ijkresults.txt <  ./one.txt
mpirun --prefix /opt/openmpi -host o251-27 matrix_multiplication_ijk ijkresults.txt <  ./one.txt
mpirun --prefix /opt/openmpi -host o251-27 matrix_multiplication_ijk ijkresults.txt <  ./one.txt

echo "4processes."
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28 matrix_multiplication_ijk ijkresults.txt < ./one.txt
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30 matrix_multiplication_ijk ijkresults.txt < ./one.txt
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32 matrix_multiplication_ijk ijkresults.txt < ./one.txt
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34 matrix_multiplication_ijk ijkresults.txt < ./one.txt
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk ijkresults.txt < ./one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk ijkresults.txt < ./one.txt
