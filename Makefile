new: .secret .secret2 ready
	docker-compose -f new-gatsby.docker-compose.yml run --rm base
clone: ready project
	docker-compose -f clone-gatsby.docker-compose.yml run --rm base
build:
	docker-compose -f build-gatsby.docker-compose.yml up
up:
	docker-compose up
image:
	docker-compose -f mygatsby-build.docker-compose.yml build
clean:
	@rm -rf project/

.secret:
.secret2:
	./make_secrets
project: .secret2
	if [ ! -d project ] ; then ./clone-repo; fi
ready:
	@cat .env_common .secret .secret2 > .env
	@mkdir -p project
