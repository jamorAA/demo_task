#!/bin/bash

DEST="./nginx_backup/"
mkdir -p "$DEST"

DATE=$(date -u +"%Y-%m-%d_%H-%M-%S")
ARCHIVE="nginx_backup_$DATE.tgz"

docker cp nginx:/etc/nginx/ "$DEST"
cd ./nginx_backup/
SRC="./nginx/"
tar -czf "$ARCHIVE" "$SRC"
rm -rf "$SRC"
