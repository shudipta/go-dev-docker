# FROM alpine AS builder
# RUN apk add --no-cache bash && which bash

FROM golangci/golangci-lint:v1.53-alpine AS builder
RUN go install golang.org/x/tools/cmd/goimports@latest
# COPY --from=builder /bin/bash /bin/bash
RUN apk add --no-cache bash
