. `dirname ${BASH_SOURCE}`/../bash/lib/me.sh

me_installxmodmap() {
  set -e

  cmd=$HOME/.Xmodmap
  desktopname=xmodmap.desktop

  if [ -f "${cmd}" ]; then
    echo "The file ${cmd} already exists."; exit 1
  fi

  ln -s $(readlink -f Xmodmap) ${cmd}

  autostart=$HOME/.config/autostart
  desktop=${autostart}/${desktopname}
  mkdir -p ${autostart}

  if [ -f "${desktop}" ]; then
    echo "The file ${desktop} alread exists."; exit 1
  fi

  ln -s $(readlink -f ${desktopname}) ${desktop}
}

if [ $0 == "$BASH_SOURCE" ]; then
  me_ask "Install xmodmap config?" && me_installxmodmap
  exit 0
fi
