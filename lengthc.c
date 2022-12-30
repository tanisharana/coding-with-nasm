#include<stdio.h>
#include<inttypes.h>
int64_t length(char *);
int main()
{	
	char str[100];
	int64_t len;
	printf("\n Enter String: ");
	scanf("%s", str);
	len = length(str);
	printf("\n Length: %ld\n", len);
}

//xchg: exchange
