#!/bin/bash

install_extra=1

for opt in "$@"; do
  case $opt in
    --no-extra) install_extra=0 ;;
    *)
      echo "unknown option: $opt"
      help
      exit 1
      ;;
  esac
done

get_current_directory() {
    current_file="${PWD}/${0}"
    echo "${current_file%/*}"
}

CWD=$(get_current_directory)

echo $CWD/ascii.sh
# be fancy
source $CWD/ascii.sh

# install scripts
for script in $CWD/install/*.sh; do
	if [[ $install_extra -eq 1 ]] || [[ $script != $CWD/install/extra_*.sh ]] ;
	then
		echo $script;
		source $script;
	fi
done
