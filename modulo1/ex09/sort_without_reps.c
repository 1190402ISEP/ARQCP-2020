#include <stdio.h>
#include <limits.h>
#include <float.h>

int sort_without_reps(int *src, int n, int *dest)
{

   int j = 1;
   int key;
   int i;

   for (j = 1; j < n; j++)
   {
      key = src[j];
      for (i = j - 1; (i >= 0) && (src[i] > key); i--)
      {
         src[i + 1] = src[i];
      }
      src[i + 1] = key;
   }
   int p = 0;
   dest[0] = src[0];

   int registo = 1;

   for (p = 1; p < n; p++)
   {
      if (src[p] != src[p - 1])
      {
         dest[registo] = src[p];
         registo++;
      }
   }
   if (n == 1 && src[0] == 0)
   {
      printf("ola\n");
      dest[0] = src[0];
      return 0;
   }
   else
   {
      return registo;
   }
}
