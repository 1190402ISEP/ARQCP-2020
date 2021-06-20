#include <stdio.h>
#include "activate_bit.h"

int main(void){

	int number = 1;

	int* ptr = &number;

	int pos = 4;

	int result = activate_bit(ptr, pos);

	printf("result = %d\n", result);

    printf("\nnum=%p\n",number);

	return 0;
}