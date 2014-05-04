/* File:     omp_hello.c
 *
 * Purpose:  A parallel hello, world program that uses OpenMP
 *
 * Compile:  gcc -g -Wall -fopenmp -o omp_hello omp_hello.c
 * Run:      ./omp_hello <number of threads>
 * 
 * Input:    none
 * Output:   A message from each thread
 *
 * IPP:      Section 5.1 (pp. 211 and ff.)
 */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <omp.h>   



/*--------------------------------------------------------------------*/
int main(int argc, char* argv[]) {
   	int thread_count = strtol(argv[1], NULL, 10); 
   	double* A = (double*) malloc(9*sizeof(double));
	#pragma omp parallel num_threads(thread_count) 
	{
		struct drand48_data randBuffer;
		srand48_r((time(NULL) - omp_get_thread_num()), &randBuffer);
	   	int i;
	   	#pragma omp for
		   	for (i = 0; i < 9; ++i){
		   		double x;
		   		drand48_r(&randBuffer, &x);
				double tmp = -1 + 2*x;
					A[i] = tmp;
					printf("%f\n", tmp);
			}
	    
	}
	return 0;
}  /* main */


