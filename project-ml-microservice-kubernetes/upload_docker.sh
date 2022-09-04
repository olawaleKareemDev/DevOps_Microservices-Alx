#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=ml-k8-predict10/flaskapp:v8


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image:$dockerpath"
docker tag  ml-k8-predict10/flaskapp:v8 olawalekareemdev/alx-devops:latest
docker login -u olawalekareemdev $password

# Step 3:
# Push image to a docker 
docker push olawalekareemdev/alx-devops:latest

