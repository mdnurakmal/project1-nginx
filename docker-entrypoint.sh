#!/usr/bin/env sh
set -eu

echo hello
echo $WEBSOCKET_URL
envsubst '${WEBSOCKET_URL}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/nginx.conf

exec "$@"