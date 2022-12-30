#include<stdio.h>
#include<inttypes.h>
void reversen(char*,int64_t);
int main(){
    char a[50];
    printf("Enter string: ");
    gets(a);
    int64_t count = 0;
    for(int i = 0;a[i]!='\0';i++)
    {
        count++;
    }
    reversen(a,count);
    printf("Reversed string: %s\n",a);
}
