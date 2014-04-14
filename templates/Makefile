# Useful for `make dist` only!

.PHONY: all

all:
	for template in $(wildcard *.html); do \
		sed 's/\/~vishwin\/eon\/2014/\/$(DESTDIRSTEM)/g' $$template > $(TEMPLATEDIR)/$$template; \
	done
	sed 's/\/bower_components\/modernizr/\/js/g' $(TEMPLATEDIR)/meta.html > $(TEMPLATEDIR)/meta.html
	sed -f footer.sed $(TEMPLATEDIR)/footer.html > $(TEMPLATEDIR)/footer.html
