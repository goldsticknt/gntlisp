%{

#include <stdio.h>

#include "gntlisp.h"
#include "gntlisp-parser.h"

#include "config.h"

#define YYSTYPE union GNTLISP_YYSTYPE

%}

%option prefix="gntlisp_yy"
%option outfile="lex.yy.c"
%option header-file="gntlisp-scanner.h"
%option reentrant
%option bison-bridge

%%

\(                         return(GNTLISP_LISP_TOKEN_OPENPAREN);
\)                         return(GNTLISP_LISP_TOKEN_CLOSEPAREN);
'                          return(GNTLISP_LISP_TOKEN_QUOTE);
`                          return(GNTLISP_LISP_TOKEN_BACKQUOTE);
@                          return(GNTLISP_LISP_TOKEN_UNQUOTE);
[A-Za-z_+-][A-Za-z0-9_+-]* {
  yylval->strValue = strdup(yytext);
  return(GNTLISP_LISP_TOKEN_IDENTIFIER);
}
[0-9]+                     {
  yylval->strValue = strdup(yytext);
  return(GNTLISP_LISP_TOKEN_LITERAL);
}
[ \t\r\n]+                 return(GNTLISP_LISP_TOKEN_WHITESPACE);

%%

#if 0
int gntlisp_scan(void)
{
  YYSTYPE token;
  yyscan_t scanner;
  
  gntlisp_yylex_init(&scanner);
  for (token = gntlisp_yylex(scanner);
      token > 0;
      token = gntlisp_yylex(scanner))
    printf("%d\n", token);
  gntlisp_yylex_destroy(scanner);

  return(0);
}
#endif /* 0 */

int gntlisp_parse(void)
{
  void * scanner;
  int retVal;
  
  gntlisp_yylex_init(&scanner);
  retVal = gntlisp_yyparse(scanner);
  gntlisp_yylex_destroy(scanner);

  return(retVal);
}

int gntlisp_yywrap(yyscan_t yyscan)
{
  return(1);
}

void gntlisp_yyerror(yyscan_t yyscan, char const *s)
{
  fprintf(stderr, "error: %s\n", s);
}

