# USING BASH SCRIPT TO TAG AND UPLOAD AN IMAGE TO DOCKER HUB

#!/usr/bin/env bash

# Assumes that an image is built via `run_docker-compose.sh`

# Step 1:
# Create dockerpath
dockerpath=nodejs

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u virgoinvincible

#Step 3:
# Tag the images with your Docker ID
docker tag $dockerpath:latest virgoinvincible/$dockerpath

# Step 4:
# Push image to a docker repository
docker push virgoinvincible/$dockerpath
