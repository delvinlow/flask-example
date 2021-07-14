#!/bin/bash

echo "Building an image"
docker build -t delvinlow/flask-example .

echo "Saving image to a local file"
docker save delvinlow/flask-example > flask-example.tar

# Or push to Docker Hub or a Container Registry
#echo "Pushing image to Docker Hub"
#docker push <hub-user>/<repo-name>:<tag>