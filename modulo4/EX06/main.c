#include <stdio.h>
#include "test_equal.h"


int main(void) {
	char c[] ="ola\n";
	char d[] = "ola\n";
    char *a=c;
    char *b=d;

	int res=test_equal(a, b);
	printf("%i\n",res);

	return 0;
}