#!/bin/bash
composeFilePath=$( cd "$(dirname "$0")" ; pwd -P )

if [ "$1" == "init" ]; then
    docker-compose -f "$composeFilePath"/docker-compose.yml  up -d
elif [ "$1" == "up" ]; then
    docker-compose -f "$composeFilePath"/docker-compose.yml  up -d
elif [ "$1" == "down" ]; then
    docker-compose -f "$composeFilePath"/docker-compose.yml  stop
elif [ "$1" == "destroy" ]; then
    docker-compose -f "$composeFilePath"/docker-compose.yml  down -v
else
    echo "Valid options are: init, up, down, or destroy"
fi
