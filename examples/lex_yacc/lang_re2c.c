/*
Taken from the manual: http://re2c.org/manual/manual_c.html
*/


#define  YYPEEK()                 *cursor
#define  YYSKIP()                 ++cursor
#define  YYBACKUP()               marker = cursor
#define  YYRESTORE()              curosr = marker
#define  YYBACKUPCTX()            ctxmarker = cursor
#define  YYRESTORECTX()           cursor = ctxmarker
#define  YYRESTORETAG(tag)        cursor = tag
#define  YYLESSTHAN(len)          limit - cursor < len
#define  YYSTAGP(tag)             tag = cursor
#define  YYSTAGN(tag)             tag = NULL
#define  YYSHIFT(shift)           cursor += shift
#define  YYSHIFTSTAG(tag, shift)  tag += shift

int lex(const char *YYCURSOR) {
/*!re2c
	re2c:define:YYCTYPE = char;
	re2c:yyfill:enable = 0;

	alpha = [a-zA-Z];
	ident = alpha (alpha | [0-9])*;

	ident { return 0; }
	*     { return 1; }

*/
}

int main() {
	return lex("1qwerty42");
}
