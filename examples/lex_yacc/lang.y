%{

%}

%token RET "ret" IF "if" LET "let" IDENT NUMLIT
%token LPAREN "(" RPAREN ")" SEMI ";"
%token ASSIGN "=" LT "<" GT ">" EQ "==" AND "&&" OR "||"
%token ADD "+" SUB "-" MUL "*" DIV "/"

/* Operator precedence (highest to lowest)*/
%left EQ AND OR
%left MUL DIV
%left ADD SUB

/*Productions below */
%%
stmt: LET IDENT ASSIGN expr
    ;
expr: expr "+" expr
    | expr "-" expr
    | expr "*" expr
    | expr "/" expr
    | expr AND expr
    | expr OR expr
    | NUMLIT
    ;
%%
