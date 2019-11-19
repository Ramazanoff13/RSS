binary: main.o libworld.a
		g++ -o binary main.o -L. -lworld

main.o: main.c
		g++ -c main.c

libworld.a: h_world.o g_world.o r_world.o
		ar cr libworld.a h_world.o g_world.o r_world.o

h_world.o: h_world.c
		g++ -c h_world.c

g_world.o: g_world.c
		g++ -c g_world.c

r_world.o: r_world.c
		g++ -c r_world.c

clean:
		rm -f *.o *.a binary
