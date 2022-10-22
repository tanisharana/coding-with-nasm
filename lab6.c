#include <stdio.h>
#include <inttypes.h>


int64_t matAdd(int64_t[][3] ,int64_t[][3] ,uint64_t);
int64_t matMul(int64_t[][3] ,int64_t[][3] , int64_t[][3],uint64_t);



int main()
{		
	long int A[3][3]={{1,1,1},{2,2,2},{3,3,3}};
	long int B[3][3]={{1,1,1},{2,2,2},{3,3,3}};
    long int C[3][3];
    long int n = 3;
	// matAdd(A,B,n*n);
    
    
    matMul(A,B,C,n); //rdi,rsi,rdx,rcx

	for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            printf("%ld ", C[i][j]);
        }
        printf("\n");
    }

	return 0;
}
