#!/bin/bash

# Stop any running container
if [ "$(docker ps -q -f name=node-app)" ]; then
    docker stop node-app
    docker rm node-app
fi

# Pull the latest image from ECR
$(aws ecr get-login --no-include-email --region ap-south-1)
docker pull 471112992707.dkr.ecr.ap-south-1.amazonaws.com/node-app:latest

# Run the new container
docker run -d -p 3000:3000 --name node-app 471112992707.dkr.ecr.ap-south-1.amazonaws.com/node-app:latest



# forever start /var/nodeapp/src/index.js
