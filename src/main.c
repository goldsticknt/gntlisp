#include <stdio.h>

#include <gntlisp.h>

#include "maindefs.h"

#include "config.h"

int main(int argc, char *argv[])
{
	printf("%s: %d\n", PACKAGE_NAME, gntlisp_get_version());
	gntlisp_scan();
	return(0);
}

