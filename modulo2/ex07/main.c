#include <stdio.h>

#include "crossSumBytes.h"
short s1=0x4455,s2=0x5544;


int main(void) {
		printf("cross_sum_bytes= %hd\n",crossSumBytes());
		printf("cross_sum_bytes= 0x%x\n",crossSumBytes());
		


	return 0;
}

