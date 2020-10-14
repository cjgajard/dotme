_configfolder_load() {
  local f="${1#configfolder_}"
  COMPREPLY+=($(cd $CONFIGFOLDER/bash/$f &>/dev/null;
    compgen -G "$2*.sh" | xargs -r basename -s .sh))
}
complete -F _configfolder_load configfolder_plugin
complete -F _configfolder_load configfolder_lib
