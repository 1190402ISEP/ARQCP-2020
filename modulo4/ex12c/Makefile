ex12c: activate_bit.o activate_bit2.o main.o
		gcc activate_bit.o activate_bit2.o main.o -o ex12c

activate_bit.o: activate_bit.s
		gcc -g -Wall -c activate_bit.s -o activate_bit.o

activate_bit2.o: activate_bit2.s
		gcc -g -Wall -c activate_bit2.s -o activate_bit2.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex12c

run: ex12c
		./ex12c