#include <stdio.h>

int activate_bit(int *ptr, int pos) {

	if(pos < 0 || pos > 31) {
		return 0;
	}

	int binaryNumber = *(ptr);

    int mask = 0;
	mask = 1 << pos;

	*(ptr) = binaryNumber | mask;

	if(*(ptr) == binaryNumber) {
		return 0;
	} else {
	    return 1;
	}
}