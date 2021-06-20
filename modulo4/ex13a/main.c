#include <stdio.h>
#include "activate_bits.h"

int main(void){

	int a = 0x55555555;
	int left = 24;
	int right = 7;

	int result = activate_bits(a, left, right);

	printf("%p\n", result);

	return 0;
}