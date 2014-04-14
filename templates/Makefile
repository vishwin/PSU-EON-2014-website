# Useful for `make dist` only!

.PHONY: all

all:
	for template in $(wildcard *.html); do \
		sed 's/\/~vishwin\/eon\/2014/\/2014/g' $$template > $(TEMPLATEDIR)/$$template; \
	done
