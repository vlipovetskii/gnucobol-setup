#!/bin/bash

source ./gnucobol-lib.sh

# --- docker exec https://docs.docker.com/reference/cli/docker/container/exec/
echo "=== ls -la ==="
echo ""
docker exec gnucobol ls -la || error_exit_w
echo ""
echo "=== ls $GNUCOBOL_PROJECTS_ROOT_IN_DOCKER -la ==="
echo ""
docker exec gnucobol ls "$GNUCOBOL_PROJECTS_ROOT_IN_DOCKER" -la || error_exit_w

ok_exit_w
