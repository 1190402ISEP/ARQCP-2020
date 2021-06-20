#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "function.h"

int main()
{
  int a[30];
  int i;
  for (i = 0; i < 30; i++)
  {
    scanf("%d", &a[i]);
    printf("\n");
  }

  fill_array(a);

  return 0;
}
