#!/bin/bash

# Build the Docker image
docker build -t harirajanrajendran/myappv01:latest .

# Tag the image for dev and prod repositories
docker tag harirajanrajendran/myappv01:latest harirajanrajendran/devv2:latest
docker tag harirajanrajendran/myappv01:latest harirajanrajendran/prodv2:latest

# Push the images to Docker Hub
docker push harirajanrajendran/devv2:latest
docker push harirajanrajendran/prodv2:latest

