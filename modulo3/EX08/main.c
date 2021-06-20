#include <stdio.h>
#include "asm.h"

int even;
int num;
int* ptrvec;


int main(void){
	
	even = 4;
	num = 5;
	int vec[] = {1, 2, 3, 4, 5};

	ptrvec = vec;

	int result_test_even = test_even();

	//int result_vec_sum_even = vec_sum_even();

	printf("result_test_even = %d\n", result_test_even);
	//printf("result_vec_sum_even = %d\n", result_vec_sum_even);


	return 0;
}
