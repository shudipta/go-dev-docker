FROM golangci/golangci-lint:v1.24-alpine AS builder
RUN go get golang.org/x/tools/cmd/goimports

FROM golang:1.14-alpine

ARG GO_VERSION=1.14.1
ARG OS=linux/amd64

COPY --from=builder /usr/bin/golangci-lint /usr/bin/golangci-lint
COPY --from=builder /go/bin/goimports /go/bin/goimports
