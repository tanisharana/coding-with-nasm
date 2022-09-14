
#include <stdio.h>
#include <inttypes.h>


int64_t even(int64_t[], uint64_t);

int64_t odd(int64_t[], uint64_t);

int64_t prime(int64_t[],uint64_t);

// int64_t gcd(int64_t[], uint64_t);
// int64_t gcd1(uint64_t,uint64_t);


int main()
{
	// long int n;
	long int A[]= {5,3,6,3,2,1,4};

	printf("\n the number of even numbers are %ld \n", even(A, 7));
	printf("\n the number of odd numbers are  %ld \n", odd(A, 7));
	printf("\n the number of prime numbers are %ld \n", prime(A, 7));
	// printf("\n the gcd is %ld \n", gcd(A, 10));
	// printf("\n the gcd is %ld \n", gcd1(8, 4));


	return 0;
}

