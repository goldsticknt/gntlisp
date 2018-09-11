%{

#include <stdio.h>

#include "gntlisp.h"

#include "config.h"

#define YYSTYPE int

#define YY_INPUT(buf,result,max_size) \
{ \
    YYSTYPE c = getc(stdin); \
    result = (c == EOF) ? YY_NULL : (buf[0] = c, 1); \
}

%}

%option prefix="gntlisp_yy"
%option outfile="lex.yy.c"
%option reentrant

%%

\n return(2);
. return(1);

%%

unsigned int gntlisp_scan(void)
{
  YYSTYPE token;
  yyscan_t scanner;
  
  gntlisp_yylex_init(&scanner);
  for (token = gntlisp_yylex(scanner);
      token > 0;
      token = gntlisp_yylex(scanner))
    printf("%d\n", token);
  gntlisp_yylex_destroy(scanner);
}

int gntlisp_yywrap(yyscan_t yyscan)
{
	return(1);
}
