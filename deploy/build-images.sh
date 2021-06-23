#!/bin/bash

docker-compose build

# Login to the repository
#echo $CR_PAT | docker login ghcr.io -u Astridstar --password-stdin

# Tagging the local built image
docker tag frontend:latest ghcr.io/astridstar/frontend:latest
docker tag backend:latest ghcr.io/astridstar/backend:latest

# Push image to the remote image repository
docker push ghcr.io/astridstar/frontend:latest
docker push ghcr.io/astridstar/backend:latest

# Build and run the frontend in local docker context
# docker-compose up --build -d