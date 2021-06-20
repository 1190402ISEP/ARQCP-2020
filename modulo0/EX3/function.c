#include <stdio.h>
#include <limits.h>
#include <float.h>
const int VALOR = 30;

void fill_array(int *a)
{
    int soma=0;
    int i;
    for ( i = 0; i < VALOR; i++)
    {
        soma=soma+a[i];
    }
    printf("MÉDIA:");
    printf("%d",soma/VALOR);
    printf("\n");
    
}
