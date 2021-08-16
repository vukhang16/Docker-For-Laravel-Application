include ./Makefiles/*.mk

up: compose-up-d
start: compose-start
stop: compose-stop
check: compose-ps
refresh-db: compose-migrate-fresh-seeder