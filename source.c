#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

double getTime();


int main() {
	printf("\nTime: %f\n", getTime());
	return 0;
}


///////////////////////////////////////////////////////////////////////////////
// FUNCTION getTime
// Returns time of day in seconds
double getTime() {
	struct timeval curTime;
	struct timezone zone;

	gettimeofday(&curTime, &zone);
	return curTime.tv_sec + (curTime.tv_usec/1000000.0);
}