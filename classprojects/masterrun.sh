#!/bin/bash

echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-27 matrix_multiplication_ijk ijkmaster.txt <  one.txt
mpirun --prefix /opt/openmpi -host o251-27 matrix_multiplication_ijk ijkmaster.txt <  one.txt
mpirun --prefix /opt/openmpi -host o251-27 matrix_multiplication_ijk ijkmaster.txt <  one.txt
mpirun --prefix /opt/openmpi -host o251-27 matrix_multiplication_ijk ijkmaster.txt <  one.txt
mpirun --prefix /opt/openmpi -host o251-27 matrix_multiplication_ijk ijkmaster.txt <  one.txt

echo "4processes."
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28 matrix_multiplication_ijk ijkmaster.txt < one.txt
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30 matrix_multiplication_ijk ijkmaster.txt < one.txt
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32 matrix_multiplication_ijk ijkmaster.txt < one.txt
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34 matrix_multiplication_ijk ijkmaster.txt < one.txt
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk ijkmaster.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-27,o251-27,o251-28,o251-28,o251-29,o251-29,o251-30,o251-30,o251-31,o251-31,o251-32,o251-32,o251-33,o251-33,o251-34,o251-34,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk ijkmaster.txt < one.txt

clear
echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijmaster.txt < two.txt

echo "4processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijmaster.txt < two.txt
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19 matrix_multiplication_ijk kijmaster.txt < two.txt
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijmaster.txt < two.txt
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24 matrix_multiplication_ijk kijmaster.txt < two.txt
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk kijmaster.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-24,o251-24,o251-25,o251-25,o251-26,o251-26 matrix_multiplication_ijk kijmaster.txt < two.txt

clear
echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -H o251-01 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -H o251-01 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -H o251-01 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -H o251-01 matrix_multiplication_ijk ikjmaster.txt < zero.txt

echo "4processes."
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03 matrix_multiplication_ijk ikjmaster.txt < zero.txt
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06 matrix_multiplication_ijk ikjmaster.txt < zero.txt
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08 matrix_multiplication_ijk ikjmaster.txt < zero.txt
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10 matrix_multiplication_ijk ikjmaster.txt < zero.txt
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10,o251-04,o251-04,o251-12,o251-12 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10,o251-04,o251-04,o251-12,o251-12 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10,o251-04,o251-04,o251-12,o251-12 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10,o251-04,o251-04,o251-12,o251-12 matrix_multiplication_ijk ikjmaster.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-01,o251-01,o251-03,o251-03,o251-05,o251-05,o251-06,o251-06,o251-07,o251-07,o251-08,o251-08,o251-09,o251-09,o251-10,o251-10,o251-04,o251-04,o251-12,o251-12 matrix_multiplication_ijk ikjmaster.txt < zero.txt
