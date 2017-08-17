IMAGE:=nudj/puppeteer
CWD=$(shell pwd)
BIN:=./node_modules/.bin

.PHONY: build run

build:
	@docker build \
		-t $(IMAGE):local \
		-f ./Dockerfile.dev \
		--build-arg NPM_TOKEN=${NPM_TOKEN} \
		.

run:
	-@docker rm -f puppeteer-ssh-container 2> /dev/null || true
	@docker run --rm -it \
		--name puppeteer-ssh-container \
		-v $(CWD)/.zshrc:/root/.zshrc \
		-v $(CWD)/src/lib:/usr/src/lib \
		-v $(CWD)/src/output:/usr/src/output \
		-e NPM_TOKEN=${NPM_TOKEN} \
		$(IMAGE):local
