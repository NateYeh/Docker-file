#!/bin/bash

set -x
set -e

timestamp=$(date +%Y%m%d)
echo $timestamp

if [ "$1" = "16" ]; then
    sudo docker build -f Dockerfile16 -t nate16:$timestamp .
elif [ "$1" = "16no" ]; then
    sudo docker build -f Dockerfile16 -t nate16:$timestamp . --no-cache
elif [ "$1" = "18" ]; then
    sudo docker build -f Dockerfile18 -t make18:$timestamp .
elif [ "$1" = "18no" ]; then
    sudo docker build -f Dockerfile18 -t make18:$timestamp . --no-cache
elif [ "$1" = "20" ]; then
    sudo docker build -f Dockerfile20 -t make20:$timestamp .
elif [ "$1" = "20no" ]; then
    sudo docker build -f Dockerfile20 -t make20:$timestamp . --no-cache
elif [ "$1" = "office" ]; then
    sudo docker build -f DockerfileOffice -t office:$timestamp .
elif [ "$1" = "home" ]; then
    sudo docker build -f Dockerfilehome -t home:$timestamp .    
else
    echo "There are no match."
fi
