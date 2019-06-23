#!/usr/bin/env bash

if [[ -z $CONTAINER_VERSION ]]; then 
  echo Specify a version for the docker container by providing an environment variable called CONTAINER_VERSION
  exit 1
fi

docker rmi birchwoodlangham/ubuntu-jdk-development:latest
docker build -t birchwoodlangham/ubuntu-jdk-development:latest .
docker tag birchwoodlangham/ubuntu-jdk-development:latest birchwoodlangham/ubuntu-jdk-development:$CONTAINER_VERSION
