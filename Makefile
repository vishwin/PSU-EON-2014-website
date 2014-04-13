export SRCDIR=$(PWD)
export DISTDIR=/tmp/eon2014

.PHONY build dist

build: srctxt
	$(MAKE) -C srctxt build

dist: srctxt
	-mkdir $(DISTDIR)
	-rm -rf $(DISTDIR)
