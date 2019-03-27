IMAGE_NAME = commitlint:latest

.PHONY: build
build:
	docker build \
		--tag=$(IMAGE_NAME) \
		--build-arg http_proxy=$(http_proxy) \
		--build-arg https_proxy=$(https_proxy) \
		--build-arg no_proxy=$(no_proxy) .
