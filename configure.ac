#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
m4_define([M4_PACKAGE_VERSION_MAJOR], [0])
m4_define([M4_PACKAGE_VERSION_MINOR], [0])
m4_define([M4_PACKAGE_VERSION_PATCH], [1])
m4_define([M4_PACKAGE_VERSION_STR], [$1.$2.$3])
# AC_INIT([FULL-PACKAGE-NAME], [VERSION], [BUG-REPORT-ADDRESS])
AC_INIT([gntlisp], M4_PACKAGE_VERSION_STR(M4_PACKAGE_VERSION_MAJOR,M4_PACKAGE_VERSION_MINOR,M4_PACKAGE_VERSION_PATCH), [goldsticknt@goldsticknt.com])
AC_CONFIG_SRCDIR([src/main.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([Makefile])
AC_CONFIG_MACRO_DIRS([m4])
AM_INIT_AUTOMAKE([-Wall -Werror subdir-objects])

AC_DEFINE([PACKAGE_VERSION_MAJOR], M4_PACKAGE_VERSION_MAJOR, [Major Version Value])
AC_DEFINE([PACKAGE_VERSION_MINOR], M4_PACKAGE_VERSION_MINOR, [Minor Version Value])
AC_DEFINE([PACKAGE_VERSION_PATCH], M4_PACKAGE_VERSION_PATCH, [Patch Version Value])

# Checks for programs.
AC_PROG_CC
AC_PROG_LEX
AC_PROG_YACC
AM_PROG_AR

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.
AC_SEARCH_LIBS([dlopen], [dl], [], [
  AC_MSG_ERROR([unable to find dlopen()])
])

LT_INIT([shared])

AC_OUTPUT
