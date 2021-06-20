ex13c: activate_bit.o activate_invert_bits.o main.o
		gcc activate_bit.o activate_invert_bits.o main.o -o ex13c

activate_bit.o: activate_bits.s
		gcc -g -Wall -c activate_bits.s -o activate_bits.o

activate_invert_bits.o: activate_invert_bits.s
		gcc -g -Wall -c activate_invert_bits.s -o activate_invert_bits.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex13c

run: ex13c
		./ex13c