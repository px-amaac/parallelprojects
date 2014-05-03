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

clear
echo "n = 3633000"
echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-19 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv
echo "2processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv
echo "4processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv
echo "6processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv
echo "10processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv
echo "14processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv
echo "18processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27,o251-28,o251-28 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27,o251-28,o251-28,o251-29,o251-29 timingtrap 5 3633000 100 600 resultsonepointfive.csv timingonepointfive.csv

clear
echo "n = 4844000"
echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-19 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv
echo "2processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv
echo "4processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv
echo "6processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv
echo "10processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv
echo "14processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv
echo "18processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27,o251-28,o251-28 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27,o251-28,o251-28,o251-29,o251-29 timingtrap 5 4844000 100 600 resultstwo.csv timingtwo.csv

clear
echo "n = 9688000"
echo "Running Timing runs on one process."
mpirun --prefix /opt/openmpi -host o251-19 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv
echo "2processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv
echo "4processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv
echo "6processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv
echo "8processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv
echo "10processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv
echo "12processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv
echo "14processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv
echo "16processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv
echo "18processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27,o251-28,o251-28 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv
echo "20processes."
mpirun --prefix /opt/openmpi -host o251-19,o251-19,o251-21,o251-21,o251-22,o251-22,o251-23,o251-23,o251-24,o251-24,o251-25,o251-25,o251-18,o251-18,o251-27,o251-27,o251-28,o251-28,o251-29,o251-29 timingtrap 5 9688000 100 600 resultsfour.csv timingfour.csv