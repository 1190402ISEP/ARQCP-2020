#include <stdio.h>
#include "keep_positives.h"

signed int* ptrvec;
int num = 3;

int main(void) {

	signed int array[] = {-1, 0, -2};

	ptrvec = array;

	keep_positives();
	int i;
	for (i = 0; i < num; i++)
	{
	printf("array[%d] = %d\n",i, array[i]);	
	}


	return 0;

}
