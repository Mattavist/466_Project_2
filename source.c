#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

// These definitions now handled by Makefile
// #define N 1024
// #define TRIALS 3

double getTime();
int allocMatrix(int***);
int populateSimpleMatrix(int**, int);
int printMatrix(int**);
int printAll(int**, int**, int**);
int denseMult(int**, int**, int**);

///////////////////////////////////////////////////////////////////////////////
// main
int main() {
	double startTime, endTime, avgTime = 0;

	// Declare and allocate memory for the matrices
	int **op1, **op2, **result;
	allocMatrix(&op1);
	allocMatrix(&op2);
	allocMatrix(&result);

	// Run the multiplication TRIALS times and average the runtime results
	for(int i=0; i<TRIALS; i++) {
		// Jam some numbers into the operands
		populateSimpleMatrix(op1, i);
		populateSimpleMatrix(op2, i+2);

		startTime = getTime();
		denseMult(op1, op2, result);
		avgTime += getTime() - startTime;
	}
	if (N < 16) printAll(op1, op2, result);  // Print small matrices only

	avgTime /= TRIALS;
	printf("N = %d, Average Dense Multiplication Runtime = %fs\n\n", N, avgTime);

	return 0;
}
///////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////
// FUNCTION getTime
// Returns time of day in seconds
double getTime() {
	struct timeval curTime;
	struct timezone zone;

	gettimeofday(&curTime, &zone);
	return curTime.tv_sec + (curTime.tv_usec/1000000.0);
}


///////////////////////////////////////////////////////////////////////////////
// FUNCTION allocMatrix
// Allocates memory for an NxN matrix
int allocMatrix(int ***matrix) {	
	*matrix = malloc(sizeof(int)*N);
	for(int i=0; i<N; i++)
		(*matrix)[i] = malloc(sizeof(int)*N);

	return 1;
}


///////////////////////////////////////////////////////////////////////////////
// FUNCTION populateSimpleMatrix
// Populates an NxN matrix with some numbers
int populateSimpleMatrix(int **matrix, int offset) {
	for(int i=0; i<N; i++)
		for (int j=0; j<N; j++)
			matrix[i][j] = offset + j + i*N;

	return 1;
}


///////////////////////////////////////////////////////////////////////////////
// FUNCTION printMatrix
// Prints the matrix to the console
int printMatrix(int **matrix) {
	for(int i=0; i<N; i++) {
		for (int j=0; j<N; j++)
			printf("%3d ", matrix[i][j]);
		printf("\n");
	}
	printf("\n");

	return 1;
}


///////////////////////////////////////////////////////////////////////////////
// FUNCTION printAll
// Prints op1, op2, and the result
int printAll(int **op1, int **op2, int **result) {
	printf("Operator 1\n");
	printMatrix(op1);

	printf("Operator 2\n");
	printMatrix(op2);

	printf("Result\n");
	printMatrix(result);

	return 1;
}


///////////////////////////////////////////////////////////////////////////////
// FUNCTION denseMult
// Multiplies op1 by op2 and stores the result in result
int denseMult(int **op1, int **op2, int **result) {
	int element;
	for(int i=0; i<N; i++)
		for(int j=0; j<N; j++) {
			element = 0;
			for(int k=0; k<N; k++) {
				element += op1[i][k] * op2[k][j];
			}
			result[i][j] = element;
		}

	return 1;
}