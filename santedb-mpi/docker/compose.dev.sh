#!/bin/bash
composeFilePath=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

if [ "$1" == "init" ]; then
    docker-compose -f "$composeFilePath"/docker-compose.dev.yml  up -d
    echo "Deploying initial data to development instance..."
    docker cp ""$composeFilePath"/../data/" "santedb-mpi:/santedb"
elif [ "$1" == "up" ]; then
    docker-compose -f "$composeFilePath"/docker-compose.dev.yml  up -d
elif [ "$1" == "down" ]; then
    docker-compose -f "$composeFilePath"/docker-compose.dev.yml  stop
elif [ "$1" == "destroy" ]; then
    docker-compose -f "$composeFilePath"/docker-compose.dev.yml  down -v
else
    echo "Valid options are: init, up, down, or destroy"
fi
