#!/bin/bash
set -e
umask 000

if [ -z "$PROJECT_NAME" ]; then
    echo "ERROR: La variable de entorno PROJECT_NAME no está definida."
    exit 1
fi


PROJECT_DIR="/usr/app/$PROJECT_NAME"

if [ ! -d "$PROJECT_DIR" ]; then

    linera project new "$PROJECT_NAME"

    if [ ! -z "$LOCAL_UID" ] && [ ! -z "$LOCAL_GID" ]; then
        chown -R "$LOCAL_UID":"$LOCAL_GID" /usr/app
    fi
fi


echo "Iniciando Bash interactivo..."
/bin/bash