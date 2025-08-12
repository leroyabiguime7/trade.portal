#!/bin/bash

echo "Testing the development container setup..."
echo "Building the development container..."
docker compose --profile dev build trade-portal-dev

if [ $? -eq 0 ]; then
    echo "Build successful! Starting the development container..."
    docker compose --profile dev up trade-portal-dev
else
    echo "Build failed!"
    exit 1
fi