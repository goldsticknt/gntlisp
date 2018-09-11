%{

#include <stdio.h>

#include "gntlisp.h"

#include "config.h"

#define YY_INPUT(buf,result,max_size) \
{ \
    int c = getc(gntlisp_yyin); \
    result = (c == EOF) ? YY_NULL : (buf[0] = c, 1); \
}

%}

%option prefix="gntlisp_yy"
%option outfile="lex.yy.c"

%%

\n return(2);
. return(1);

%%

unsigned int gntlisp_scan(void)
{
  int token;
  
  for (token = gntlisp_yylex(); token > 0; token = gntlisp_yylex())
    printf("%d\n", token);
}

int gntlisp_yywrap(void)
{
	return(1);
}

