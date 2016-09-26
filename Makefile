binary: main.o libhello.a libbye.a
	gcc -o binary main.o -L. -lhello -lbye

main.o:	main.c
	gcc -c main.c

libhello.a: h_world.o
	ar cr libhello.a h_world.o

libbye.a: g_world.o
	ar cr libbye.a g_world.o

h_world.o: h_world.c
	gcc -c h_world.c

g_world.o: g_world.c
	gcc -c g_world.c

clean:
	rm -f *.o *.a binary

libs: h_world.o g_world.o
	ar cr libhello.a h_world.o
	ar cr libbye.a g_world.o
	