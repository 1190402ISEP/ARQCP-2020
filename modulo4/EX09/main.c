#include <stdio.h>
#include "calculate.h"

void print_result(char op, int o1, int o2, int res) {
	printf("%d %c %d = %d\n", o1, op, o2, res);
}


int main(void) {

	int result = calculate(3, 5);

	printf("result = %d\n", result);

	return 0;

}