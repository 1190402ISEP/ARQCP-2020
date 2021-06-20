#include <stdio.h>
#include "greatest.h"


int main(void) {

	int a=3;
	int b=9;
	int c=1;

	int res=greatest( a, b, c);

	printf("The greatest of the number %d, %d, %d is %d\n", a,b,c,res);

	return 0;
}