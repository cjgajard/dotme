CONFIGFOLDER="$(cd `dirname ${BASH_SOURCE}`/..; pwd -P)"

__bash_plugin() {
  if [ -f "$CONFIGFOLDER/bash/${2:-plugin}/$1.sh" ]; then
    source "$CONFIGFOLDER/bash/${2:-plugin}/$1.sh"
  fi
}

__smart_bash_plugins() {
  if [[ -f 'Gemfile' ]]; then
    echo 'rails'
    echo 'rbenv'
  fi

  if [[ -f 'package.json' ]]; then
    echo 'nvm'
    echo 'js'
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
}

# ?
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# load libraries
for i in ${library[@]}; do
  if [ -f $CONFIGFOLDER/bash/lib/$i.sh ]; then
    . $CONFIGFOLDER/bash/lib/$i.sh
  fi
done

# automatically detect plugins
if [ "$smart_plugin" = true ]; then
  plugin+=($(__smart_bash_plugins))
fi

for i in ${plugin[@]}; do
  __bash_plugin $i
done

# load theme
if [ -n "$theme" ]; then
  . $CONFIGFOLDER/bash/lib/theme.sh
  if [ -f $CONFIGFOLDER/bash/theme/$theme.sh ]; then
    . $CONFIGFOLDER/bash/theme/$theme.sh
  fi
  PS1=$THEME_PROMPT
fi
