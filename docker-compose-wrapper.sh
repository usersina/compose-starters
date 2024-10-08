#!/bin/sh

if command -v docker-compose >/dev/null 2>&1; then
    docker-compose "$@"
elif command -v docker >/dev/null 2>&1 && docker compose version >/dev/null 2>&1; then
    docker compose "$@"
else
    echo "Neither docker-compose nor docker compose is available."
    exit 1
fi
