#!/bin/bash

# Check Running Containers
Cyan='\033[0;36m'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORM=$(tput sgr0)

echo
echo -e "${Cyan}${BOLD}Check Running Containers ..${NC}${NORM}"
echo
docker container ls -a
