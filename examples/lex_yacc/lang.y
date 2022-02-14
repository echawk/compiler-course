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

%type <a> program stmts stmt
%type <num> expr INTLIT
/*Productions below */
%%
program: stmts { printf("-> %d", $1); }
       ;
stmts: stmts stmt
     | stmt
     ;
stmt: LET IDENT ASSIGN expr SEMI
    | IF LPAREN expr RPAREN LBRACE stmts RBRACE SEMI
    | expr SEMI
    ;
expr: expr ADD expr { $$ = $1 + $3; }
    | expr SUB expr { $$ = $1 - $3; }
    | expr MUL expr { $$ = $1 * $3; }
    | expr DIV expr { $$ = $1 / $3; }
    | expr AND expr
    | expr OR expr
    | expr LT expr
    | expr GT expr
    | expr EQ expr
    | INTLIT { $$ = $1; }
    ;
%%

void yyerror (char *s) {
    fprintf(stderr, "%s\n", s);
}

int main() { return yyparse(); }
