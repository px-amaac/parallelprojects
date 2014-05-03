/* File:     matrix_multiplication_ijk.c
 * Purpose:  Use MPI to implement a parallel version of a matrix by matrix
 * 			 multiplication. This version uses collective communications to distribute the input data and 
 *           compute the global sum.
 *
 * Input:    Pipe File from stdin. if no file is provided then program generates
 *			 2 random matricies of size 4800.
 *			 
 * Output:   
 *
 * Compile:  mpicc -g -Wall -o mpi_trap4 mpi_trap4.c
 * Run:      mpirun -n <number of processes> matrix_multiplication_ijk <(optional)dataoutputfile> < <inputfile>
 * Input file in the form of
 *	<form>
 *	<'R' for random, 'I' for file input>
 *	<n size of the matrix>  //Matrix will be n x n big
 *	<Matrix>
 *
 *  eg. 2x2 matrix running ijk n=2 
 *	ijk
 *	I
 *  2
 *	2 13
 *	5 2
 *
 * Algorithm:
 *    1.  Each process calculates "its" interval of
 *        the C Matrix. Intervals are collections of Rows in C
 *    2.  Each process gets the dot product of all of its individual 
 *		  rows of A with each column or row in B. The way it actually 
 * 		  performs the calculation is based on user input.
 *        over its interval using the trapezoidal rule.
 *    3a. Each process including 0 sends its dot product results in intervals of rows to 0.
 *    3b. Process 0 gathers the result in C.
 *
 * 
 *	Aaron McIntyre
 * 
 */
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <mpi.h>
#include <string.h>


/*------------------------------------------------------------------
 * Function:     generate_random_matrix
 * Purpose:      Generates a random matrix stored in row major form in array
 * Input args:   int* n: size of matrix will be n x n 
 				 double* array: pointer to that will point to the result of this function
 * Return val:   None
 */
void generate_random_matrix(int* n, double* array);
/*------------------------------------------------------------------
 * Function:     print_matrix
 * Purpose:      Outputs the Matrix
 * Input args:   int* n: row size of matrix
 				 int* m: column size of matrix 
 				 double* arr: pointer to matrix stored in row major form.
 * Return val:   None
 */
void print_matrix(int* n, int* m, double* arr);
/*------------------------------------------------------------------
 * Function:     setup_matricies
 * Purpose:      Using the input flag and STDin passed into it along with pointers to A and B 
 				 matrices this function will setup A and B. If the input flag is I then A and B will be 
 				 read in from STDIN. If input flag is R then A and B will be generated randomly.
 * Input args:   double* A: pointer to A matrix
 				 double* B: pointer to B matrix
 				 int* n: size of matrix will be n x n
 				 char* input_flag: character representing how A and B will be created
 				 FILE* input: STDIN gets passed here.
 * Return val:   None
 */
void setup_matricies(double* A, double* B, int* n, char* input_flag, FILE* input);
/*------------------------------------------------------------------
 * Function:     ijk_calculate_matricies
 * Purpose:      Calculates matrices using ijk form.
 * Input args:   double* A: pointer  to Matrix A
 				 double* B: pointer to Matrix B
 				 double* C: pointer to result Matrix C
 				 int* n: size of matrix wil be n x n
 				 int* rowsize: is n / commsize because this function is invoked on each process. 
 				 Each process only has m/commsize rows.
 * Return val:   None
 */
void ijk_calculate_matricies(double* A, double* B, double* C, int* n, int* rowsize);
/*------------------------------------------------------------------
 *Function:     ikj_calculate_matricies
 * Purpose:      Calculates matrices using ikj form.
 * Input args:   double* A: pointer  to Matrix A
 				 double* B: pointer to Matrix B
 				 double* C: pointer to result Matrix C
 				 int* n: size of matrix wil be n x n
 				 int* rowsize: is n / commsize because this function is invoked on each process. 
 				 Each process only has m/commsize rows.
 * Return val:   None
 */
void ikj_calculate_matricies(double* A, double* B, double* C, int* n, int* rowsize);
/*------------------------------------------------------------------
 * Function:     kij_calculate_matricies
 * Purpose:      Calculates matrices using kij form.
 * Input args:   double* A: pointer  to Matrix A
 				 double* B: pointer to Matrix B
 				 double* C: pointer to result Matrix C
 				 int* n: size of matrix wil be n x n
 				 int* rowsize: is n / commsize because this function is invoked on each process. 
 				 Each process only has m/commsize rows.
 * Return val:   None
 */
void kij_calculate_matricies(double* A, double* B, double* C, int* n, int* rowsize);
/*------------------------------------------------------------------
 * Function:     Output_times
 * Purpose:      Outputs the timing results from the integral
 * Input args:   thistime: double representing the time to be instered into file
                 filename: file to store the data.
 * Return val:   None
 */
void Output_times(double* thistime, char* filename, char* form, int* comm_sz);

int main(int argc, char *argv[]) {
	
	
	int my_rank, comm_sz; 
	int n = 0;
	//line to parse
	char* flag;
	char* form;
	
	double* A; //Matrix a in rowmajor form.
	double* B; //Matrix B in rowmajor form.
	double* C;
	double* A_ROWS;
	double start_time, finish_time, elapsed_time;

	srand(time(NULL));
	/* Start up MPI */
	MPI_Init(NULL, NULL); 

   	/* Get the number of processes */
   	MPI_Comm_size(MPI_COMM_WORLD, &comm_sz); 

   	/* Get my rank among all the processes */
   	MPI_Comm_rank(MPI_COMM_WORLD, &my_rank); 

   	//getinput
   	if (my_rank == 0) { 
   		char* temp;
   		char* line = NULL;
		size_t size = 0;
		int llen = 0;
		
		const char delims[] = {'\t', '\n', ' '};

   		if(stdin != NULL){
	   		//gets the form from stdin
	   		llen = getline(&line, &size, stdin);
	   		//if linelength is greater than 0 then parse out the starting commands.
	   		if(llen != -1){
	   			//parse form
	   			temp = strtok(line, delims);
	   			form = malloc(strlen(temp)*sizeof(char));
	   			strcpy(form, temp);

	   			//parse flag
	   			llen = getline(&line, &size, stdin);
	   			temp = strtok(line, delims);
	   			flag = malloc(strlen(temp)*sizeof(char));
	   			strcpy(flag, temp);

	   			//parse n
	   			llen = getline(&line, &size, stdin);
	   			sscanf(line,"%d",&n);
	   		}
	   		//check input flag if I then input is from file.
	   		printf("%s\n", form);
	   		printf("%s\n", flag);
	   		printf("%d\n", n);
	   		if (n < comm_sz){
	   			printf("Invalid comm size or n.\n");
	   			return 1;
	   		}
	   		//build matrix arrays in rowmajor order
			free(line);
		}else{return 1;}
	}

	//broadcast n
	MPI_Bcast(&n, 1, MPI_INT, 0, MPI_COMM_WORLD);
	//setup array size
	int arraysize = n*n*sizeof(double);
	if(my_rank != 0){
	form = malloc(4*sizeof(char));
	}
	//allocate memory for the A and B arrays.
	A = (double*) malloc(arraysize);
	B = (double*) malloc(arraysize);
	//setup matrix arrays depending of if it is random or file driven.
	if(my_rank == 0){
		setup_matricies(A, B, &n, flag, stdin);
	}
	//interval of rows to be scattered
	int interval = (n*n)/comm_sz;
	int rowsize = n/comm_sz;
	//Allocating room on each process for A_ROWS
	A_ROWS = (double*) malloc(interval*sizeof(double));
	//set a barrier and start the timer
	MPI_Barrier(MPI_COMM_WORLD);
	if(my_rank == 0){
            start_time = MPI_Wtime();
         }
		//broadcast form
	MPI_Bcast(form, 4*sizeof(char), MPI_CHAR, 0, MPI_COMM_WORLD);
	
	
	//Broadcast B.
	MPI_Bcast(B, n*n, MPI_DOUBLE, 0, MPI_COMM_WORLD);
	//Scatter A.
	MPI_Scatter(A, interval, MPI_DOUBLE, A_ROWS, interval, MPI_DOUBLE, 0, MPI_COMM_WORLD);
	//allocate an array for C the same size as A
	
	double* C_ROWS = (double*) malloc(interval*sizeof(double));
	//calculate the matrix C
	//printf("%d calculating matrix. form is:  %s\n", my_rank, form);
	if(strcmp(form, "ijk") == 0){
		ijk_calculate_matricies(A_ROWS, B, C_ROWS, &n, &rowsize);
	}else if(strcmp(form, "ikj") == 0){
		ikj_calculate_matricies(A_ROWS, B, C_ROWS, &n, &rowsize);
	}else if(strcmp(form, "kij") == 0){
		kij_calculate_matricies(A_ROWS, B, C_ROWS, &n, &rowsize);
	}else{
		printf("Invalid Form\n");
		return 1;
	}	
	if(my_rank == 0){
		C = (double*) malloc(arraysize);
	}
	MPI_Gather(C_ROWS, interval, MPI_DOUBLE, C, interval, MPI_DOUBLE, 0, MPI_COMM_WORLD);
	/*if(my_rank ==0){
		print_matrix(&n, &n, C);
	}*/

	MPI_Barrier(MPI_COMM_WORLD);
     /* Print the result */
     if (my_rank == 0) {
        finish_time = MPI_Wtime();
        elapsed_time = finish_time - start_time;
        
        printf("Running on %d processors.\n", comm_sz);
        printf("Elapsed Time = %.6e\n Seconds", elapsed_time);
        print_matrix(&n, &n, C);
        
        if(argc > 1){
        	Output_times(&elapsed_time, (char*) argv[1], form, &comm_sz);
        }
     }
	free(A_ROWS);
	free(C_ROWS);
	free(A);
	free(B);
	free(form);
	/* Shut down MPI */
   	MPI_Finalize(); 
	return 0;
	
}

/*------------------------------------------------------------------
 * Function:     Output_times
 * Purpose:      Outputs the timing results from the integral
 * Input args:   thistime: double representing the time to be instered into file
                 filename: file to store the data.
 * Return val:   None
 */
void Output_times(double* thistime, char* filename, char* form, int* comm_sz){
    FILE *fp;
   fp = fopen(filename, "a");
    if (fp!=NULL){
      fprintf(fp, "%d,%s,%.15lf\n", *comm_sz, form, *thistime);
      fclose(fp);
   }
   else{
      printf("File not valid.");
   }
}

void ijk_calculate_matricies(double* A, double* B, double* C, int* n, int* rowsize){
	int i, j, k;
	double sum;
	
	for(i=0; i < *rowsize; i++){
		for(j=0; j <*n; j++){
			sum = 0.0;
			for(k=0; k<*n; k++){
				sum+= A[i*(*n)+k] * B[k*(*n)+j];
			}
			C[i*(*n)+j] = sum;
		}
	}
}

void ikj_calculate_matricies(double* A, double* B, double* C, int* n, int* rowsize){
	int i, j, k;
	double r;
	for (i=0; i<*rowsize; i++) {
  		for (k=0; k<*n; k++) {
    		r = A[i*(*n)+k];
    		for (j=0; j<*n; j++){
      			C[i*(*n)+j] += r * B[k*(*n)+j];
    		}
  		}
	}

}

void kij_calculate_matricies(double* A, double* B, double* C, int* n, int* rowsize){
	int i, j, k;
	double r;
	for (k=0; k<*n; k++) {
  		for (i=0; i<*rowsize; i++) {
    		r = A[i*(*n)+k];
    		for (j=0; j<*n; j++){
      			C[i*(*n)+j] += r * B[k*(*n)+j];   
    		}
  		}
	}

}

void setup_matricies(double* A, double* B, int* n, char* input_flag, FILE* input){
	const char delims[] = {'\t', '\n', ' '};
	char* temp;
	char* line = NULL;
	size_t size = 0;
	int llen = 0;
	if(strcmp(input_flag, "I") == 0){
		int i, j;

		for(i=0; i<*n; i++){
		llen = getline(&line, &size, stdin);
		if(llen != -1){
			temp = strtok(line, delims);
			A[i*(*n)] = atof(temp);
				for(j=1; j<*n; j++){
					temp = strtok(NULL, delims);
					A[i*(*n)+j] = atof(temp);
				}
			}
		}

		for(i=0; i<*n; i++){
		llen = getline(&line, &size, stdin);
		if(llen != -1){
			temp = strtok(line, delims);
			B[i*(*n)] = atof(temp);
				for(j=1; j<*n; j++){
					temp = strtok(NULL, delims);
					B[i*(*n)+j] = atof(temp);
				}
			}
		}
		/*print_matrix(n, n, A);
		print_matrix(n, n, B);*/

	}else if(strcmp(input_flag, "R") == 0){
		generate_random_matrix(n, A);
		generate_random_matrix(n, B);
	}else{
		printf("invalid input\n");
	}

}

void print_matrix(int* n, int* m, double* arr){
	int i, j;
	printf("print matrix\n");
	for (i=0;i<*n;i++){ 
		for (j=0; j<*m;j++){
   			printf("%.3f ", arr[i*(*n)+j]);
		}
		printf("\n");   	
	}
}
void generate_random_matrix(int* n, double* array){
	//allocate an array of size n^2-1 * size of double to store a n*n matrix
	
	for (int i = 0; i < (*n)*(*n); ++i){
		int tmp = rand() % 10 + 1;
		array[i] = (double)tmp;
	}
	/*print_matrix(n, n, array);*/


}