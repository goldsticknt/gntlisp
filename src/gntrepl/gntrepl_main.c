#define GNTREPL_MAIN_C

#include <stdio.h>

#ifndef S_SPLINT_S
#include <gntlisp.h>
#endif /* S_SPLINT_S */

#include "maindefs.h"

#include "config.h"

int main(/*@unused@*/ int argc, /*@unused@*/ char *argv[])
{
#ifndef S_SPLINT_S
	printf("%s: %d\n", PACKAGE_NAME, gntlisp_get_version());
	//gntlisp_scan();
	gntlisp_parse();
#endif /* S_SPLINT_S */
	return(0);
}

