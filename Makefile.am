ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS = -I include/
AM_YFLAGS = -d

BUILT_SOURCES=src/lexer.c
CLEANFILES=ylwrap src/lexer.c

lib_LTLIBRARIES = libgntlisp.la
bin_PROGRAMS = gntlisp

libgntlisp_la_SOURCES = src/version.c src/lexer.l

gntlisp_SOURCES = src/main.c
gntlisp_LDADD = libgntlisp.la

