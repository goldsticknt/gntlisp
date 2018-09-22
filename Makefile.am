ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS=
AM_CFLAGS+=-I@top_builddir@/src/
AM_CFLAGS+=-I@top_builddir@/src/gntlisp/
AM_CFLAGS+=-I@top_builddir@/src/gntrepl/
AM_CFLAGS+=-I@top_builddir@/include/
AM_CFLAGS+=-I@top_builddir@/include/gntlisp/
AM_CFLAGS+=-I@top_builddir@/include/gntrepl/
AM_CFLAGS+=-I@top_srcdir@/src/
AM_CFLAGS+=-I@top_srcdir@/src/gntlisp/
AM_CFLAGS+=-I@top_srcdir@/src/gntrepl/
AM_CFLAGS+=-I@top_srcdir@/include/
AM_CFLAGS+=-I@top_srcdir@/include/gntlisp/
AM_CFLAGS+=-I@top_srcdir@/include/gntrepl/

AM_YFLAGS=-d

EXTRA_DIST=tests/splint/0.sh

BUILT_SOURCES=src/gntlisp/gntlisp-scanner.c
BUILT_SOURCES+=src/gntlisp/gntlisp-parser.c
CLEANFILES=@top_builddir@/src/gntlisp/gntlisp-scanner.c
CLEANFILES+=@top_builddir@/src/gntlisp/gntlisp-scanner.h
CLEANFILES+=@top_builddir@/src/gntlisp/gntlisp-parser.c
CLEANFILES+=@top_builddir@/src/gntlisp/gntlisp-parser.h

DISTCLEANFILES=@top_builddir@/tests/testdefs.sh
DISTCLEANFILES+=@top_builddir@/tests/splint/000.sh

lib_LTLIBRARIES=libgntlisp.la
bin_PROGRAMS=gntlisp

libgntlisp_la_SOURCES=src/gntlisp/gntlisp.c

libgntlisp_la_SOURCES+=src/gntlisp/gntlisp-parser.y

libgntlisp_la_SOURCES+=src/gntlisp/gntlisp-scanner.l
@top_builddir@/src/gntlisp/gntlisp-scanner.c: @top_srcdir@/src/gntlisp/gntlisp-scanner.l
	$(AM_V_LEX)$(am__skiplex) $(SHELL) $(YLWRAP) $< $(LEX_OUTPUT_ROOT).c $@ `echo $@ | sed -e 's/^.*\///' | $(am__yacc_c2h)` `echo $@ | $(am__yacc_c2h)` -- $(LEXCOMPILE)

gntlisp_SOURCES=src/gntrepl/gntrepl_main.c
gntlisp_LDADD=libgntlisp.la

TESTS=
if HAVE_SPLINT
TESTS+=tests/splint/000.sh
endif

