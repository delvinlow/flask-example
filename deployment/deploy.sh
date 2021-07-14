#!/bin/bash

echo "Loading an image" # Alternative is to pull from a registry
docker load < flask-example.tar

CURRENT_ENV="sit" # From CD tool

echo "Run a container"
docker run \
--name my-flask-app \
-p 8080:5000 \
--rm \
-d \
--env-file="./deployment/${CURRENT_ENV}.env" \
delvinlow/flask-example