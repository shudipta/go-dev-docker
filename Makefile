SHELL=/bin/bash -o pipefail

REGISTRY ?= alittleprogramming
BIN      := go-dev
IMAGE    := $(REGISTRY)/$(BIN)
TAG      := $(shell git describe --exact-match --abbrev=0 2>/dev/null || echo "latest")


.PHONY: push
push: container
	docker push $(IMAGE):$(TAG)

.PHONY: container
container:
	docker build --pull -t $(IMAGE):$(TAG) .

.PHONY: version
version:
	@echo ::set-output name=version::$(TAG)
