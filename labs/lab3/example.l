%{
#include <stdio.h>
#include <stdlib.h>
#include "token.h"
%}

%%
if        printf("IF ")          ; return IF;
fn        printf("FUNC ")        ; return FUNC;
let       printf("LET ")         ; return LET;
"="       printf("ASSIGN ")      ; return ASSIGN;
";"       printf("SEMI ")        ; return SEMI;
[0-9]*    printf("INT_LIT ")     ; return INT_LIT;
[a-zA-Z]* printf("IDENT ")       ; return IDENT;
"+"       printf("PLUS ")        ; return PLUS;
"-"       printf("MINUS ")       ; return MINUS;
"*"       printf("ASTERISK ")    ; return ASTERISK;
"/"       printf("DIV ")         ; return DIV;
"("       printf("LPAREN ")      ; return LPAREN;
")"       printf("RPAREN ")      ; return RPAREN;
[ \t]*    ;
.         printf("ILLEGAL "); return ILLEGAL;
%%
