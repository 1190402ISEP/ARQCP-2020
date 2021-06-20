# A simple Makefile
ex8: function.o main.o
	gcc function.o main.o -o ex8
function.o: function.c
	gcc -g -Wall -c function.c -o function.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o ex8
run: prog_avg
	./ex8
