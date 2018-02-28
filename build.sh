#!/usr/bin/env bash

VERSION=2018-03

docker build -t birchwoodlangham/ubuntu-jdk-development:$VERSION .
docker tag birchwoodlangham/ubuntu-jdk-development:$VERSION birchwoodlangham/ubuntu-jdk-development:latest
