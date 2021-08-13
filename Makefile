include ./Makefiles/*.mk

check:
	- make check-container

refresh-db:
	- make artisan-migrate-fresh-seeder