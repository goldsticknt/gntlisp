#!/bin/bash

if [ x$1 = x-c ]; then
	rm -rf autom4te.cache
	rm -f config.h.in configure compile depcomp install-sh missing aclocal.m4 Makefile.in INSTALL
else
	autoheader
	aclocal
	automake -a -c
	autoconf
fi
