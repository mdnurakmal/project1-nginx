#!/usr/bin/env sh
set -eu

envsubst '${WEBSOCKET_URL}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/nginx.conf

exec "$@"