#!/bin/bash
docker pull golang:latest
docker run -it --rm -v "$PWD:/app" golang:latest bash /app/build_binaries.sh
docker rmi golang:latest