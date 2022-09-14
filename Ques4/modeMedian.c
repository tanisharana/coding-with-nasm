// Sum of all elements in an array
#include <stdio.h>
#include <inttypes.h>

int64_t mode(int64_t[], uint64_t);

int64_t median(int64_t[], uint64_t);

int main()
{
	// long int n;
	long int A[]= {5,4,7,6,2,2,1,3};
	// for (long int i = 0; i < n; i++)
	// {
	// 	scanf("%d", &A[i]);
	// }
    // mode(A,8);
    // for (int i = 0; i < 8; i++)
	// {
	// 	printf("%ld",A[i]);
	// }
	// printf("\n");
	
	printf("\n The Mode is %ld \n", mode(A, 8));
	printf("\n The Median is %ld \n", median(A, 8));

	return 0;
}
