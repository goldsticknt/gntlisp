#!/bin/bash

if [ x$1 = x-c ]; then
	rm -rf autom4te.cache m4
	rm -f config.h.in configure compile depcomp install-sh ltmain.sh missing aclocal.m4 Makefile.in INSTALL ar-lib config.guess config.sub
else
	autoheader
	aclocal
	libtoolize -c
	automake -a -c
	autoconf
fi
