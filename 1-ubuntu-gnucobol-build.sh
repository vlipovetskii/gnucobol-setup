#!/bin/bash

source ./gnucobol-lib.sh

sudo apt update && sudo apt install -y wget make gcc libgmp-dev libdb-dev libncurses-dev \
    && wget https://sourceforge.net/projects/gnucobol/files/gnucobol/3.2/gnucobol-3.2.tar.gz \
    && tar -xvzf gnucobol-3.2.tar.gz \
	&& cd gnucobol-3.2 \
    && ./configure \
    && make \
    && sudo make install \
    && sudo ldconfig

ok_exit_w