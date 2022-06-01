#!/bin/sh

cd /var/www/html

cp .env.docker .env

composer install

php artisan view:clear 
php artisan cache:clear
php artisan route:clear
php artisan config:clear
php artisan optimize

php artisan key:generate
php artisan storage:link


php artisan migrate:fresh --seed