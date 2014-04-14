export SRCDIR=$(PWD)
DESTDIRSTEM=2014

.PHONY: build dist

build: srctxt
	export TEMPLATEDIR=$(SRCDIR)/templates
	export DESTDIR=$(SRCDIR)
	$(MAKE) -C srctxt

.ONESHELL:
dist: srctxt
	export TEMPLATEDIR=$(SRCDIR)/templates_dist
	mkdir $$TEMPLATEDIR
	$(MAKE) -C templates
	export DESTDIR=/tmp/$(DESTDIRSTEM)
	mkdir $$DESTDIR
	$(MAKE) -C srctxt
	-tar -cf eon2014.tar -C /tmp $(DESTDIRSTEM)
	rm -rf $$DESTDIR
	rm -rf $$TEMPLATEDIR
