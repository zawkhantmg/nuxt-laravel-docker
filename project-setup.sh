#!/bin/bash

# Project Setup
Cyan='\033[0;36m'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORM=$(tput sgr0)

cd "api"
cp .env.sample .env
composer install
composer dump-autoload
cd "../client"
cp .env.sample .env
yarn install
cd ".."
docker-compose up --build -d
docker container ls -a
echo

echo -e "${Cyan}${BOLD}Successfully Project Setup${NC}${NORM}"