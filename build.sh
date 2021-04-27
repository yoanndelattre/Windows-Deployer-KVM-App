#!/bin/bash
docker pull ubuntu
docker run -it --rm -v "$PWD:/app" ubuntu:latest sh -c "apt update && apt install make && make build"
docker rmi ubuntu