#!/usr/bin/env bash

me_ask() {
  read -p "$1 [y|N] " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    return 1
  fi
  return 0
}

me_install() {
  local usage="usage: me_install SOURCE_FILE DESTINATION_FILE"
  local src="$(cd `dirname ${BASH_SOURCE}`/../../; pwd -P)/$1"
  local dd=`dirname $2`
  [[ "${src}" == "" || "$2" == "" ]] && echo $usage && return 1
  [[ ! -e ${src} ]] && echo "file \`${src}\` does not exist" && return 1
  [[ ! -d ${dd} ]] && mkdir -p ${dd}
  ln -sf $src $2
  echo "Installed $src into $2"
}
