ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS = -I . -I src/ -I include/
AM_YFLAGS = -d

BUILT_SOURCES=src/lisp-scanner.c src/lisp-parser.c
CLEANFILES=src/lisp-scanner.c lisp-scanner.h
CLEANFILES+=src/lisp-parser.c src/lisp-parser.h

lib_LTLIBRARIES = libgntlisp.la
bin_PROGRAMS = gntlisp

libgntlisp_la_SOURCES = src/version.c src/lisp-scanner.l src/lisp-parser.y

gntlisp_SOURCES = src/main.c
gntlisp_LDADD = libgntlisp.la

