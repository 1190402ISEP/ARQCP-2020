exec: push.o pop.o main.o
		gcc push.o pop.o main.o -o exec

push.o: push.c
		gcc -g -Wall -c push.c -o push.o

pop.o: pop.c
		gcc -g -Wall -c pop.c -o pop.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o exec

run: exec
		./exec
