export SRCDIR=$(PWD)

.PHONY build dist

build: srctxt
	export DESTDIR=$(SRCDIR)
	$(MAKE) -C srctxt

dist: srctxt
	export DESTDIR=/tmp/eon2014
	-mkdir $(DESTDIR)
	$(MAKE) -C srctxt
	-rm -rf $(DESTDIR)
