#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "function.h"

int main()
{
  char a[100];
  int n;
  printf("Digite um nº:\n");
  scanf("%s", a);

  n = transformar(a);
  
  printf("String  = %s\nInt = %d\n", a, n);
  return 0;
}
