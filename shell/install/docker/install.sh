#!/bin/bash

PS3='Do your OS ? Please enter your choice: '
options=("CentOS" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "CentOS")
            ./shell/install/docker/centos.sh
            ;;
        "Quit")
            exit
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done