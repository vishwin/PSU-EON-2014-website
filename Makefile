export SRCDIR=$(PWD)
export DESTDIRSTEM=2014

.PHONY: build dist

.ONESHELL:
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
	cp -r img $$DESTDIR
	cp -r css $$DESTDIR
	cp -r js $$DESTDIR
	cp bower_components/modernizr/modernizr.js $$DESTDIR/js
	cp bower_components/jquery/dist/jquery.js $$DESTDIR/js
	cp bower_components/foundation/js/foundation.js $$DESTDIR/js
	-tar -cf eon2014.tar -C /tmp $(DESTDIRSTEM)
	rm -rf $$DESTDIR
	rm -rf $$TEMPLATEDIR
