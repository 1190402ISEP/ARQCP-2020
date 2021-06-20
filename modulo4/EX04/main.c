#include <stdio.h>
#include "sum_smaller.h"


int main(void) {

	int num1=9;
	int num2=3;
	int num3=0;
	int *smaller=&num3;

    int res=sum_smaller(num1,num2, smaller);
	printf("Addiction of %d and %d, is %d and the number in smaller is %d\n", num1,num2,res, *smaller);
	return 0;
}