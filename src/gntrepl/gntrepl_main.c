#define GNTREPL_MAIN_C

#include <stdio.h>

#include "config.h"

#include <gntlisp.h>

#include "maindefs.h"

#include "gntrepl-main.h"

static void printUsage(void)
/*@globals stdout, fileSystem; @*/
/*@modifies *stdout, fileSystem; @*/
{
  (void)fprintf(stdout, "%s: %u\n", PACKAGE_NAME, gntlisp_get_version());
}

int main(/*@unused@*/ int argc, /*@unused@*/ char *argv[])
{
  printUsage();
#ifndef S_SPLINT_S
	//gntlisp_scan();
  gntlisp_parse();
#endif /* S_SPLINT_S */
  return(0);
}

