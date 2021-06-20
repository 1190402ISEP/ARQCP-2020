#include <stdio.h>
#include <limits.h>
#include <float.h>
#include <math.h>

int integer_part(char *s)
{
int i=0;
int number=0;
int length = sizeof(s)/sizeof(s[0]);
int potencia=0;
   while(s[i] != '.'){
   number =number +atoi(s[i])*pow(10,potencia);
   i--;
   }
   return number;

}
