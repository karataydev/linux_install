#!/bin/bash

get_current_directory() {
    current_file="${PWD}/${0}"
    echo "${current_file%/*}"
}

CWD=$(get_current_directory)

echo $CWD/ascii.sh
# be fancy
source $CWD/ascii.sh

# install scripts
for script in $CWD/install/*.sh; do source $script; done
