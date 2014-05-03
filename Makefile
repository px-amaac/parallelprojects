mytrap: mytrap.o trapwrapper.o
	mpicc -g -Wall -std=c99 -o mytrap mytrap.o trapwrapper.o -I
