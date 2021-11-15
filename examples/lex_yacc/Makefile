.POSIX:

.PHONY: clean

CC=gcc
CFLAGS=-Wall

SRC_BASE=lang

all: $(SRC_BASE)

$(SRC_BASE): lex.yy.c
	$(CC) $(CFLAGS) -lfl lex.yy.c $(SRC_BASE).tab.c -o $@

lex.yy.c: y.tab.c
	lex $(SRC_BASE).l

y.tab.c: lang.y
	yacc -d $(SRC_BASE).y -o $(SRC_BASE).tab.c
	bison $(SRC_BASE).y --report=all

clean:
	rm $(SRC_BASE).tab.c $(SRC_BASE).tab.h lex.yy.c $(SRC_BASE).output $(SRC_BASE)
