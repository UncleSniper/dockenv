DOCKER ?= docker
TOUCH ?= touch
TAG ?= tag
IMAGE_NS ?= usdo
IMAGE_NAME ?= $(notdir $(abspath .))
IMAGE_TAG ?= latest

.PHONY: image
.SILENT:

image: $(TAG)

$(TAG): Dockerfile
	$(DOCKER) -t "$(IMAGE_NS)/$(IMAGE_NAME)$(if $(IMAGE_TAG),:$(IMAGE_TAG))" . && $(TOUCH) $(TAG)
