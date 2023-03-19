# Script on steps to install kubernetes kompose

#!/usr/bin/env bash

#installing binary file from a git hub repo
curl -L https://github.com/kubernetes/kompose/releases/download/v1.18.0/kompose-linux-amd64 -o kompose

#making binary executable
chmod +x kompose

#moving to PATH
sudo mv ./kompose /usr/local/bin/kompose

#verify installation
kompose version
