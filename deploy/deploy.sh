#!/bin/bash

echo "Create mongodb database directories"
mkdir -pv /home/$(whoami)/mongodb/database

echo "Run docker-compose"
docker-compose up -d
