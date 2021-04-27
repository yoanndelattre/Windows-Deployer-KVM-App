#!/bin/bash
docker pull ubuntu:latest
docker run -it --rm -v "$PWD:/app" ubuntu:latest sh -c "apt update && apt install make && cd /app && make build"
docker rmi ubuntu:latest