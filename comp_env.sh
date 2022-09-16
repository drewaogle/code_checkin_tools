#!/bin/bash
DIR=$(dirname $0)
printf "Sourcing %s\n" "${DIR}/comp_env_values.sh"
source ${DIR}/comp_env_values.sh

$*
