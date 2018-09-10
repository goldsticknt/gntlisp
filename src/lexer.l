%{

#include <stdio.h>

#include "gntlisp.h"

#include "config.h"

#define YY_INPUT(buf,result,max_size) \
{ \
    int c = getc(yyin); \
    result = (c == EOF) ? YY_NULL : (buf[0] = c, 1); \
}

%}

%%

\n return(1);
. return(0);

%%

unsigned int gntlisp_scan(void)
{
  int token;
  
  for (token = yylex(); token >= 0; token = yylex())
    printf("%d\n", token);
}

int yywrap(void)
{
	return(1);
}

