#!/bin/bash

# Stop any running container
if [ "$(docker ps -q -f name=node-app)" ]; then
    docker stop node-app
    docker rm node-app
fi

# Pull the latest image from ECR
$(aws ecr get-login --no-include-email --region eu-north-1)
docker pull 339712999129.dkr.ecr.eu-north-1.amazonaws.com/node-app:latest

# Run the new container
docker run -d -p 3000:3000 --name node-app 339712999129.dkr.ecr.eu-north-1.amazonaws.com/node-app:latest



# forever start /var/nodeapp/src/index.js
