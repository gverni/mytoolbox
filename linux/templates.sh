#!/bin/bash

die() {
    echo "error: $*" >&2
    exit 1
}

# High priority log message
log() {
    echo
    echo "[1;32m> [1;37m$*[0m"
    echo
}

# low(er) priority log message
log2() {
    echo "[1;34m * [1;37m$*[0m"
}


# Check how many arguments have been passed 
num_expected_arg=1 # Add here number of expected arguments
if [ $# -n  $num_expected_arg]; then
    # Add here usage
    die "Usage: ....."
fi

# Check env variable are set 
# Replace ENV_VARIABLE with your variable 
if [ ! -d "$ENV_VARIABLE" ]; then
    die "You must set ENV_VARIABLE"
fi

# Add here commands to be executed
