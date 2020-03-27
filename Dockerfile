FROM golangci/golangci-lint:v1.24-alpine
RUN go get golang.org/x/tools/cmd/goimports
