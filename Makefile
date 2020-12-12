.PHONY: build prod run api client

build:
	docker-compose -f docker-compose.prod.yml build

prod:
	docker-compose -f docker-compose.prod.yml up --build

run:
	docker-compose -f docker-compose.prod.yml -f docker-compose.dev.yml up --build

api:
	docker-compose -f docker-compose.prod.yml -f docker-compose.dev.yml up --build api

client:
	docker-compose -f docker-compose.prod.yml -f docker-compose.dev.yml up --build client

seed:
	docker-compose -f docker-compose.prod.yml -f docker-compose.seed.yml up --build api