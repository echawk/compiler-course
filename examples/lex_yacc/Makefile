.POSIX:

.PHONY: clean

CC=gcc
YACC=bison
LEX=lex
CFLAGS=-Wall

SRC_BASE=lang

all: $(SRC_BASE) parser.png

$(SRC_BASE): lex.yy.c
	$(CC) $(CFLAGS) -lfl lex.yy.c $(SRC_BASE).tab.c -o $@

lex.yy.c: y.tab.c $(SRC_BASE).l
	$(LEX) $(SRC_BASE).l

lang.gv: lang.y
	bison --graph $<

parser.png: lang.gv
	dot -Tpng < $< > $@

y.tab.c: lang.y
	$(YACC) -d $(SRC_BASE).y -o $(SRC_BASE).tab.c
	bison $(SRC_BASE).y --report=all

clean:
	rm -- $(SRC_BASE).tab.c $(SRC_BASE).tab.h lex.yy.c $(SRC_BASE).output $(SRC_BASE) lang.gv parser.png
