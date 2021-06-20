#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "function_int.h"
#include "function_frac.h"

int main()
{
char x[20];
  scanf("%[^\n]a", a);
  int x_int = integer_part(x);
  int x_frac = fractional_part(x);
  println("Parte Inteira: %d\nParte Decimal: %d",x_int,x_frac);
  return 0;
}
