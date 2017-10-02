all: hw2

hw2: mainTerm.o
ifeq (${OS}, Windows_NT)
	g++ -o hw2 mainTerm.o -lgtest
else
	g++ -o hw2 mainTerm.o -lgtest -lpthread
endif
	
mainTerm.o: mainTerm.cpp Number.h Var.h Atom.h Term.h utTerm.h
	g++ -std=gnu++0x -c mainTerm.cpp

clean:	
ifeq (${OS}, Windows_NT)
	del *.o *.exe
else
	rm -f *.o exp
endif