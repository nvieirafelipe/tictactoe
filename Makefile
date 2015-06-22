CFLAGS=-Wall -g
OUTPUT_DIR=bin/

all: grid.o rules.o players.o
	$(CC) $(CFLAGS) src/tictactoe.c -g -o $(OUTPUT_DIR)tictactoe $(OUTPUT_DIR)grid.o $(OUTPUT_DIR)rules.o $(OUTPUT_DIR)players.o ; \

grid.o: src/grid.h
	$(CC) $(CFLAGS) -c src/grid.c -o $(OUTPUT_DIR)grid.o

rules.o: src/rules.h
	$(CC) $(CFLAGS) -c src/rules.c -o $(OUTPUT_DIR)rules.o

players.o: src/players.h
	$(CC) $(CFLAGS) -c src/players.c -o $(OUTPUT_DIR)players.o

clean:
	rm -rf $(OUTPUT_DIR)tictactoe*
