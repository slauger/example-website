.DEFAULT_GOAL := build

CONTAINER_NAME?=quay.io/slauger/$(shell basename $(shell pwd))
CONTAINER_TAG?=latest
TAG_FROM?=latest
BUILDER=docker

build:
	$(BUILDER) build -t $(CONTAINER_NAME):$(CONTAINER_TAG) .

push:
	$(BUILDER) push $(CONTAINER_NAME):$(CONTAINER_TAG)

tag:
	$(BUILDER) tag $(CONTAINER_NAME):$(TAG_FROM) $(CONTAINER_NAME):$(TAG_TO)
