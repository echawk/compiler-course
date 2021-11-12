%{
#include "lang.tab.h"
%}

%%
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

[a-zA-Z]+ { yylval.id  = (char*) yytext;       return IDENT;  }
[0-9]+    { yylval.num = atoi(yytext); return INTLIT; }
[ \t\n]   ;
%%

int yywrap (void) { return 1; }
