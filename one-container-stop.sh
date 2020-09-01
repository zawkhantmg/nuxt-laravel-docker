#!/bin/bash

# One Container Stop and Remove - give container name
Cyan='\033[0;36m'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORM=$(tput sgr0)

echo
echo -e "${Cyan}${BOLD}Please give your container name${NC}${NORM}"
echo
# Get Container Name
echo -n "containerName: "
read containerName

docker container stop $containerName
docker container prune -f
