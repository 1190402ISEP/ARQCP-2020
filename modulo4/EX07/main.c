#include <stdio.h>
#include "count_even.h"


int main(void) {
	short vetor[]={1,2,3,4,5};
	short *vec=vetor;
    int n=5;
	int res=count_even(vec, n);
	printf("%Total de Nºs Pares: i\n",res);

	return 0;
}