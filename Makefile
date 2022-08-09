# the compiler: gcc for C program, define as g++ for C++ 
CC=gcc

# compiler flags:
# -g 	adds debugging information to the executable file
# -Wall	turns on most, but not all, compiler warnings

CFLAGS=-g -Wall

SRC=src
TARGET=target
SERVER=server
CLIENT=client

all: $(SERVER) $(CLIENT)

$(SERVER): $(SRC)/*$(SERVER).c
	$(CC) $(CFLAGS) -o $(TARGET)/$@ $^

$(CLIENT): $(SRC)/*$(CLIENT).c
	$(CC) $(CFLAGS) -o $(TARGET)/$@ $^

clean:
	$(RM) -r $(TARGET)/*

