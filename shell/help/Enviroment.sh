#!/bin/bash

echo " => Importing Enviroment"

unamestr=$(uname)
if [ "$unamestr" = 'Linux' ]; then
  	export $(grep -v '^#' .env | xargs -d '\n')
elif [ "$unamestr" = 'FreeBSD' ]; then
  	export $(grep -v '^#' .env | xargs -0)
fi

if ! [ -x "$(command -v docker-compose)" ]; then
  echo 'Error: docker-compose is not installed.' >&2
  exit 1
fi

echo " => Imported"