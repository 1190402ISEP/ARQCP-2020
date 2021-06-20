#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <float.h>
#include "sort_without_reps.h"

int main()
{
  int vetor[] = {0};

  int calculo = 0;
  int n = sizeof(vetor) / sizeof(vetor[0]);
  int vetor2[] = {0};
  int *src = vetor;
  int *dest = vetor2;

  calculo = sort_without_reps(src, n, dest);
  printf("Qtd de nºs não repetidos: %d\n", calculo);

  int i;
  for (i = 0; i < n; i++)
  {
    printf("%d\n", dest[i]);
  }

  return 0;
}
