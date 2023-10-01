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
## Docker (pre-built in)
## Nginx
sudo apt install nginx

# Clone the GitHub repo
git clone https://github.com/hilmyveradin/focusstopwatch-vue.git

# Move the directory to focusstopwatch-vue
cd /home/"$USERNAME"/focus-stopwatch

# Run the docker container
docker-compose up -d --build
