#ifndef GNTLISP_H
#define GNTLISP_H

#if 0
enum {
	GNTLISP_LISP_TOKEN_OPENPAREN=1,
	GNTLISP_LISP_TOKEN_CLOSEPAREN,
	GNTLISP_LISP_TOKEN_QUOTE,
	GNTLISP_LISP_TOKEN_BACKQUOTE,
	GNTLISP_LISP_TOKEN_UNQUOTE,
	GNTLISP_LISP_TOKEN_IDENTIFIER,
	GNTLISP_LISP_TOKEN_LITERAL
};
#else
#include "lisp-parser.h"
#endif /* 0 */

unsigned int gntlisp_get_version(void);
int gntlisp_scan(void);
int gntlisp_parse(void);

//int gntlisp_yylex(yyscan_t scanner);
void gntlisp_yyerror (void * scanner, char const *s);

#endif /* GNTLISP_H */
