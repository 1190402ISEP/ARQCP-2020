#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <float.h>
#include "function.h"

int main()
{
  char a[200];
  printf("Digite um numero com casas decimais:\n");
  scanf("%s", a);
  int aux = (sizeof(a) / sizeof(a[0])) - 1;
  transforma_numeros(a, aux);
  return 0;
}