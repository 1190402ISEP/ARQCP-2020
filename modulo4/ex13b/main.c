#include <stdio.h>
#include "activate_bits.h"

int main(void){

	int left = 0;
	int right = 31;
	int a = 0;

	int result = activate_bits(a, left, right);

	printf("%d\n", result);

	return 0;
}