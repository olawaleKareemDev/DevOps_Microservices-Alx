#!/usr/bin/env bash

# This is your Docker ID/path
 dockerpath=olawale100/alx-devops:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run flask-app --image=olawale100/alx-devops:latest  --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 100
kubectl port-forward flask-app 8000:80

