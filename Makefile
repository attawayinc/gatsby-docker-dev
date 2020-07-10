new:
	docker-compose -f new-gatsby.docker-compose.yml run base
build:
	docker-compose -f build-gatsby.docker-compose.yml run build
up:
	docker-compose up
