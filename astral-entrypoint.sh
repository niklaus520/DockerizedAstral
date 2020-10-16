#!/usr/bin/env sh
set -e

php artisan migrate
php-fpm --daemonize

/usr/bin/caddy run -config /etc/Caddyfile
