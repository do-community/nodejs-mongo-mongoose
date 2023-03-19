# USING BASH SCRIPT TO INSTALL HADOLINT

# Hadolint automates the detection of Dockerfile issues. 
#This helps your Docker images adhere to best practices and organizational standards.

#!/usr/bin/env bash

# Installing Hadolint
sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64

sudo chmod +x /bin/hadolint
