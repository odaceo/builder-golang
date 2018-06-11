DOCKER_IMAGE_NAME=odaceo/golang

build:
	docker build -t $(DOCKER_IMAGE_NAME):1.10-ubuntu18 -f 1.10/Dockerfile .
.PHONY: build

push: build
	docker push $(DOCKER_IMAGE_NAME):1.10-ubuntu18
.PHONY: push

default: build
