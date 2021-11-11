%{
#include "lang.tab.h"
%}

%%
"ret" {return RET;}
"if"  {return IF;}
"let" {return LET;}

"("   {return LPAREN;}
")"   {return RPAREN;}
"{"   {return LBRACE;}
"}"   {return RBRACE;}
";"   {return SEMI;}

"=="  {return EQ;}
"="   {return ASSIGN;}
"<"   {return LT;}
">"   {return GT;}
"&&"  {return AND;}
"||"  {return OR;}
"+"   {return ADD;}
"-"   {return SUB;}
"*"   {return MUL;}
"/"   {return DIV;}

[0-9]+ { yylval.num = atoi(yytext); return INTLIT; }
. {ECHO; yyerror("Unexepected character");}
%%
