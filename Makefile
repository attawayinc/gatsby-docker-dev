new: .secret .secret2
	@cat .env_common .secret .secret2 > .env
	@mkdir project
	docker-compose -f new-gatsby.docker-compose.yml run --rm base
clone: .secret2
	@mkdir project
	./clone-repo
	docker-compose -f clone-gatsby.docker-compose.yml run --rm base
build:
	docker-compose -f build-gatsby.docker-compose.yml up
up:
	docker-compose up
.secret:
.secret2:
	./make_secrets
