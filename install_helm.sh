#!/bin/bash

# Install the correct helm3 version on ubuntu
cd
# Change the version if there is a newer version
wget https://get.helm.sh/helm-v3.4.1-linux-amd64.tar.gz  
tar xvf helm-v3.4.1-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin
rm helm-v3.4.1-linux-amd64.tar.gz
rm -rf linux-amd64
# if there was a previous helm version, this will fail
helm version
# Just in case, reset user context
su - ${USER}
