#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "function.h"

int main()
{
  char a[100];
  char b[100];
  int n;
  int m;
  printf("Digite um nº:\n");
  scanf("%s", a);
  printf("Digite outro nº:\n");
  scanf("%s", b);
  n = transformar(a);
  m = transformar(b);
  
  printf("Média  = %d\n", ((n+m)/2));
  return 0;
}
