#!/bin/bash

# Automated Docker Deployment Script

# Function to build the Docker image
build() {
    echo "Building Docker image..."
    docker build -t my-image .
}

# Function to run the Docker container
run() {
    echo "Running Docker container..."
    docker run -d -p 80:80 my-image
}

# Function to push the Docker image to a registry
push() {
    echo "Pushing Docker image to registry..."
    docker push my-image
}

# Check the command argument and execute the corresponding function
case "$1" in
    build)
        build
        ;; 
    run)
        run
        ;; 
    push)
        push
        ;;
    *)
        echo "Usage: $0 {build|run|push}"
        exit 1
esac
