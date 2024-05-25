#!/bin/bash

source ./gnucobol-lib.sh

# --- docker container stop https://docs.docker.com/reference/cli/docker/container/stop/
docker container stop gnucobol || error_exit_w

ok_exit_w
