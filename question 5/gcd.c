
#include <stdio.h>
#include <inttypes.h>


// int64_t lcm(int64_t[], uint64_t);

int64_t gcd(int64_t[], uint64_t);


int main()
{
	// long int n;
	long int A[]= {2,4,6,20,6,8,12,2,4,6};
	
	printf("\n the gcd is %ld \n", gcd(A, 10));	

	return 0;
}