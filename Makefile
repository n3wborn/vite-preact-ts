.PHONY: docker_build
docker_build:
	docker build -t n3wborn/vite-docker:latest .

.PHONY: install
install:
	docker run --rm --name node -u "node" \
		-w /home/node/app \
		-v $(CURDIR)/app:/home/node/app \
		n3wborn/vite-docker:latest \
		yarn install

.PHONY: upgrade
upgrade:
	docker run --rm --name node -u "node" \
		-w /home/node/app \
		-v $(CURDIR)/app:/home/node/app \
		n3wborn/vite-docker:latest \
		yarn upgrade

.PHONY: dev
dev:
	docker run --rm -it --name node -u "node" \
		-w /home/node/app \
		-v $(CURDIR)/app:/home/node/app \
		-p 3000:3000 \
		n3wborn/vite-docker:latest \
		yarn dev

.PHONY: build
build:
	cd app && docker run --rm -it --name node -u "node" \
		-w /home/node/app \
		-v $(CURDIR)/app:/home/node/app \
		n3wborn/vite-docker:latest \
		yarn build
