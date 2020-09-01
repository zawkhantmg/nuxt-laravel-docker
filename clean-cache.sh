#!/bin/bash

# Clean Cache
Cyan='\033[0;36m'
NC='\033[0m' # No Color
BOLD=$(tput bold)
NORM=$(tput sgr0)

cd "api"
composer dump-autoload
php artisan config:clear
php artisan cache:clear
php artisan config:cache
php artisan config:clear
php artisan cache:clear
php artisan route:clear
cd "../client"

echo
echo -e "${Cyan}${BOLD}Clean Cache.${NC}${NORM}"