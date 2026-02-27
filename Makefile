CGO_ENABLED ?= 0

GOBIN := $(if $(shell go env GOBIN),$(shell go env GOBIN),$(GOPATH)/bin)
PATH := $(GOBIN):$(PATH)

COLOR := "\e[1;36m%s\e[0m\n"

.PHONY: all install generate clean regenerate update-proto-submodule update-proto gomodtidy test

all: install update-proto test

install:
	@go install github.com/bufbuild/buf/cmd/buf@latest

update-proto-submodule:
	@printf $(COLOR) "Updating api submodule..."
	git -c protocol.file.allow=always submodule update --init --force --remote proto/api

generate:
	buf generate

clean:
	rm -rf build

regenerate: clean generate

update-proto: update-proto-submodule regenerate gomodtidy

gomodtidy:
	@printf $(COLOR) "Running go mod tidy..."
	go mod tidy

test:
	@printf $(COLOR) "Running build check..."
	go build ./...
