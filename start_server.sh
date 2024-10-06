#!/usr/bin/env bash
set -e

php-fpm8.2 &

exec nginx -g 'daemon off;'