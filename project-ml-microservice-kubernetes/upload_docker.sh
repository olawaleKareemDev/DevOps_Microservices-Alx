#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=olawale100/alx-devops/flaskapp:v8


# Step 2:  
# Authenticate & tag


echo "Docker ID and Image:$dockerpath"
docker tag  olawale100/alx-devops/flaskapp:v8 olawale100/alx-devops:latest
docker login -u olawale100 $password

# Step 3:
# Push image to a docker 
docker push olawale100/alx-devops:latest

