#!/bin/bash

# All Containers Stop and Remove
Cyan='\033[0;36m'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORM=$(tput sgr0)

echo
echo -e "${Cyan}${BOLD}All Containers Stop and Remove${NC}${NORM}"

docker-compose down