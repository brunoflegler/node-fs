build:
	@docker build -t node-fs  .
.PHONY: build

node-fs:
	@docker-compose up -d --build node-fs
.PHONY: es-document-builder

run:
	@docker run -it node-fs bash
.PHONY: run

prepare: build run
.PHONY: prepare
