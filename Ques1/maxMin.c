//Program to find the maximum and the minimum elements in an array
#include<stdio.h>
#include<inttypes.h>

int64_t maxN(int64_t  [], uint64_t);
int64_t minN(int64_t  [], uint64_t);

int main(){
        long int A[ ]={10, 20, 90, 2250, 60, 12340, 77, 99, 12, -4, 0, 56};
	printf("\n Maximum element is %ld \n", maxN(A,12));
	printf("\n Minimum element is %ld \n", minN(A,12));
	return 0;
}
