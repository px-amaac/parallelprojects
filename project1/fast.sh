#!/bin/bash

clear
echo "n = 2422000"
echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-19 timingtrap 5 2422000 100 600 results_text.csv timingone.csv
echo "2processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19 timingtrap 5 2422000 100 600 results_text.csv timingone.csv
echo "4processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21 timingtrap 5 2422000 100 600 results_text.csv timingone.csv
echo "6processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22 timingtrap 5 2422000 100 600 results_text.csv timingone.csv
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 timingtrap 5 2422000 100 600 results_text.csv timingone.csv
echo "10processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24 timingtrap 5 2422000 100 600 results_text.csv timingone.csv
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25 timingtrap 5 2422000 100 600 results_text.csv timingone.csv
echo "14processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18 timingtrap 5 2422000 100 600 results_text.csv timingone.csv
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27 timingtrap 5 2422000 100 600 results_text.csv timingone.csv
echo "18processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27,o251-28,o251-28 timingtrap 5 2422000 100 600 results_text.csv timingone.csv
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27,o251-28,o251-28,o251-29,o251-29 timingtrap 5 2422000 100 600 results_text.csv timingone.csv