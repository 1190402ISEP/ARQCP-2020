#include <stdio.h>
#include "greater_date.h"

int main(void){

	unsigned int date1 = 12;
	unsigned int date2 = 9;

	unsigned int result = greater_date(date1, date2);

	printf("A maior data é %d\n", result);

	return 0;
}