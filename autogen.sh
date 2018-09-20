#!/bin/bash

if [ x$1 = x-c ]; then
	rm -rf autom4te.cache || /bin/true
	rm -f m4/libtool.m4 m4/lt~obsolete.m4 m4/ltoptions.m4 m4/ltsugar.m4 m4/ltversion.m4 || /bin/true
	rmdir m4 || /bin/true
	rm -f config.h.in configure compile depcomp install-sh ltmain.sh missing aclocal.m4 Makefile.in INSTALL ar-lib config.guess config.sub ylwrap test-driver || /bin/true
	rm -f aminclude_static.am || /bin/true
else
	autoheader
	aclocal
	libtoolize -c
	automake -a -c
	autoconf
fi
