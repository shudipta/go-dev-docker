SHELL=/bin/bash -o pipefail

REGISTRY ?= alittleprogramming
BIN      := go-dev
IMAGE    := $(REGISTRY)/$(BIN)
# TAG      := "1.14.1"

.PHONY: push
push: container
	docker push $(IMAGE):1.14.1

.PHONY: container
container:
	docker build --pull -t $(IMAGE):1.14.1 .

.PHONY: version
version:
	@echo ::set-output name=version::1.14.1
