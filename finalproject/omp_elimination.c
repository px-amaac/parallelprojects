/* File:     omp_elimination.c
 *
 * Purpose:  A parallel version of gaussian elimination using partial pivoting. Using openMP
 *
 * Compile:  gcc -g -Wall -fopenmp -o omp_elimination omp_elimination.c
 * Run:      ./omp_elimination <matrix size><number of threads> 
 * 
 * Input:    Matrix size, Number of threads
 * 
 *
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>   
#include <time.h>
#include <math.h>

/*------------------------------------------------------------------
 * Function:     generate_random_matrix
 * Purpose:      Generates a random matrix stored in row major form in array
 * Input args:   int* n: size of matrix will be n x n 
 				 double* array: pointer to that will point to the result of this function
 * Return val:   None
 */
void generate_random_matrix_vector_p(int* n, double* A, double* b);

/*------------------------------------------------------------------
 * Function:     print_matrix
 * Purpose:      Outputs the Matrix
 * Input args:   int* n: row size of matrix
 				 int* m: column size of matrix 
 				 double* arr: pointer to matrix stored in row major form.
 * Return val:   None
 */
void print_matrix(int* n, int* m, double* arr);

void ppivot(int* j, int* n, double* A, double* b);

/*--------------------------------------------------------------------*/
int main(int argc, char* argv[]) {
	double* A; //matrix A in row major form
	double* b; //vector b size of n
	
	//size of matrix
	int n = strtol(argv[1], NULL, 10);
	//number of threads.
	int thread_count = strtol(argv[2], NULL, 10);

	//calculate memory size needed for matrix and vector.
	int matrix_arr_sz = n*n*sizeof(double);
	int vector_arr_sz = n*sizeof(double);
	
	//allocate space for the matrix A and vector b
	A = (double*) malloc(matrix_arr_sz);
	b = (double*) malloc(vector_arr_sz);
	
	generate_random_matrix_vector_p(&n, A, b);

 
	print_matrix(&n, &n, A);
	print_matrix(NULL, &n, b);
	int j;
	for(j=0; j <n-1; ++j){
		ppivot(&j, &n, A, b);
	}
	print_matrix(&n, &n, A);
	print_matrix(NULL, &n, b);



	return 0; 
}  /* main */

void ppivot(int* j, int* n, double* A, double* b){

	int maxrow = *j;
	int lmaxrow;
	double max = 0;
	double lmax;
	int i;

	#pragma omp parallel private(lmax) private(lmaxrow) shared(max) private(i)
	{
		lmax = 0;
		lmaxrow = *j;
		//search through column and find the max.
  		#pragma omp for
  		for(i=(*j); i<(*n); i++){
   			if(fabs(A[i*(*n)+(*j)]) > fabs(lmax)){
	   			lmax = A[i*(*n)+(*j)]; //new local max
	   			lmaxrow = i; //new local max row
   			}
   		}
   		//compare with the global max.
	    #pragma omp critical(maxrow)
	    {
	    	//check the shared max. 
	  		if (fabs(lmax) > fabs(max)) {
	  			max = lmax;
	  			maxrow = lmaxrow;
	  		}
	    }
	}

	//if max row is not current pivot row then swap rows.
	if((*j) < maxrow){
		#pragma omp parallel for private(i)
			for (i = 0;i<(*n); ++i)
			{
				double temp = 0.0;
				temp = A[(*j)*(*n)+i]; //put into temp pointer
				A[(*j)*(*n)+i] = A[maxrow*(*n)+i]; //change pointer
				A[maxrow*(*n)+i] = temp; //replace old pointer with temp
			}
		//dont forget the b vector you need to swap that too.
		double btemp = 0.0;
		btemp = b[(*j)];
		b[(*j)] = b[maxrow];
		b[maxrow] = btemp;
	}
	printf("maxrow %d, value %f\n", maxrow, max);
}
void generate_random_matrix_vector_p(int* n, double* A, double* b){
//allocate an array of size n^2-1 * size of double to store a n*n matrix
	#pragma omp parallel
	{
		printf("n is %d\n", *n);
		struct drand48_data randBuffer;
		srand48_r((time(NULL) ^ omp_get_thread_num()), &randBuffer);
	   	int i;
		#pragma omp for
	   	for (i = 0; i <(*n)*(*n); ++i){
	   		double x;
	   		drand48_r(&randBuffer, &x);
			double tmp = -1 + 2*x;
				A[i] = tmp;
				//printf("%f\n", tmp);
		}
		#pragma omp for
	   	for (i = 0; i <(*n); ++i){
	   		double x;
	   		drand48_r(&randBuffer, &x);
			double tmp = -1 + 2*x;
				b[i] = tmp;
				printf("%f\n", tmp);
		}
	}
}

void print_matrix(int* n, int* m, double* arr){
	int i, j, M;
	printf("print matrix\n");
	if(NULL == n){
		M = 1;
	}
	else{
		M = *n;
	}
	for (i=0;i<M;i++){ 
		for (j=0; j<*m;j++){
   			printf("%.3f ", arr[i*M+j]);
		}
		printf("\n");   	
	}
}
