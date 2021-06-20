#include <stdio.h>
#include "vec_greater20.h"


long int *ptrvec;
int num;

int main(void){

	long long long_array[]={1,1,1,1,1,1,1,1,20,1};
	num=10;
	ptrvec=(long int*)long_array;

	int res=vec_greater20();

	printf("%d\n", res);

	return 0;
}
