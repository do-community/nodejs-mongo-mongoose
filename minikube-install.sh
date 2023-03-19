# USING BASH SCRIPT TO INSTALL AND START A KUBERNETES CLUSTER

#!/usr/bin/env bash

# step 1:
# Installing minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Step 2:
# Test the installation
minikube version

# Step 3:
# Start the kubernetes cluster
# minikube start
sudo minikube start --force

# Step 4:
# List kubernetes pods
# minikube kubectl -- get pods -A
sudo minikube kubectl -- get pods -A
