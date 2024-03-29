CXX          := g++
CXX_FLAGS := -Wall -Wextra -Wno-unused-parameter -std=c++17 -ggdb

BIN := bin
EXECUTABLE    := main
MKDIR_P = mkdir 

all: compile  link

LIB :=lib
INCLUDE :=include

LIBRARIES    := -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

directories: ${BIN}

${BIN}:
    ${MKDIR_P} ${BIN}

run: clean all
    clear
    ./$(BIN)/$(EXECUTABLE)

compile:

# TODO: Find a method to add all the objects in the bin folder
    
    g++ -Isrc/include -c main.cpp 
    

link:
    $(CXX) main.o -Isrc/include -o main -Lsrc/lib $(LIBRARIES)

clean:
    -rm $(BIN)/*