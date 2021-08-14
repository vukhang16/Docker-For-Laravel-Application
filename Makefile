include ./Makefiles/*.mk

run:
	- make compose-up-d
stop:
	- make compose-stop
check:
	- make compose-ps
refresh-db:
	- make artisan-migrate-fresh-seeder