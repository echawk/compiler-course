%{
void yyerror(char *s);
#include <stdio.h>
#include <stdlib.h>
int yylex();
%}

%union {int num; char* id;}

%token IF LET IDENT INTLIT
%token LPAREN RPAREN LBRACE RBRACE SEMI
%token ASSIGN LT GT  EQ AND OR
%token ADD SUB MUL DIV

/* Operator precedence (lowest to highest) */
%left ADD SUB
%left MUL DIV
%left EQ AND OR LT GT

/*Productions below */
%%
program: stmts
       ;
stmts: stmts stmt
     | stmt
     ;
stmt: LET IDENT ASSIGN expr SEMI
    | IF LPAREN expr RPAREN LBRACE stmts RBRACE SEMI
    | expr SEMI
    ;
expr: expr ADD expr
    | expr SUB expr
    | expr MUL expr
    | expr DIV expr
    | expr AND expr
    | expr OR expr
    | expr LT expr
    | expr GT expr
    | expr EQ expr
    | INTLIT
    ;
%%

void yyerror (char *s) {
    fprintf(stderr, "%s\n", s);
}

