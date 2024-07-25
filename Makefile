.PHONY: all
all: pull build

.PHONY: build
build:
	docker build . -t karlvr/package-rpm

.PHONY: pull
pull:
	docker pull rockylinux:9

.PHONY: push
push:
	docker push karlvr/package-rpm

.PHONY: run
run:
	docker run -it --rm karlvr/package-rpm bash

.PHONY: run-root
run-root:
	docker run -it --rm --user root karlvr/package-rpm bash
