#include <stdio.h>
#include <limits.h>
#include <float.h>

void array_sort1(int *vec, int n){

     int j=1;
     int key;
     int i;

        for (j=1; j < n; j++)
        {
          key = vec[j];
          for (i = j - 1; (i >= 0) && (vec[i] > key); i--)
          {
             vec[i + 1] = vec[i];
           }
            vec[i + 1] = key;

}

}
