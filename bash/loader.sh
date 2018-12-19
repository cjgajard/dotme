case $- in
    *i*) ;;
      *) return;;
esac

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

for i in ${library[@]}; do
    if [ -f $CARLSH/bash/lib/$i.sh ]; then
        source $CARLSH/bash/lib/$i.sh
    fi
done

__load_bash_plugin() {
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
}

smart_plugins=()
if [ "$smart_plugin" = true ]; then
  smart_plugins=$(__smart_bash_plugins)
fi

plugin=(${smart_plugins[@]} ${plugin[@]} user)
for i in ${plugin[@]}; do
  __load_bash_plugin $i
done
