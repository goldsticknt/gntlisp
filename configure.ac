#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
m4_define([M4_PACKAGE_VERSION_MAJOR], [0])
m4_define([M4_PACKAGE_VERSION_MINOR], [0])
m4_define([M4_PACKAGE_VERSION_PATCH], [1])
m4_define([M4_PACKAGE_VERSION_STR], [$1.$2.$3])

m4_define([M4_TYPED], [$1$2])

# AC_INIT([FULL-PACKAGE-NAME], [VERSION], [BUG-REPORT-ADDRESS])
AC_INIT([gntlisp], M4_PACKAGE_VERSION_STR(M4_PACKAGE_VERSION_MAJOR,M4_PACKAGE_VERSION_MINOR,M4_PACKAGE_VERSION_PATCH), [goldsticknt@goldsticknt.com])
AC_CONFIG_SRCDIR([src/gntrepl/gntrepl_main.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([Makefile])
AC_CONFIG_MACRO_DIRS([m4])
AM_INIT_AUTOMAKE([-Wall -Werror subdir-objects])

AC_DEFINE([PACKAGE_VERSION_MAJOR], M4_TYPED(M4_PACKAGE_VERSION_MAJOR,[U]), [Major Version Value])
AC_SUBST([PACKAGE_VERSION_MAJOR], M4_TYPED(M4_PACKAGE_VERSION_MAJOR,[U]))
AC_DEFINE([PACKAGE_VERSION_MINOR], M4_TYPED(M4_PACKAGE_VERSION_MINOR,[U]), [Minor Version Value])
AC_SUBST([PACKAGE_VERSION_MINOR], M4_TYPED(M4_PACKAGE_VERSION_MINOR,[U]))
AC_DEFINE([PACKAGE_VERSION_PATCH], M4_TYPED(M4_PACKAGE_VERSION_PATCH,[U]), [Patch Version Value])
AC_SUBST([PACKAGE_VERSION_PATCH], M4_TYPED(M4_PACKAGE_VERSION_PATCH,[U]))

# Checks for programs.
AC_PROG_CC
AC_PROG_LEX
AC_PROG_YACC
AM_PROG_AR

AC_CHECK_TOOL([SPLINT],[splint],[splint],[])
AM_CONDITIONAL([HAVE_SPLINT],[test x$SPLINT != x])

AC_CHECK_TOOL([PATCH],[patch],[patch],[])
AM_CONDITIONAL([HAVE_PATCH],[test x$PATCH != x])

AC_CHECK_TOOL([VALGRIND],[valgrind],[valgrind],[])
AM_CONDITIONAL([HAVE_VALGRIND],[test x$VALGRIND != x])

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.
AC_SEARCH_LIBS([dlopen], [dl], [], [
  AC_MSG_ERROR([unable to find dlopen()])
])

LT_INIT([shared])

AC_OUTPUT([
include/config.lcl
tests/testdefs.sh
tests/splint/000.sh
tests/valgrind/000.sh
], [

# Patch header files with annotations.
"$PATCH" < "$srcdir/config.h.patch"
echo "/*@+constuse@*/" >> "config.h"

# Mark test scripts executable if present.
for test_script in tests/splint/000.sh tests/valgrind/000.sh; do
	if test -f "$test_script"; then
		chmod a+x "$test_script"
	fi
done

],
PATCH="$PATCH"
srcdir="$srcdir")

