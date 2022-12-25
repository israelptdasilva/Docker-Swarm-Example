#!/bin/bash

REGISTRY_HOST=localhost
REGISTRY_PORT=5000

# Registry service setup
sudo docker service create \
  --name registry \
  --publish published=$REGISTRY_PORT,target=$REGISTRY_PORT \
  registry:2

# Build and push service images to local registry
APP_BUILD_CONTEXT=./services/app/.
APP_IMAGE_NAME=$REGISTRY_HOST:$REGISTRY_PORT/app:latest
sudo docker image build $APP_BUILD_CONTEXT --tag $APP_IMAGE_NAME
sudo docker image push $APP_IMAGE_NAME

sudo docker stack deploy -c ./services/docker-compose.yml service
