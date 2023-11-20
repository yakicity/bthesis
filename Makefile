.PHONY: docker-build,docker-run,run

IMAGE_NAME = "koikelab-bthesis"
CONTAINER_NAME = "bthesis"

run:
	latexmk bthesis

docker-build:
	docker build -t $(IMAGE_NAME) .

docker-run:
	docker run --rm -it -v $(PWD):/workdir -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) $(IMAGE_NAME)

clean:
	latexmk -C
