CFLAGS = -Wall
#target exe
myexe: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o

#rebuild if files change
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp

myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp

#type make clean to remove and update all objec files
clean:
	rm -f *.o myexe.exe
