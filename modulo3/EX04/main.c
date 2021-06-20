#include <stdio.h>
#include "vec_add_one.h"

int *ptrvec,num;

int main(void){

	int vec[]={0,1,2,3,4,5,6,7,8,9};
	num=10;
	ptrvec=vec;

	vec_add_one();

	int i;
	for	(i=0;i<num;i++){
		printf("\nNUMBER(%d): %d",i,vec[i]);
	}
printf("\n");




	return 0;
}
