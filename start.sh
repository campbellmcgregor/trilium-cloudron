#!/bin/bash

set -eu


cd /app/code/linux-x64-server

# chown cloudron:cloudron /app/code -R

exec /usr/local/bin/gosu cloudron:cloudron /app/code/trilium-linux-x64-server/trilium.sh

#exec /usr/bin/supervisord --configuration /etc/supervisor/supervisord.conf --nodaemon -i trilium