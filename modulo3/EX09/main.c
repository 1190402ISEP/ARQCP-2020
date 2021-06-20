#include <stdio.h>
#include "vec_search.h"

short *ptrvec;
int num;
short x;


int main(void){

	x=100;
	short short_array[]={1,1,1,1,1,1,1,1,10};
	ptrvec=short_array;
	num=9;

	short *xptr=vec_search();
	printf("Expected: %p\n",&short_array[8]);
	printf("Obtained: %p\n", xptr);

	return 0;
	}
