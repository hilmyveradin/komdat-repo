#!/bin/bash

# Prompt the user for their username
read -p "Enter your username: " USERNAME

echo "You entered the username: $USERNAME"

sudo apt-get update

## Install SSH
sudo apt-get install ssh -y

## NVM and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install 17.9.1

## Install Docker
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce

## Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

## Nginx
sudo apt install nginx

# Clone the GitHub repo
git clone https://github.com/hilmyveradin/focusstopwatch-vue.git

# Move the directory to focusstopwatch-vue
cd focusstopwatch-vue

# Run the docker container
docker-compose up -d --build
