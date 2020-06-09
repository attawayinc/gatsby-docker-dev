new:
	docker-compose -f new-gatsby.docker-compose.yml run --rm install
build:
	docker-compose -f build-gatsby.docker-compose.yml run build
