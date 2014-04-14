export SRCDIR=$(PWD)

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
	export DESTDIR=/tmp/eon2014
	mkdir $$DESTDIR
	$(MAKE) -C srctxt
	rm -rf $$TEMPLATEDIR
