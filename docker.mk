.PHONY: help

NAME := tamakiii-sandbox/hello-busybox

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	build

build:
	docker build -t $(NAME) .

bash: build
	docker run -it --rm $(NAME) $@

clean:
	docker image rm $(NAME)
