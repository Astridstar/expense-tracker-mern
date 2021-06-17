#!/bin/bash

echo "Create mongodb database directories"
mkdir -pv /home/$(whoami)/mongodb/database

#echo "Run docker-compose"
#docker-compose -f docker-compose-mongodb.yml up -d --force-recreate --no-build
#docker-compose up -d --force-recreate --no-build

echo "Build and run docker-compose"
docker-compose up --build -d