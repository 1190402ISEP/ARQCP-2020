#include <stdio.h>
#include <limits.h>
#include <float.h>

int fractional_part(char *s);
{
int i=0;
int number=0;

   while(s[i] != '.'){
   number =number*10 +atoi(s[i]);
   i++;
   }
   return number;
}
