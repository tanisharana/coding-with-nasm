#include <stdio.h>
#include <inttypes.h>


int64_t fact(uint64_t);
int64_t expres(uint64_t);
int64_t sum(int64_t[],uint64_t);
int64_t min(int64_t[],uint64_t);

int main()
{		
	long int A[]={4,5,2,1,5,6};
	printf("\n the value of factorial is %ld \n", fact(6));
	printf("\n the value of the expression is %ld \n", expres(6));
	printf("\n the value of the sum is %ld \n", sum(A,6));  
	printf("\n minimum value in the array is %ld \n", min(A,6));


	return 0;
}