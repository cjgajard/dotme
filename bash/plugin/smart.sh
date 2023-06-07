#!/usr/bin/env bash

me_smart_plugins() {
  if [[ -f 'Gemfile' ]]; then
    echo 'rails'
    echo 'rbenv'
  fi

  if [[ -f '.nvmrc' || -f 'package.json' ]]; then
    echo 'nvm'
    echo 'node'
  fi

  if [[ -f 'tsconfig.json' ]]; then
    echo 'typescript'
  fi

  if [[ -f 'bun.lockb' ]]; then
    echo 'bun'
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

  if [[ `pwd` =~ "$HOME/ripley" ]]; then
    echo 'ripley'
  fi

  if [[ -f 'Cargo.toml' ]]; then
    echo 'rust'
  fi
}

# load plugins
me_plugin $(me_smart_plugins)
