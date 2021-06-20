#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "sum_even.h"

int main()
{

int vec1[]={1,1,1,1,18,1,1,1,2};
int n=9;
int *pointer1=vec1;
int soma = sum_even(pointer1,n);
printf("%d\n", soma);
return 0;
}
