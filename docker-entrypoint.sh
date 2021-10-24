#!/usr/bin/env sh
set -eu

echo hello $1
WEB_URL=$1

envsubst '${WEB_URL}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/nginx.conf

#exec "$@"