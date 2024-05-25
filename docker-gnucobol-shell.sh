#!/bin/bash

source ./gnucobol-lib.sh

docker exec -i gnucobol sh || error_exit_w

ok_exit_w
