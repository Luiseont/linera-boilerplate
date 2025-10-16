#!/bin/bash

export LOCAL_UID=$(id -u)
export LOCAL_GID=$(id -g)
chmod +x entrypoint.sh
docker compose up "$@" --build