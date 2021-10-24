#!/usr/bin/env sh
set -eu

echo hello from docker-entrypoint.sh $_WEB_URL


envsubst '${_WEB_URL}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/nginx.conf

exec "$@"