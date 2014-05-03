/* File:     trapwrapper.c
 *
 * Purpose:  Use MPI mytrap class to find the minimum number of trapezoids
 * 			 needed to compute 14 significant digits of the given integral.
 *
 * Input:    The endpoints of the interval of integration
 *
 * Output:   Minimum n needed to compute the correct value up to 14 significant digits.
 *
 *
 * Algorithm:
 *    1.  
 */

#include "mytrap.h"




int main(void) {
	double a, b;
	int n, my_rank;
	//double acceptable_error;
	double true_value = 4003.72090015132682659291;
	//9491590258893561243091316580869541499520186955609660632751287108238;
	double strue_value= 4003.72090015132682;
	MPI_Init(NULL, NULL);


   /* Get my process rank */
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);

	
    //double estimated_value = 0;
    if (my_rank == 0) {
	    printf("Enter a and b\n");
	    scanf("%lf %lf", &a, &b);
	    printf("truevalue = %.50lf\n", true_value);
	    n = 10000;
	}
	for (int i=0; i<10; i++){
		Runtrap(a, b, n);
		n = n*(n*i);
	}
	/* Shut down MPI */
   	MPI_Finalize();


    return 0;

} 

