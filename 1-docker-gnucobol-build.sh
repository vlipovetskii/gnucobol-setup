#!/bin/bash

source ./gnucobol-lib.sh

# --- docker image build https://docs.docker.com/reference/cli/docker/image/build/
# -f, --file		Name of the Dockerfile (Default is PATH/Dockerfile)
# A build's context is the set of files located in the specified PATH
docker image build -f ./gnucobol-dockerfile -t gnucobol ./build-context || error_exit_w

docker container stop gnucobol
docker container rm gnucobol

# --- docker container run https://docs.docker.com/reference/cli/docker/container/run/
# -d, --detach		Run container in background and print container ID
# -i, --interactive		Keep STDIN open even if not attached
# --name		Assign a name to the container
# -v, --volume		Bind mount a volume
docker container run -d -i -v "$GNUCOBOL_PROJECTS_ROOT_ON_HOST:$GNUCOBOL_PROJECTS_ROOT_IN_DOCKER" \
  --name gnucobol gnucobol || error_exit_w
  
# --- docker image prune https://docs.docker.com/reference/cli/docker/image/prune/
# Remove all dangling images. If -a is specified, also remove all images not referenced by any container.
docker image prune -f || error_exit_w

ok_exit_w