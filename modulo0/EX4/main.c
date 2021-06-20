#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "function.h"

int main()
{
  int n;
  printf("Digite o nº de elementos a adicionar:\n");
  scanf("%d", &n);
  printf("\nInsira os Elementos:\n");
  int a[n];
  int i;
  for (i = 0; i < n; i++)
  {
    scanf("%d", &a[i]);
    printf("\n");
  }

  printf("\nInsira o Nº a Pesquisar:\n");
  int value;
  scanf("%d", &value);
  printf("%d", count(a, n, value));
  printf("\n");
  return 0;
}
