#!/bin/bash

#-- env_set_content --

# --- docker exec https://docs.docker.com/reference/cli/docker/container/exec/
# To run on host
# shellcheck disable=SC2034
GNUCOBOL_DOCKER_EXEC=""
# To run in docker container
# GNUCOBOL_DOCKER_EXEC="docker exec gnucobol"

GNUCOBOL_PROJECTS_ROOT_ON_HOST="$HOME/cbl-prj"
GNUCOBOL_PROJECTS_ROOT_IN_DOCKER="/cbl-prj"

#-- env_set_content --

function ok_exit_w {

	read -rp "OK. Press [Enter] key to exit. Or Ctrl-C to stay in terminal."
	exit

}

function error_exit_w {

	# echo "errno=$1"

	read -rp "Error. Press [Enter] key to exit. Or Ctrl-C to stay in terminal."
	exit

}

function check_parameter() {
  local -r parameter_name=$1
  local -r parameter_value=$2
  [ "$parameter_value" != "" ] || (echo "${FUNCNAME[1]}: $parameter_name is empty" && error_exit_w)
}

function gnucobol_command() {

    local command=$1
    check_parameter "command" "$command"

    command="$GNUCOBOL_DOCKER_EXEC $command || error_exit_w"

    echo ""
    echo "$command"
    echo ""
    # --- How to run string with values as a command in bash? https://unix.stackexchange.com/questions/356534/how-to-run-string-with-values-as-a-command-in-bash
    eval "$command"

}