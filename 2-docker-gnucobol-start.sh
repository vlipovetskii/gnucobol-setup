#!/bin/bash

source ./gnucobol-lib.sh

# --- docker container start https://docs.docker.com/reference/cli/docker/container/start/
docker container start gnucobol || error_exit_w

ok_exit_w
