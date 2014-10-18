GUISE : StringTokenizer.o GUISE.cpp disjointSet.h graphGraphlet.h  random_walk.h random.o 
	g++ -O3 -g -o GUISE  StringTokenizer.o random.o -I $(BOOST_PATH) GUISE.cpp 

StringTokenizer.o : StringTokenizer.cpp StringTokenizer.h
	g++ -O3 -c -g StringTokenizer.cpp StringTokenizer.h
	
random.o: random.h  random.cpp
	g++ -O3 -g -c -I $(BOOST_PATH) random.cpp


clean:
	rm -f *.o
	rm -f *.out
	rm -f *.gch
	rm -rf *.dSYM
	rm -f GUISE
