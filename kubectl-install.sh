# INSTALL KUBECTL BINARY WITH CURL ON LINUX

#!/usr/bin/env bash

# Step1:
# Download the latest release with the command
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Step 2:
# Download the kubectl checksum file
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

# Step 3:
# Validate the kubectl binary against the checksum file
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

# Step 4:
# Install kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Step 5:
#  Install kubectl to the ~/.local/bin director
chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl
# and then append (or prepend) ~/.local/bin to $PATH

# Step 6:
# Test to ensure the version you installed is up-to-date
kubectl version --client --output=yaml
