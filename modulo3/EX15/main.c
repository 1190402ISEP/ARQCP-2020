 #include <stdio.h>
#include "sum_first_byte.h"


int *ptrvec;
int num;


int main(void){
	
	int int_array[]={2000};
	num=1;
	ptrvec=int_array;


 	printf("\n %d \n",sum_first_byte());

	int i;
	for(i=0; i<num; i++){
		printf("%d\n", int_array[i]);
	}


	return 0;
}