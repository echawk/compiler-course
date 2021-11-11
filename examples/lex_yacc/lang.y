%{

%}

%union {int num; char* id;}

%token RET "ret" IF "if" LET "let" IDENT INTLIT
%token LPAREN "(" RPAREN ")" LBRACE "{" RBRACE "}" SEMI ";"
%token ASSIGN "=" LT "<" GT ">" EQ "==" AND "&&" OR "||"
%token ADD "+" SUB "-" MUL "*" DIV "/"

/* Operator precedence (lowest to highest) */
%left ADD SUB
%left MUL DIV
%left EQ AND OR LT GT

/*Productions below */
%%
stmts: stmts stmt
     | stmt
     ;
stmt: LET IDENT ASSIGN expr SEMI
    | IF LPAREN expr RPAREN LBRACE stmts RBRACE SEMI
    | expr SEMI
    | RET expr
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
