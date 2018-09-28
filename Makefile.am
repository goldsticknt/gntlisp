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

BUILT_SOURCES=src/gntlisp/gntlisp-scanner.c
BUILT_SOURCES+=src/gntlisp/gntlisp-parser.c
CLEANFILES=@top_builddir@/src/gntlisp/gntlisp-scanner.c
CLEANFILES+=@top_builddir@/src/gntlisp/gntlisp-scanner.h
CLEANFILES+=@top_builddir@/src/gntlisp/gntlisp-parser.c
CLEANFILES+=@top_builddir@/src/gntlisp/gntlisp-parser.h

DISTCLEANFILES=@top_builddir@/tests/testdefs.sh
DISTCLEANFILES+=@top_builddir@/tests/splint/000.sh
DISTCLEANFILES+=@top_builddir@/tests/valgrind/000.sh

lib_LTLIBRARIES=libgntlisp.la
bin_PROGRAMS=gntlisp

CLEANFILES+=@top_builddir@/include/config.lcs

libgntlisp_la_SOURCES=src/gntlisp/gntlisp.c
CLEANFILES+=@top_srcdir@/src/gntlisp/gntlisp.lcs

libgntlisp_la_SOURCES+=src/gntlisp/gntlisp-parser.y

libgntlisp_la_SOURCES+=src/gntlisp/gntlisp-scanner.l
@top_builddir@/src/gntlisp/gntlisp-scanner.c: @top_srcdir@/src/gntlisp/gntlisp-scanner.l
	$(AM_V_LEX)$(am__skiplex) $(SHELL) $(YLWRAP) $< $(LEX_OUTPUT_ROOT).c $@ `echo $@ | sed -e 's/^.*\///' | $(am__yacc_c2h)` `echo $@ | $(am__yacc_c2h)` -- $(LEXCOMPILE)
EXTRA_libgntlisp_la_DEPENDENCIES=config.h

gntlisp_SOURCES=src/gntrepl/gntrepl_main.c
CLEANFILES+=@top_srcdir@/src/gntrepl/gntrepl_main.lcs

EXTRA_gntlisp_DEPENDENCIES=config.h

gntlisp_LDADD=libgntlisp.la

CLEANFILES+=@top_builddir@/config.h
BUILT_SOURCES+=config.h
config.h: config.h.in
	awk ' \
		BEGINFILE { constuse=0; } \
		(/^ *$$/ && (constuse==0)) { print "/*@-constuse@*/" } \
		// { print $$0 } \
		ENDFILE { print "/*@+constuse@*/" }' $^ > $@

EXTRA_DIST=
EXTRA_DIST+=tests/splint/000.sh
EXTRA_DIST+=tests/valgrind/000.sh

TESTS=
TESTS+=tests/splint/000.sh
TESTS+=tests/valgrind/000.sh

