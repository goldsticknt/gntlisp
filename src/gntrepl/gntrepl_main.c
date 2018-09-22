#define GNTREPL_MAIN_C

#include <stdio.h>

#include "config.h"

#include <gntlisp.h>

#include "maindefs.h"

int main(/*@unused@*/ int argc, /*@unused@*/ char *argv[])
    /* ensures result = 0 */
{
  (void)gntlisp_get_version();
#ifndef S_SPLINT_S
  printf("%s: %d\n", PACKAGE_NAME, gntlisp_get_version());
	//gntlisp_scan();
  gntlisp_parse();
#endif /* S_SPLINT_S */
  return(0);
}

