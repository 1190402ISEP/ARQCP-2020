#include <stdio.h>
#include <limits.h>
#include <float.h>

int odd_sum(int *p){

int i=0;
int tamanho=*p;
*p++;
int soma=0;
    for(i;i<tamanho;i++,*p++){
    soma= soma + *p;
    }

return soma;

}
