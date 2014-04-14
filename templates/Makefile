# Useful for `make dist` only!

.PHONY: all

all:
	for template in $(wildcard *.html); do \
		sed 's/\/~vishwin\/eon\/2014/\/$(DESTDIRSTEM)/g' $$template > $(TEMPLATEDIR)/$$template; \
	done
