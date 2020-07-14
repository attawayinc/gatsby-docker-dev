new: .secret
	@cat .env_common .secret > .env
	@mkdir project
	docker-compose -f new-gatsby.docker-compose.yml run --rm base
build:
	docker-compose -f build-gatsby.docker-compose.yml up
up:
	docker-compose up
.secret:
	./make_secrets
