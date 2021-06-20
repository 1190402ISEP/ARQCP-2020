#include <stdio.h>
#include <limits.h>
#include <float.h>

int sum_even(int *p,int sum){


int i=0;
int soma=0;
    for (i=0;i<sum;i++){
		if(*p % 2 ==0){
			soma = soma + *p;
		}

        p++;
    }
    return soma;
}
