# Image URL to use for building/pushing images
TAG ?= latest
IMG ?= jehadnasser/gitops-operator-tools:${TAG}

# Build the docker image
docker-build:
	docker build . -t ${IMG}

# Push the docker image
docker-push:
	docker push ${IMG}