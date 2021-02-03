export CONFIGFOLDER="$(cd `dirname ${BASH_SOURCE}`/..; pwd -P)"

configfolder_lib() {
  for i in "$@"; do
    . "$CONFIGFOLDER/bash/lib/$i.sh"
  done
}

configfolder_plugin() {
  for i in "$@"; do
    . "$CONFIGFOLDER/bash/plugin/$i.sh"
  done
}

configfolder_smart_plugins() {
  if [[ -f 'Gemfile' ]]; then
    echo 'rails'
    echo 'rbenv'
  fi

  if [[ -f 'package.json' ]]; then
    echo 'node'
  fi

  if [[ -f 'yarn.lock' ]]; then
    echo 'yarn'
  fi

  if [[ -f 'AndroidManifest.xml' ]]; then
    echo 'android-tools'
  fi

  if [[ -f 'manage.py' ]]; then
    echo 'django'
  fi

  if [[ -f 'go.mod' ]]; then
    echo 'go'
  fi
}

# ?
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# load libraries
configfolder_lib ${library[@]}

# automatically detect plugins
if [ "$smart_plugin" = true ]; then
  plugin+=($(configfolder_smart_plugins))
fi

# load plugins
configfolder_plugin ${plugin[@]}

# load theme
if [ -n "$theme" ]; then
  . "$CONFIGFOLDER/bash/theme/$theme.sh"
fi

# load completions
. "$CONFIGFOLDER/bash/completion.sh"
