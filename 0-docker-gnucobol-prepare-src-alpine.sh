#!/bin/bash

source ./gnucobol-lib.sh

cp gnucobol-from-src-alpine-dockerfile gnucobol-dockerfile || error_exit_w

cat ./gnucobol-dockerfile

ok_exit_w