new: .secret .secret2 ready
	docker-compose -f new-gatsby.docker-compose.yml run --rm base
clone: .secret2 ready
	./clone-repo
	docker-compose -f clone-gatsby.docker-compose.yml run --rm base
ready:
	@cat .env_common .secret .secret2 > .env
	@mkdir project
build:
	docker-compose -f build-gatsby.docker-compose.yml up
up:
	docker-compose up
image:
	docker-compose -f mygatsby-build.docker-compose.yml build
.secret:
.secret2:
	./make_secrets
clean:
	@rm -rf project/
