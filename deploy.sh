#!/bin/bash

# Variables
DEV_IMAGE="harirajanrajendran/devv2:latest"
PROD_IMAGE="harirajanrajendran/prodv2:latest"

# Pull the latest images from Docker Hub
echo "Pulling the latest images from Docker Hub..."
docker pull $DEV_IMAGE
docker pull $PROD_IMAGE

# Stop and remove any existing containers with the same name
echo "Stopping and removing any existing containers..."
docker stop myapp_dev || true
docker rm myapp_dev || true
docker stop myapp_prod || true
docker rm myapp_prod || true

# Run the Docker containers with modified ports
echo "Deploying the application in development mode..."
docker run -d --name myapp_dev -p 80:80 $DEV_IMAGE

echo "Deploying the application in production mode..."
docker run -d --name myapp_prod -p 80:80 $PROD_IMAGE

echo "Deployment completed."

