# Useful for `make dist` only!

.PHONY: all

all:
	$(foreach template, $(wildcard *.html), sed 's/\/~vishwin\/eon\/2014/\/2014/g' $(template) > $(TEMPLATEDIR)/$(template))
