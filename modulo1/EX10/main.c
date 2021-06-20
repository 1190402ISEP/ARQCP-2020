#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "odd_sum.h"

int main()
{
    int vetor[]  = {10,1,2,3,4,5,6,7,8,9};
    int *p =vetor ;

        int sum=odd_sum(p);
      printf("%d\n",sum);
return 0;
}
