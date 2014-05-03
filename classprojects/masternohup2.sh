#!/bin/bash

echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk ijknohup.txt <  one.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk ijknohup.txt <  one.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk ijknohup.txt <  one.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk ijknohup.txt <  one.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk ijknohup.txt <  one.txt

echo "4processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk ijknohup.txt < one.txt
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk ijknohup.txt < one.txt
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk ijknohup.txt < one.txt
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk ijknohup.txt < one.txt
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk ijknohup.txt < one.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk ijknohup.txt < one.txt

echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk kijnohup.txt < two.txt

echo "4processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk kijnohup.txt < two.txt
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk kijnohup.txt < two.txt
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk kijnohup.txt < two.txt
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk kijnohup.txt < two.txt
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk kijnohup.txt < two.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk kijnohup.txt < two.txt

echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13 matrix_multiplication_ijk ikjnohup.txt < zero.txt

echo "4processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14 matrix_multiplication_ijk ikjnohup.txt < zero.txt
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17 matrix_multiplication_ijk ikjnohup.txt < zero.txt
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19 matrix_multiplication_ijk ikjnohup.txt < zero.txt
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21 matrix_multiplication_ijk ikjnohup.txt < zero.txt
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk ikjnohup.txt < zero.txt
mpirun --prefix /opt/openmpi -host o251-13,o251-13,o251-14,o251-14,o251-16,o251-16,o251-17,o251-17,o251-18,o251-18,o251-19,o251-19,o251-20,o251-20,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 matrix_multiplication_ijk ikjnohup.txt < zero.txt
