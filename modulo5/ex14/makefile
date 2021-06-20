exec: new_matrix.o add_matrixes.o main.o
		gcc new_matrix.o add_matrixes.o main.o -o exec

new_matrix.o: new_matrix.c
		gcc -g -Wall -c new_matrix.c -o new_matrix.o

add_matrixes.o: add_matrixes.c
		gcc -g -Wall -c add_matrixes.c -o add_matrixes.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o exec

run: exec
		./exec
