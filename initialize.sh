#!/bin/bash

# Install required dependencies
sudo apt-get update

##Install SSH
sudo apt-get install ssh -y
## NVM and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install 17.9.1
## Docker (pre built in)
## Nginx
sudo apt install nginx

# Clone the github repo
git clone https://github.com/hilmyveradin/focusstopwatch-vue.git

# Move the directory to focusstopwatch-vue
cd /home/ubuntu/focus-stopwatch

# Run the docker container
docker-compose up -d --build