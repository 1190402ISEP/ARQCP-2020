#include <stdio.h>
#include "ex12c.h"

int main(int ac, char** av){
	int num=0;
	int * ptr=&num;
	int pos=5;

	printf("numBeforeBitsActivation=>%d\n", *(ptr));
	activate_2bits(ptr, pos);
	printf("numWithBitsActivated(pos:%d)=>%d\n", pos, *(ptr));

	return 0;
}