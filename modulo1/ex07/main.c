#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "array_sort1.h"

int main()
{
    int vetor[]  = {1,2,3,4,5,6,7,8,9};

    int n= sizeof(vetor)/sizeof(vetor[0]);

    int *vec =vetor ;

    array_sort1(vec,n);
    
    int i;
        for( i=0;i<n;i++){
             printf("%d\n",vetor[i]);
        }

return 0;
}
