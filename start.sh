#!/bin/bash

cp ./.env.production ./.env
sudo chmod -R 755 ./shell
./shell/help/Signature.sh

PS3='Please enter your choice: '
options=("Install" "Deploy" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Install")
			./shell/install.sh
            ;;
        "Deploy")
            ./shell/deploy/run.sh
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done