#include<stdio.h>
#include<inttypes.h>
#include<string.h>
#include<stdlib.h>
// int64_t selcsort(int64_t[], int64_t);
void valueString(char*,int64_t);

int main(){
    int64_t n;
    printf("Number of strings: ");
    scanf("%ld",&n);

    // char strs[n][50];

    // for(int i = 0;i<n;i++)
    // {
    //     scanf("%s",strs[i]);
    // }
    printf("Enter the strings: ");
    char string[n*50];
    for(int i = 0;i<n;i++)
    {
        char strs[50];
        scanf("%s",strs);
        int j;
        for(j = 0;strs[j]!='\0';j++)
        {
            string[(i*50)+j] = strs[j];
            // printf("%d-%d ",i,j);
        }
        string[i*50+j] = '\0';
    }    

    valueString(string,n);
    printf("Lexicographic order: ");
    for(int i = 0;i<n;i++)
    {
        for(int j = 0;string[(i*50)+j]!='\0';j++)
        {
            printf("%c",string[i*50+j]);
        }
        printf("\n");
    }
    // char a[10];
    // scanf("%s",a);
    // valueString(a);
    // printf("%s\n",a);    
}
