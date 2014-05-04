#include <stdio.h>
#include <math.h>

int main(void){
	double true_value = 4003.72090015132682659291;
	double approx_value = 4003.72090015132682;
	double true_error = true_value - approx_value;
	printf("truevalue = %.20lf\n", true_value);
	printf("approx_value = %.20lf\n", approx_value);
	printf("true error = %.20lf\n", true_error);
	return 0;
}