ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS = -I src/ -I src/gntlisp/ -I include/ -I include/gntlisp/
AM_YFLAGS = -d

EXTRA_DIST=tests/splint/0.sh

BUILT_SOURCES=src/gntlisp/gntlisp-scanner.c src/gntlisp/gntlisp-parser.c
CLEANFILES=src/gntlisp/gntlisp-scanner.c src/gntlisp/gntlisp-scanner.h
CLEANFILES+=src/gntlisp/gntlisp-parser.c src/gntlisp/gntlisp-parser.h
DISTCLEANFILES=tests/testdefs.sh

lib_LTLIBRARIES = libgntlisp.la
bin_PROGRAMS = gntlisp

libgntlisp_la_SOURCES=src/gntlisp/gntlisp.c

libgntlisp_la_SOURCES+=src/gntlisp/gntlisp-parser.y

libgntlisp_la_SOURCES+=src/gntlisp/gntlisp-scanner.l
@builddir@/src/gntlisp/gntlisp-scanner.c: @srcdir@/src/gntlisp/gntlisp-scanner.l
	$(AM_V_LEX)$(am__skiplex) $(SHELL) $(YLWRAP) $< $(LEX_OUTPUT_ROOT).c $@ `echo $@ | sed -e 's/^.*\///' | $(am__yacc_c2h)` `echo $@ | $(am__yacc_c2h)` -- $(LEXCOMPILE)

gntlisp_SOURCES = src/main.c
gntlisp_LDADD = libgntlisp.la

TESTS=
if HAVE_SPLINT
TESTS+=tests/splint/000.sh
endif

