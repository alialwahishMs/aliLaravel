#!/bin/bash 

sed 's/wwwroot/wwwroot\/public/' /etc/nginx/sites-enable/default
service nginx reload

cd /home/site/wwwroot && cp -n .env.examples .env 
php artisan key:generate