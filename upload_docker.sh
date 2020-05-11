#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=jmalovera10/predictor

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker login
sudo docker tag $dockerpath $dockerpath:version1.0

# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath