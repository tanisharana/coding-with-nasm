//Linear Search
#include<stdio.h>
#include<inttypes.h>
// 1st-arg:array name, 2nd-arg:array size, 3rd-arg:key
int64_t linSearch(int64_t  [], uint64_t, int64_t);// 

int main(){
        long int A[ ]={10, 20, 90, 2250, 60, 12340, 77, 99, 12, -4, 0, 56};
	long int key, pos;
	for(long int i=0;i<12;i++)
		printf("\t %ld",A[i]);
	printf("\n Enter the key you want to search:");
	scanf("%ld",&key);
	pos=linSearch(A, 12, key);
	printf("\n Position of key( %ld ) is %ld \n",key, pos);
	return 0;
}
