#ifndef GNTLISP_H
#define GNTLISP_H

#ifndef S_SPLINT_S
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
#include "gntlisp-parser.h"
#endif /* 0 */
#endif /* S_SPLINT_S */

#ifndef GNTLISP_C
/*@external@*/ extern
#endif /* GNTLISP_C */
unsigned int gntlisp_get_version(void)
/*@modifies nothing; @*/;

#ifndef S_SPLINT_S
int gntlisp_scan(void);
int gntlisp_parse(void);

//int gntlisp_yylex(yyscan_t scanner);
void gntlisp_yyerror (void * scanner, char const *s);
#endif /* S_SPLINT_S */

#endif /* GNTLISP_H */
