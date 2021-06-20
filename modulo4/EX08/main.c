#include <stdio.h>
#include "calc.h"

int main(void) {

	int a = 3;
	int array[]={1};
	int* b = array;
	int c = -4;

	int result = calc(a, b, c);

	printf("result = %d\n", result);

	return 0;

}