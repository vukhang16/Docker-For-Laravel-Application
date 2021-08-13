up: 
	- docker-compose -f docker-compose.development.yml up
up-d:
	- docker-compose -f docker-compose.development.yml up -d
down:
	- docker-compose -f docker-compose.development.yml down
destroy:
	- docker-compose -f docker-compose.development.yml down --rmi local
start:
	- docker-compose -f docker-compose.development.yml start
stop:
	- docker-compose -f docker-compose.development.yml stop
check-container:
	- docker ps
composer-update:
	- docker-compose -f docker-compose.development.yml run --rm composer update
node-install:
	- docker-compose -f docker-compose.development.yml run --rm node install
node-build:
	- docker-compose -f docker-compose.development.yml run --rm node run dev
artisan-migrate:
	- docker-compose -f docker-compose.development.yml run --rm artisan migrate
artisan-migrate-fresh:
	- docker-compose -f docker-compose.development.yml run --rm artisan migrate:fresh
artisan-migrate-fresh-seeder:
	- docker-compose -f docker-compose.development.yml run --rm artisan migrate:fresh --seeder