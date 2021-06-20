#include <stdio.h>
#include "count_bits_zero.h"


int main(void) {
	int x[]={-1,-1,0,-1,-1,-1};
	int num=6;
	int result=vec_count_bits_zero(x, num);
	printf("%d\n", result);
	return 0;
}
