composer-install:
	- docker-compose -f docker-compose.development.yml run --rm composer install
composer-install-production-mode:
	- docker-compose -f docker-compose.development.yml run --rm composer install --optimize-autoloader --no-dev
composer-update:
	- docker-compose -f docker-compose.development.yml run --rm composer update
composer-dump-autoload:
	- docker-compose -f docker-compose.development.yml run --rm composer dump-autoload
