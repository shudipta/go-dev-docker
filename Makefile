SHELL=/bin/bash -o pipefail

REGISTRY ?= alittleprogramming
BIN      := go-dev
IMAGE    := $(REGISTRY)/$(BIN)
TAG      := 1.14.1-rc-1

.PHONY: push
push: container
	docker push $(IMAGE):$(TAG)

.PHONY: container
container:
	docker build --pull -t $(IMAGE):$(TAG) .

.PHONY: version
version:
	@echo ::set-output name=version::$(TAG)
