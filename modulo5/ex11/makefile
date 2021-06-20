exec: new_matrix.o main.o
		gcc new_matrix.o main.o -o exec

new_matrix.o: new_matrix.c
		gcc -g -Wall -c new_matrix.c -o new_matrix.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o exec

run: exec
		./exec
