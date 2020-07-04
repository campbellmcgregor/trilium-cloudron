#!/bin/bash

set -eu


cd /app/code/trilium-linux-x64-server

exec /usr/local/bin/gosu cloudron:cloudron /app/code/trilium-linux-x64-server/trilium.sh

