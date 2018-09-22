#define GNTLISP_C

#include <stdio.h>

#include "config.h"

#include <gntlisp.h>

unsigned int gntlisp_get_version(void)
{
  unsigned int version;

  version = PACKAGE_VERSION_MAJOR;
  version <<= 8;
  version = PACKAGE_VERSION_MINOR;
  version <<= 8;
  version = PACKAGE_VERSION_PATCH;

  return(version);
}

