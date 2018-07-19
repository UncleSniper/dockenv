DOCKER=docker
TOUCH=touch
TAG=tag
IMAGE_NS=usdo
IMAGE_TAG=latest

include $(wildcard site.makefile)

export DOCKER TAG
export IMAGE_NS IMAGE_TAG
export DOCKER_BUILD_OPTS

.PHONY: all clean
.PHONY: common common-clean
.PHONY: java java-clean
.PHONY: clojure clojure-clean
.PHONY: lisp lisp-clean
.PHONY: nodejs nodejs-clean
.SILENT:

all: clojure lisp nodejs

clean: common-clean java-clean clojure-clean lisp-clean nodejs-clean

common:
	$(MAKE) -C common

common-clean:
	$(MAKE) -C common clean

java: common
	$(MAKE) -C java

java-clean:
	$(MAKE) -C java clean

clojure: java
	$(MAKE) -C clojure

clojure-clean:
	$(MAKE) -C clojure clean

lisp: common
	$(MAKE) -C lisp

lisp-clean:
	$(MAKE) -C lisp clean

nodejs: common
	$(MAKE) -C nodejs

nodejs-clean:
	$(MAKE) -C nodejs clean
