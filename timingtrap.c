/* File:     timingtrap.c
 * Modified Source from Pacheco
 * Purpose:  Use MPI to implement a parallel version of the trapezoidal 
 *           rule.  This version uses collective communications and
 *           MPI derived datatypes to distribute the input data and 
 *           compute the global sum. Program accepts command line arguments.
 *
 * Input:    argv[0] = program name
 *           argv[2] = number of runs
 *           argv[3] = left bound
 *           argv[4] = right bound
 *           argv[5] = results file name
 * Output:   Estimate of the integral from a to b of f(x)
 *           using the trapezoidal rule and n trapezoids.
 *
 * Compile:  mpicc -g -Wall -o mpi_trap4 mpi_trap4.c
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
#include <stdio.h>
#include <math.h>
#include <float.h>
#include <stdlib.h>
/* We'll be using MPI routines, definitions, etc. */
#include <mpi.h>

/* Build a derived datatype for distributing the input data */
void Build_mpi_type(double* a_p, double* b_p, int* n_p, int* r_p,
      MPI_Datatype* input_mpi_t_p);

/* Get the input values */
void Get_input(int my_rank, int comm_sz, double* a_p, double* b_p,
      int* n_p, int* runs);

/* Calculate local integral  */
double Trap(double left_endpt, double right_endpt, int trap_count, 
   double base_len);    

/*Output lowest time, speedup, and efficiency to file.*/
void Output_results(double* m_t, char* filename, double* s_u, double* e_f);

/*Output times from each run to file*/
void Output_times(double* thistime, char* filename);

/* Function we're integrating */
double f(double x); 

/*------------------------------------------------------------------
 * Function:     main
 * Purpose:      Main driver for program
 * Input args:   argc is size of argv array. argv[] is array of command line arguments.
 * argv[0] = program name
 * argv[2] = number of runs
 * argv[3] = left bound
 * argv[4] = right bound
 * argv[5] = results file name
 * Output args:  none
 */
int main(int argc, char *argv[]) {
   int my_rank, comm_sz,local_n;
   int n;
   int runs;
   double a, b, h, local_a, local_b;
   double local_int, total_int;
   double true_value = 4003.72090015132682659291;
   double t_1 = 1.356825113296509;
   double start_time, finish_time, elapsed_time;
   double error = 0.5;
   double min_time = DBL_MAX;
   double s_u; //speedup
   double e_f; //efficiency
   /* Let the system do what it needs to start up MPI */
   MPI_Init(NULL, NULL);

   /* Get my process rank */
   MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);

   /* Find out how many processes are being used */
   MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);

   //if no arguments from command line then ask for arguments
   if(argc <=1){
      Get_input(my_rank, comm_sz, &a, &b, &n, &runs);
   }
   else{
      char *ptr;

      runs = atoi(argv[1]);
      n = strtod(argv[2], &ptr);
      a = strtod(argv[3], &ptr);
      b = strtod(argv[4], &ptr);
      MPI_Datatype input_mpi_t;

      Build_mpi_type(&a, &b, &n, &runs, &input_mpi_t);

      MPI_Bcast(&a, 1, input_mpi_t, 0, MPI_COMM_WORLD);

      MPI_Type_free(&input_mpi_t);
   }
   if(my_rank == 0){
      printf("Runs %d\n", runs);
   }
   
      while(runs >0){
      h = (b-a)/n;          /* h is the same for all processes */
      local_n = n/comm_sz;  /* So is the number of trapezoids  */

      //while(runs > 0){

         
         MPI_Barrier(MPI_COMM_WORLD);
         if(my_rank == 0){
            start_time = MPI_Wtime();
         }
         /* Length of each process' interval of
          * integration = local_n*h.  So my interval
          * starts at: */
         local_a = a + my_rank*local_n*h;
         local_b = local_a + local_n*h;
         local_int = Trap(local_a, local_b, local_n, h);

         /* Add up the integrals calculated by each process */
         MPI_Reduce(&local_int, &total_int, 1, MPI_DOUBLE, MPI_SUM, 0,
               MPI_COMM_WORLD);
         MPI_Barrier(MPI_COMM_WORLD);
         /* Print the result */
         if (my_rank == 0) {
            finish_time = MPI_Wtime();
            elapsed_time = finish_time - start_time;
            double tmp = true_value - total_int;
            error = 100*fabs(tmp/true_value);
            printf("Running on %d processors.\n", comm_sz);
            printf("Elapsed Time = %.6e\n", elapsed_time);
            printf("Truevalue = %.15lf\n", true_value);
            printf("With n = %d trapezoids, our estimate\n", n);
            printf("of the integral from %f to %f = %.15lf\n",
                a, b, total_int);
            printf("Absolute relative true error is %.6e percent\n", error);
            Output_times(&elapsed_time, argv[6]);
            if (elapsed_time < min_time)
            {
               min_time = elapsed_time;
            }
         }
         runs--;
      }
      if(my_rank == 0){
         s_u = t_1/min_time;
         e_f = s_u/t_1;
         Output_results(&min_time, argv[5], &s_u, &e_f);
      }
   /* Shut down MPI */
   MPI_Finalize();

   return 0;
} /*  main  */
/*------------------------------------------------------------------
 * Function:     Output_results
 * Purpose:      Outputs the resulting time to a file using append.
 * Input args:   m_t: pointer to the minimum time calculated.
 * Output args:  none.
 */
void Output_results(double* m_t, char* filename, double* s_u, double* e_f){
   FILE *fp;
   fp = fopen(filename, "a");
    if (fp!=NULL){
      fprintf(fp, "%.15lf, %.15lf, %.15lf\n", *m_t, *s_u, *e_f);
      fclose(fp);
   }
   else{
      printf("File not valid.");
   }
}

/*------------------------------------------------------------------
 * Function:     Output_times
 * Purpose:      Outputs the timing results from the integral
 * Input args:   thistime: double representing the time to be instered into file
                 filename: file to store the data.
 * Return val:   None
 */
void Output_times(double* thistime, char* filename){
    FILE *fp;
   fp = fopen(filename, "a");
    if (fp!=NULL){
      fprintf(fp, "%.15lf\n", *thistime);
      fclose(fp);
   }
   else{
      printf("File not valid.");
   }
}

/*------------------------------------------------------------------
 * Modified Source: Pacheco
 * Function:     Build_mpi_type
 * Purpose:      Build a derived datatype so that the three
 *               input values can be sent in a single message.
 * Input args:   a_p:  pointer to left endpoint
 *               b_p:  pointer to right endpoint
 *               n_p:  pointer to number of trapezoids
 * Output args:  input_mpi_t_p:  the new MPI datatype
 */
void Build_mpi_type(
      double*        a_p            /* in  */, 
      double*        b_p            /* in  */, 
      int*           n_p            /* in  */,
      int*           r_p                     ,
      MPI_Datatype*  input_mpi_t_p  /* out */) {

   int array_of_blocklengths[4] = {1, 1, 1, 1};
   MPI_Datatype array_of_types[4] = {MPI_DOUBLE, MPI_DOUBLE, MPI_INT, MPI_INT};
   MPI_Aint a_addr, b_addr, n_addr, r_addr;
   MPI_Aint array_of_displacements[4] = {0};

   MPI_Get_address(a_p, &a_addr);
   MPI_Get_address(b_p, &b_addr);
   MPI_Get_address(n_p, &n_addr);
   MPI_Get_address(r_p, &r_addr);
   array_of_displacements[1] = b_addr-a_addr; 
   array_of_displacements[2] = n_addr-a_addr;
   array_of_displacements[3] = r_addr-a_addr;  
   MPI_Type_create_struct(4, array_of_blocklengths, 
         array_of_displacements, array_of_types,
         input_mpi_t_p);
   MPI_Type_commit(input_mpi_t_p);
}  /* Build_mpi_type */

/*------------------------------------------------------------------
 * Function:     Get_input
 * Modified Source: Pacheco
 * Purpose:      Get the user input:  the left and right endpoints
 *               and the number of trapezoids
 * Input args:   my_rank:  process rank in MPI_COMM_WORLD
 *               comm_sz:  number of processes in MPI_COMM_WORLD
 * Output args:  a_p:  pointer to left endpoint               
 *               b_p:  pointer to right endpoint               
 *               n_p:  pointer to number of trapezoids
 */
void Get_input(
      int      my_rank  /* in  */, 
      int      comm_sz  /* in  */, 
      double*  a_p      /* out */, 
      double*  b_p      /* out */,
      int*     n_p      /* out */,
      int*     r_p              ) {
   MPI_Datatype input_mpi_t;

   Build_mpi_type(a_p, b_p, n_p, r_p, &input_mpi_t);
   *n_p = 2422000;
   if (my_rank == 0) {
      printf("How many runs?\n");
      scanf("%d", r_p);
      printf("What is n (Default=2422000)\n");
      scanf("%d", n_p);
      printf("Enter a, b\n");
      scanf("%lf %lf", a_p, b_p);
   } 
   MPI_Bcast(a_p, 1, input_mpi_t, 0, MPI_COMM_WORLD);

   MPI_Type_free(&input_mpi_t);
}  /* Get_input */

/*------------------------------------------------------------------
 * Function:     Trap
 * Source: Pacheco
 * Purpose:      Serial function for estimating a definite integral 
 *               using the trapezoidal rule
 * Input args:   left_endpt
 *               right_endpt
 *               trap_count 
 *               base_len
 * Return val:   Trapezoidal rule estimate of integral from
 *               left_endpt to right_endpt using trap_count
 *               trapezoids
 */
double Trap(
      double left_endpt  /* in */, 
      double right_endpt /* in */, 
      int    trap_count  /* in */, 
      double base_len    /* in */) {
   double estimate, x; 
   int i;

   estimate = (f(left_endpt) + f(right_endpt))/2.0;
   for (i = 1; i <= trap_count-1; i++) {
      x = left_endpt + i*base_len;
      estimate += f(x);
   }
   estimate = estimate*base_len;

   return estimate;
} /*  Trap  */


/*------------------------------------------------------------------
 * Function:    f
 * Modified Source: Pacheco
 * Purpose:     Compute value of function to be integrated
 * Input args:  x
 */
double f(double x /* in */) {
   return (cos(x/3.0) - 2*cos(x/5.0) + 5*sin(x/4.0) + 8.0);
} /* f */
