. `dirname ${BASH_SOURCE}`/../bash/lib/me.sh

me_nvim_icon() {
  # TODO: download https://raw.githubusercontent.com/neovim/neovim/master/runtime/nvim.png
  sudo sed -i "s/^Name=.*/Name=Neovim/" /usr/local/share/applications/emacs.desktop
  sudo sed -i "s|^Icon=.*|Icon=$HOME/Public/nvim.png|" /usr/local/share/applications/emacs.desktop
}

me_nvim_src() {
  set -e
  # TODO: Add src download
  sudo apt install libjpeg-dev libgif-dev libtiff-dev
  sudo apt install libgtk-3-dev
  sudo apt install libxpm-dev libgnutls28-dev
  sudo apt install libmagickwand-dev
  ./configure --with-imagemagick
  make
  sudo make install
}

me_installnvim() {
  me_install nvim/emacs.d ~/.emacs.d
}

if [ $0 == "$BASH_SOURCE" ]; then
  me_ask "Install nvim binary from source?" && me_nvim_src
  me_ask "Install nvim?" && me_installnvim
  exit 0
fi
