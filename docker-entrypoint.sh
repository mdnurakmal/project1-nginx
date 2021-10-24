#!/usr/bin/env sh
set -eu

echo hello

envsubst '${1}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/nginx.conf

exec "$@"