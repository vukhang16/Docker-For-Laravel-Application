include ./Makefiles/*.mk

up: 
	- make compose-up-d
	- make composer-install
	- make npm-install
	- make artisan-storage-link
	- make db-refresh
down: compose-down-rmi-local
start: compose-start
stop: compose-stop
check: compose-ps
optimize: artisan-optimize-clear
db-refresh: artisan-migrate-fresh-seeder
clean-storage:
	- make npm-clean-storage
	- make artisan-storage-link
