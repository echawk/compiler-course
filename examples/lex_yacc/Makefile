.POSIX:

.PHONY: clean

CC=gcc

SRC_BASE=lang

$(SRC_BASE): lex.yy.c
	$(CC) -lfl lex.yy.c y.tab.c -o $@

lex.yy.c: y.tab.c
	lex $(SRC_BASE).l

y.tab.c: lang.y
	bison -d $(SRC_BASE).y
	bison $(SRC_BASE).y --report=all

clean:
	rm y.tab.c y.tab.h lex.yy.c $(SRC_BASE)
