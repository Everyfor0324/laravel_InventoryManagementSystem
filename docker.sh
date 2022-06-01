#!/bin/sh

docker-compose build app
docker-compose up -d

cd /var/www

# php artisan migrate:fresh --seed
php artisan view:clear 
php artisan cache:clear
php artisan route:clear
php artisan config:clear
php artisan optimize

php artisan key:generate
php artisan storage:link
php artisan migrate:fresh --seed