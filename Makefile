export SRCDIR=$(PWD)
export DISTDIR=/tmp/eon2014

.PHONY build dist

build: srctxt
	$(MAKE) -C srctxt

dist: srctxt
	-mkdir $(DISTDIR)
	$(MAKE) -C srctxt -f Makefile.dist
	-rm -rf $(DISTDIR)
