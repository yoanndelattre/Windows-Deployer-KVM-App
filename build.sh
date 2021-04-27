#!/bin/bash
docker pull golang:latest
docker run -it --rm -v "$PWD:/app" golang:latest sh -c "apt update && apt install -y make && make -f /app/Makefile build"
docker rmi golang:latest