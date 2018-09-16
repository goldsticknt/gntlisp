ACLOCAL_AMFLAGS = -I m4
AM_CFLAGS = -I . -I src/ -I src/gntlisp/ -I include/ -I include/gntlisp/
AM_YFLAGS = -d

BUILT_SOURCES=src/gntlisp/gntlisp-scanner.c src/gntlisp/gntlisp-parser.c
CLEANFILES=src/gntlisp/gntlisp-scanner.c gntlisp-scanner.h
CLEANFILES+=src/gntlisp/gntlisp-parser.c src/gntlisp/gntlisp-parser.h

lib_LTLIBRARIES = libgntlisp.la
bin_PROGRAMS = gntlisp

libgntlisp_la_SOURCES = src/gntlisp/gntlisp.c src/gntlisp/gntlisp-scanner.l src/gntlisp/gntlisp-parser.y

gntlisp_SOURCES = src/main.c
gntlisp_LDADD = libgntlisp.la

