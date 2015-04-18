SRC=sort.cpp
CXX=mpic++
CXX_FLAGS=-std=c++1y -fopenmp -Wall -O2
CXX_FLAGS_DEBUG=-std=c++1y -g -fopenmp -Wall
OUT=sort


all: $(SRC) 
	$(CXX) $(SRC) -o $(OUT) $(CXX_FLAGS) 

debug: $(SRC) 
	$(CXX) $(SRC) -o $(OUT) $(CXX_FLAGS_DEBUG)

clean:
	rm -rf $(OUT)
