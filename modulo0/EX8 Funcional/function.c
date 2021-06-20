#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <float.h>

void transforma_numeros(char *a, int aux)
{
    int i, n = 0, m = 0, verifica = 0, valido = 0;

    for (i = 0; i < aux; i++)
    {
        if (a[i] == '.')
        {
            verifica++;
        }

        if (a[i + 1] == '\0' && verifica == 1)
        {
            valido++;
        }

        if (verifica == 0)
        {
            n = n * 10 + a[i] - '0';
        }
        else if (verifica == 1 && valido == 0)
        {
            m = m * 10 + a[i + 1] - '0';
        }
    }

    if (verifica > 1)
    {
        printf("Valor inválido!\n");
    }
    else
    {
        printf("Numero inteiro: %d\nNumero decimal: %d\n", n, m);
    }
}
