#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <time.h>

void foo(double [] , double [], double [], int64_t);

void gemm2(double *a, double *b, double *c, long int n) {
 for(long int i=0; i<n; i++) {
 for(long int k=0; k<n; k++) {
 foo(&a[i*n + k], &b[k*n], &c[i*n], n+1088);
 }
 }
}

int main()
{
    clock_t t;
    t = clock();
    int n = 2048*2048;
    double* arr = (double*)malloc(sizeof(double)*n);
    double* brr = (double*)malloc(sizeof(double)*n);
    for (int i = 0; i < n; i++)
    {
      arr[i] = 1;
    }
    gemm2(arr, arr, brr, 2048);
    for (int i = 0; i < 2048; i++)
    {
      printf("%.1lf ", brr[i*2048+2047]);
    }
    printf("\n");
    t = clock() - t;
    double time_taken = ((double)t)/CLOCKS_PER_SEC;
    printf("gemm2() with SMID parallelism took %f seconds to execute \n", time_taken);
  return 0;
}