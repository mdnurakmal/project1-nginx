#!/usr/bin/env sh
set -eu

echo hello

_WEBSOCKET_URL=$(cat /workspace/WEB_URL)

envsubst '${_WEBSOCKET_URL}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/nginx.conf

exec "$@"