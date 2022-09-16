#!/bin/bash
DIR=$(dirname $0)
source "$DIR/comp_env_values.sh"
LD_LIBRARY_PATH="$FAISS_LIB:$TILEDB_LIB" $*
#export FAISS_LIB=/usr/local
#export PROMETHEUS_CPP_LIB=/usr/local/prometheus-cpp/lib
#export TILEDB_LIB=/usr/local/tiledb/lib
