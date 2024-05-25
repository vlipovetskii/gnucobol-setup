#!/bin/bash

source ./gnucobol-lib.sh

cp gnucobol-from-deb-ubuntu-dockerfile gnucobol-dockerfile || error_exit_w

cat ./gnucobol-dockerfile

ok_exit_w