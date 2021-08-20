include ./Makefiles/*.mk

up: compose-up-d
down: compose-down-rmi-local
start: compose-start
stop: compose-stop
check: compose-ps
optimize: artisan-optimize-clear
refresh: artisan-migrate-fresh-seeder