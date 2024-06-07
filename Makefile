# Makefile for compiling big.c into abc.exe
CC = gcc
CFLAGS = -Wall -Wextra
SRC = big.c
OBJ = $(SRC:.c=.o)
EXECUTABLE = abc.exe

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(EXECUTABLE)

