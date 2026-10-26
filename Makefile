
CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c11 -g
TARGET = autocomplete

SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)

.PHONY: all run clean rebuild

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)

src/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJ) $(TARGET)

rebuild: clean all
