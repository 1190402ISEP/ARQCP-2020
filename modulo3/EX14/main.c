  
#include <stdio.h>
#include "asm.h"


short int *ptrvec;
int num;
short int x;

int main(void){
	
	short int short_array[]={120,10,10,10,10,10,10,10,10,110};
	num=10;
	ptrvec=short_array;

	int res1 = vec_diff();

	printf("%d\n", res1);

	return 0;
}