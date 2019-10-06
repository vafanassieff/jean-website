#!/usr/bin/env bash

set -e

IMAGE_NAME="docker.pkg.github.com/vafanassieff/jean-website/website"

if [ "$1" == "github" ]; then
    cd docker
    rm -rf ./dist
    cp -r ../src ./dist
    docker build -t $IMAGE_NAME:latest .
    docker push $IMAGE_NAME
    echo "Image built √"
else
    cd docker
    rm -rf ./dist
    cp -r ../src ./dist
    docker build  -t $IMAGE_NAME:latest .
fi
