#!/bin/bash

source ./gnucobol-lib.sh

# --- docker exec https://docs.docker.com/reference/cli/docker/container/exec/
echo ""
echo "=== cat /etc/os-release ==="
echo ""
docker exec gnucobol cat /etc/os-release || error_exit_w

ok_exit_w
