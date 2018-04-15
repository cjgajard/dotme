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
