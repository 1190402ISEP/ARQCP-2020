exec: return_unionB_b.o main.o
		gcc new_matrix.o main.o -o exec

return_unionB_b.o: return_unionB_b.c
		gcc -g -Wall -c return_unionB_b.c -o return_unionB_b.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o exec

run: exec
		./exec
