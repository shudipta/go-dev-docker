# FROM alpine AS builder
# RUN apk add --no-cache bash && which bash

FROM golangci/golangci-lint:v1.24-alpine
RUN go get golang.org/x/tools/cmd/goimports
# COPY --from=builder /bin/bash /bin/bash
RUN apk add --no-cache bash
