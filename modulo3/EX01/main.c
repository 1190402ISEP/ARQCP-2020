#include <stdio.h>
#include "zero_count.h"

char *ptr1;

int main(void){

	char str[] = " ";
	ptr1=str;
	int res=zero_count();
	printf("%d\n", res);
	return 0;
}
