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
.SILENT:

all: common

clean: common-clean

common:
	$(MAKE) -C common

common-clean:
	$(MAKE) -C common clean
