#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "array_sort2.h"

int main()
{
    int vetor[]  = {2,1,4,3};

    int n= sizeof(vetor)/sizeof(vetor[0]);

    int *vec =vetor ;

    array_sort2(vec,n);
    

return 0;
}
