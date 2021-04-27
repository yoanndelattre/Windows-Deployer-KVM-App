#!/bin/bash
docker pull ubuntu:latest
docker run -it --rm -v "$PWD:/app" ubuntu:latest sh -c "apt update && apt install make && make build -f /app/Makefile"
docker rmi ubuntu:latest