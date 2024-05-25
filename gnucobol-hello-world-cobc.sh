#!/bin/bash

source ./gnucobol-lib.sh

if [ "$GNUCOBOL_DOCKER_EXEC" == "" ]; then
  gnucobol_command "cobc -x -o hello-world.run ./src/hello-world.cbl"
else
  gnucobol_command "cobc -x -o $GNUCOBOL_PROJECTS_ROOT_IN_DOCKER/gnucobol/hello-world.run $GNUCOBOL_PROJECTS_ROOT_IN_DOCKER/gnucobol/src/hello-world.cbl"
fi

ok_exit_w
