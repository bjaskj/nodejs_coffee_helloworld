include env_make

NS = bjaskj
VERSION ?= 0.1.0

REPO = nodejs_coffee_helloworld

install:
	npm install

build:
	docker build -t $(NS)/$(REPO):$(VERSION) .

run:
	npm start

start:
	docker run $(PORTS) -d $(NS)/$(REPO):$(VERSION)

test:
	curl -i localhost:3456

clean:
	rm -rf node_modules

default: build

.PHONY: install build run test clean start
