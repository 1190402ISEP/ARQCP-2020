#include <stdio.h>
#include "count_bits_zero.h"

int main(void) {
	int x=0xf0f0f0f0;
	int result=count_bits_zero(x);
	printf("%d\n", result);
	return 0;
}
