#!/bin/bash

source ./shell/Enviroment.sh

cp ./.env.production ./.env
sudo chmod -R 755 ./shell

./shell/Enviroment.sh
./shell/Signature.sh

# ./shell/CreateUser.sh
./shell/UbuntuFirewall.sh
./shell/PublishProject.sh

./shell/Signature.sh