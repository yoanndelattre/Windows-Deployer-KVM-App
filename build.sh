#!/bin/bash
docker pull ubuntu:latest
docker run -it --rm -v "$PWD:/app" --workdir="/app" ubuntu:latest sh -c "apt update && apt install make && make build"
docker rmi ubuntu:latest