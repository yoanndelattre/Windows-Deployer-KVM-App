#!/bin/bash
docker pull ubuntu:latest
docker run -it --rm -v "$PWD:/app" ubuntu:latest sh -c "apt update && apt install -y make && make -f /app/Makefile build"
docker rmi ubuntu:latest