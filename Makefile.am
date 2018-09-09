ACLOCAL_AMFLAGS=-I m4
AM_CFLAGS=-I include/

lib_LTLIBRARIES = libgntlisp.la
bin_PROGRAMS = gntlisp

libgntlisp_la_SOURCES = src/version.c

gntlisp_SOURCES = src/main.c
gntlisp_LDADD = libgntlisp.la

