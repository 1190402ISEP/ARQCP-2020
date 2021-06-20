#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "ex3.h"

int main()
{
	Student s;
	Student *ptr;

	ptr=&s;

    char nome []= "Name";
    char *name=nome;

    char morada[]="Address";
    char *address=morada;

	fill_student(ptr, 28, 0, name,address );

    printf("%d\n", ptr->age);
    printf("%d\n", ptr->number);
    printf("%s\n", ptr->name);
    printf("%s\n", ptr->address);

return 0;

}
