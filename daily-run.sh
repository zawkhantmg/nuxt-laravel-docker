#!/bin/bash

# Daily Runnin Project
Cyan='\033[0;36m'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORM=$(tput sgr0)

docker-compose up -d

echo

echo -e "${Cyan}${BOLD}Daily Running Project${NC}${NORM}"

echo

docker container ls -a
