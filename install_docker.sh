#!/bin/bash

# Install the standard working docker ce on ubuntu 20.04

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
# Allow currernt user to execute docker without sudo
sudo usermod -aG docker ${USER}
su - ${USER}
docker info
