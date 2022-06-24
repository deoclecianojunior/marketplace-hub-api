.PHONY: up down build reload console run-unit-tests

up:
	docker-compose up -d;

down:
	docker-compose down;

build:
	docker-compose build;

reload: down up;

console:
	docker exec -it php_for_sale bash;

logs:
	docker logs php_for_sale -f;

run-unit-tests:
	docker exec php_for_sale sh -c "cd app; vendor/bin/phpunit";
