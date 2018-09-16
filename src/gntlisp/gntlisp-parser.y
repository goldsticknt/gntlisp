%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "gntlisp.h"
#include "gntlisp-scanner.h"
%}

%define api.prefix {gntlisp_yy}
%define api.pure full
%lex-param   {void * scanner}
%parse-param {void * scanner}
/*%param       {environment_type *env}*/

%union{
	char * strValue;
	int intValue;
}
%type <intValue> program sexp slist identifier literal

%token GNTLISP_LISP_TOKEN_WHITESPACE
%token GNTLISP_LISP_TOKEN_OPENPAREN
%token GNTLISP_LISP_TOKEN_CLOSEPAREN
%token GNTLISP_LISP_TOKEN_QUOTE
%token GNTLISP_LISP_TOKEN_BACKQUOTE
%token GNTLISP_LISP_TOKEN_UNQUOTE
%token <strValue> GNTLISP_LISP_TOKEN_IDENTIFIER
%token <strValue> GNTLISP_LISP_TOKEN_LITERAL

%%

program: GNTLISP_LISP_TOKEN_WHITESPACE { $$ = 0; }
	| sexp { $$ = $1; }
	| sexp program { $$ = $2; }
	| GNTLISP_LISP_TOKEN_WHITESPACE program { $$ = $2; }

sexp: GNTLISP_LISP_TOKEN_OPENPAREN slist GNTLISP_LISP_TOKEN_CLOSEPAREN { $$ = $2; }
	| GNTLISP_LISP_TOKEN_OPENPAREN slist GNTLISP_LISP_TOKEN_WHITESPACE GNTLISP_LISP_TOKEN_CLOSEPAREN { $$ = $2; }

slist: { $$ = 0; }
	| GNTLISP_LISP_TOKEN_WHITESPACE slist { $$ = $2; }
	| sexp slist { $$ = $1; }
	| identifier slist { $$ = $1; }
	| literal slist { $$ = $1; }

identifier: GNTLISP_LISP_TOKEN_IDENTIFIER {
  char * tokval = $1;
  $$ = tokval[0];
  free(tokval);
}

literal: GNTLISP_LISP_TOKEN_LITERAL {
  char * tokval = $1;
  $$ = atoi(tokval);
  free(tokval);
}

