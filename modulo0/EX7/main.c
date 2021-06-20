#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "function.h"

int main()
{
  char a[200];
  int n = 0;
  printf("Digite uma frase:\n");
  scanf("%[^\n]a", a);
  n = contapalavras(a);
  
  printf("Nº de palavras = %d\n", n + 1);
  return 0;
}
