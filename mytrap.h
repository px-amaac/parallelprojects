/* File:     mytrap.c
 *
 * Credits: Much of the code and comments below have been modified from Pacheco's code from ch3.
 *
 * Purpose:  Use MPI to implement a parallel version of the trapezoidal 
 *           rule.  This version uses collective communications and
 *           MPI derived datatypes to distribute the input data and 
 *           compute the global sum.
 *
 * Input:    The endpoints of the interval of integration
 *
 * Output:   Estimate of the integral from a to b of f(x)
 *           using the trapezoidal rule and n trapezoids.
 *
 * Compile:  mpicc -g -Wall -o mytrap mytrap.c
 * Run:      mpiexec -n <number of processes> ./mpi_trap4
 *
 * Algorithm:
 *    1.  Each process calculates "its" interval of
 *        integration.
 *    2.  Each process estimates the integral of f(x)
 *        over its interval using the trapezoidal rule.
 *    3a. Each process != 0 sends its integral to 0.
 *    3b. Process 0 sums the calculations received from
 *        the individual processes and prints the result.
 *
 * Note:  f(x) is all hardwired.
 *
 * IPP:   Section 3.5 (pp. 117 and ff.)
 */
#ifndef MYTRAP_H_
#define MYTRAP_H_

#include <stdio.h>
//Using sin and cos in function.
#include <math.h>
/* We'll be using MPI routines, definitions, etc. */
#include <mpi.h>

/* Build a derived datatype for distributing the input data */
 void Build_mpi_type(double* a_p, double* b_p, int* n_p,
      MPI_Datatype* input_mpi_t_p);

/* Calculate local integral  */
 double Trap(double left_endpt, double right_endpt, int trap_count, 
   double base_len);    

/* Function we're integrating */
 double f(double x); 

int Runtrap(double a, double b, int n);

#endif