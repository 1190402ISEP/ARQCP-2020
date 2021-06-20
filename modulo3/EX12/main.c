#include <stdio.h>
#include "vec_zero.h"


short int *ptrvec;
int num;

int main(void){

	short int long_array[]={100, 20, 200,200};
	num=4;
	ptrvec=long_array;

	int res=vec_zero();

	printf("%d\n", res);

	return 0;
}
