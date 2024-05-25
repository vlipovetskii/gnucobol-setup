#!/bin/bash

source ./gnucobol-lib.sh

if [ "$GNUCOBOL_DOCKER_EXEC" == "" ]; then
  ./hello-world.run
else
  gnucobol_command "$GNUCOBOL_PROJECTS_ROOT_IN_DOCKER/gnucobol/hello-world.run" || error_exit_w
fi

ok_exit_w
