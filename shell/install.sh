#!/bin/bash

PS3='Do you want to install ? Please enter your choice: '
options=("Docker" "SSL" "SWAP" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Docker")
            ./shell/install/docker/install.sh
            ;;
        "SSL")
            echo "SSL"
            ;;
        "SWAP")
            ./install/swap/run.sh
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done