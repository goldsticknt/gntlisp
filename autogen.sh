#!/bin/bash

top_srcdir="`dirname "$0"`"
top_builddir="`pwd`"
	
if [ x$1 = x-c ]; then
	cd "$top_srcdir"

	rm -rf autom4te.cache || /bin/true
	rm -f m4/libtool.m4 m4/lt~obsolete.m4 m4/ltoptions.m4 m4/ltsugar.m4 m4/ltversion.m4 || /bin/true
	rmdir m4 || /bin/true
	rm -f config.h.in.in configure compile depcomp install-sh ltmain.sh missing aclocal.m4 Makefile.in INSTALL ar-lib config.guess config.sub ylwrap test-driver || /bin/true
	rm -f aminclude_static.am || /bin/true
	
	cd "$top_builddir"
else
	cd "$top_srcdir"

	autoheader
	aclocal
	libtoolize -c
	automake -a -c
	autoconf
	
	cd "$top_builddir"
fi
