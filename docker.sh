#!/bin/sh

cp .env.docker .env

docker-compose up -d
docker-compose exec app bash

# php artisan migrate:fresh --seed
php artisan view:clear 
php artisan cache:clear
php artisan route:clear
php artisan config:clear
php artisan optimize

php artisan key:generate
php artisan storage:link
php artisan migrate:fresh --seed