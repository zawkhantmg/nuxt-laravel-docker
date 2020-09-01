#!/bin/bash

# Migrate and Seed
Cyan='\033[0;36m'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORM=$(tput sgr0)

cd "api"
winpty docker exec -it nuxt-laravel-docker_api_1 composer dump-autoload
winpty docker exec -it nuxt-laravel-docker_api_1 php artisan migrate --seed
winpty docker exec -it nuxt-laravel-docker_api_1 php artisan config:clear
winpty docker exec -it nuxt-laravel-docker_api_1 php artisan cache:clear
winpty docker exec -it nuxt-laravel-docker_api_1 php artisan config:cache
winpty docker exec -it nuxt-laravel-docker_api_1 php artisan config:clear
winpty docker exec -it nuxt-laravel-docker_api_1 php artisan cache:clear
winpty docker exec -it nuxt-laravel-docker_api_1 php artisan route:clear
echo

echo -e "${Cyan}${BOLD}Successfully Migrate and Seeding.${NC}${NORM}"