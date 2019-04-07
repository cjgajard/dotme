case $- in
    *i*) ;;
      *) return;;
esac

__bash_plugin() {
  if [ -f $CARLSH/bash/plugin/$1.sh ]; then
      source $CARLSH/bash/plugin/$1.sh
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

  if [[ -f 'AndroidManifest.xml' ]]; then
    echo 'android-tools'
  fi
}

# ?
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# load libraries
. $CARLSH/bash/lib/base.sh
for i in ${library[@]}; do
    if [ -f $CARLSH/bash/lib/$i.sh ]; then
        . $CARLSH/bash/lib/$i.sh
    fi
done

# automatically detect plugins
smart_plugins=()
if [ "$smart_plugin" = true ]; then
  smart_plugins=$(__smart_bash_plugins)
fi

# load all plugins
plugin=(${smart_plugins[@]} ${plugin[@]} user)
for i in ${plugin[@]}; do
  __bash_plugin $i
done

# load theme
[[ -n $theme ]] && . $CARLSH/bash/theme/$theme.sh
PS1=$THEME_PROMPT
