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
#include <sys/time.h>
#include <time.h>
#include <math.h>

/*------------------------------------------------------------------
 * Function:     generate_random_matrix
 * Purpose:      Generates a random matrix stored in row major form in array
 * Input args:   int* n: size of matrix will be n x n 
 				 double* array: pointer to that will point to the result of this function
 * Return val:   None
 */
void generate_random_matrix_vector_p(int* n, double* A, double* b, int* thread_count);

/*------------------------------------------------------------------
 * Function:     print_matrix
 * Purpose:      Outputs the Matrix
 * Input args:   int* n: row size of matrix
 				 int* m: column size of matrix 
 				 double* arr: pointer to matrix stored in row major form.
 * Return val:   None
 */
void print_matrix(int* n, int* m, double* arr);

void ppivot(int* j, int* n, double* A, double* b, int* thread_count);

void elimination(int* j, int* n, double* A, double* b, int* thread_count);

void back_substitution(int* n, double* A, double* b, double* x, int* thread_count);

void l2norm(int* n, double* A, double* b, double* x);

double time_to_double(struct timeval *timevalue);
/*--------------------------------------------------------------------*/
int main(int argc, char* argv[]) {
	double* A; //matrix A in row major form
	double* b; //vector b size of n
	double* x; //results vector x size of n
	struct timeval tstart, tfinish;
	struct timeval tdiff;

	
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
	x = (double*) malloc(vector_arr_sz);
	
	generate_random_matrix_vector_p(&n, A, b, &thread_count);

 
	//print_matrix(&n, &n, A);
	//print_matrix(NULL, &n, b);
	int j;
	int processor_num = omp_get_num_procs();
	//int threads_available = omp_get_num_threads();
	printf("Number of Cores: %d\n", processor_num);
	printf("Number of Threads: %d\n", thread_count);
	//start timing
	gettimeofday(&tstart, NULL);
	for(j=0; j <n-1; ++j){
		ppivot(&j, &n, A, b, &thread_count);
		elimination(&j, &n, A, b, &thread_count);
	}
	back_substitution(&n, A, b, x, &thread_count);
	//stop timing.
	gettimeofday(&tfinish, NULL);
	l2norm(&n, A, b, x);
	timersub(&tfinish, &tstart, &tdiff);
	double elapsed = time_to_double(&tdiff);
	printf("Elapsed Time %fms\n", elapsed);
	//print_matrix(&n, &n, A);
	//print_matrix(NULL, &n, b);
	//print_matrix(NULL, &n, x);
	free(A);
	A = NULL;
	free(b);
	b = NULL;
	free(x);
	x = NULL;
	return 0; 
}  /* main */

double time_to_double(struct timeval *timevalue)
{
	double result;
	result = timevalue->tv_sec * 1000.0;      // sec to ms
	result += timevalue->tv_usec / 1000.0;   // us to ms
	return result;
}

void l2norm(int* n, double* A, double* b, double* x){
	double* residual = malloc((*n)*sizeof(double));
	double sum_of_sqrs;
	int i, j;
	for (i = 0; i < (*n); ++i)
	{
		residual[i] = 0.0;
		for(j = i; j < (*n); ++j)
		{
			residual[i] += A[i*(*n)+j] * x[j];
		}
		//printf("before residual %f\n", residual[i]);
		//printf("before b[i] = %f\n", b[i]);
		residual[i] = fabs(residual[i] - b[i]);
		//printf("after residual %f\n", residual[i]);
		sum_of_sqrs += pow(residual[i], 2);
	}
	//printf("l2norm =%f %f\n", sum_of_sqrs, sqrt(sum_of_sqrs));
	free(residual);
	residual = NULL;
}

void elimination(int* j, int* n, double* A, double* b, int* thread_count){
	int i, k;
	omp_set_nested(1); // 1 - enables nested parallelism; 0 - disables nested parallelism.
	#pragma omp parallel for private(i) num_threads(*thread_count)
		for(i=(*j)+1; i < (*n); ++i)
		{
			double multiplier = A[i*(*n) + (*j)]/A[(*j)*(*n)+(*j)];
			double temp = 0.0;
			#pragma omp parallel for shared(multiplier) private(k) num_threads(*thread_count)
				for (k = 0; k < (*n); ++k)
				{
					temp = multiplier * A[(*j)*(*n)+k];
					A[i*(*n)+k] = A[i*(*n)+k] - temp;
				}
			double btemp = multiplier * b[i];
			b[i] = b[i] - btemp;

		}
}

void back_substitution(int* n, double* A, double* b, double* x, int* thread_count){
	int i, j;
	double sum;
	for(i = (*n)-1; i>=0; --i){
		sum = 0.0;
		#pragma omp parallel for private(j) reduction(+: sum) num_threads(*thread_count)
			for (j = i+1; j < (*n); ++j){
				//printf("A[i][j]:%f * x[j]:%f = %f\n", A[i*(*n)+j], x[j], A[i*(*n)+j]*x[j]);
				sum += A[i*(*n)+j]*x[j];
			}
		//printf("sum row %d is %f\n", i, sum);
		x[i] = b[i]-sum;
		//printf("%f\n", x[i]);
		x[i] = x[i]/A[i*(*n)+i];
		//printf("x =%f\n", x[i]);
	}

}

void ppivot(int* j, int* n, double* A, double* b, int* thread_count){

	int maxrow = *j;
	int lmaxrow;
	double max = 0;
	double lmax;
	int i;

	#pragma omp parallel private(lmax) private(lmaxrow) shared(max) private(i) num_threads(*thread_count)
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
		#pragma omp parallel for private(i) num_threads(*thread_count)
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
}
void generate_random_matrix_vector_p(int* n, double* A, double* b, int* thread_count){
//allocate an array of size n^2-1 * size of double to store a n*n matrix
	#pragma omp parallel num_threads(*thread_count)
	{
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
