.PHONY: help setup dependencies clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies

dependencies: \
	deps/mirror/busybox

deps/mirror/busybox: deps/mirror
	git clone git@github.com:mirror/busybox.git $@

deps/mirror: deps
	mkdir -p $@

deps:
	mkdir -p $@

clean:
	rm -rf deps
