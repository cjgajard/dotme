_me_load() {
  local type="${1#me_}"
  local bash="$(cd `dirname ${BASH_SOURCE}`; pwd -P)"
  COMPREPLY+=($(cd $bash/$type &>/dev/null;
    compgen -G "$2*.sh" | xargs -r basename -s .sh))
}
complete -F _me_load me_plugin
complete -F _me_load me_lib
