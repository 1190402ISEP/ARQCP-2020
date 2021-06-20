#include <stdio.h>
#include <limits.h>
#include <float.h>

void array_sort2(int *vec, int n)
{

	int aux, i, j;

	for (i = 0; i < n; i++)
	{
		for (j = 0; j < n - 1; j++)
		{
			if (*(vec+j) > *(vec+j+1))
			{
				aux = *(vec+j);
				*(vec+j) = *(vec+j+1);
				*(vec+j+1) = aux;
			}
		}
	}

	for (i = 0; i < n; i++)
	{
		printf("%d\n", vec[i]);
	}
}
