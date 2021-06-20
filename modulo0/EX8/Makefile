# A simple Makefile
ex8: function_int.o function_frac.o main.o
	gcc function.o function_frac.o main.o -o ex8
function_int.o: function_int.c
	gcc -g -Wall -c function_int.c -o function_int.o
function_frac.o: function_frac.c
	gcc -g -Wall -c function_frac.c -o function_frac.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o ex8
run: prog_avg
	./ex8
