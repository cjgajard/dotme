. `dirname ${BASH_SOURCE}`/../bash/lib/configfolder.sh

configfolder_nvim_icon() {
  # TODO: download https://raw.githubusercontent.com/neovim/neovim/master/runtime/nvim.png
  sudo sed -i "s/^Name=.*/Name=Neovim/" /usr/local/share/applications/emacs.desktop
  sudo sed -i "s|^Icon=.*|Icon=$HOME/Public/nvim.png|" /usr/local/share/applications/emacs.desktop
}

configfolder_nvim_src() {
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

configfolder_nvim() {
  configfolder_install nvim/emacs.d ~/.emacs.d
}

if [ $0 == "$BASH_SOURCE" ]; then
  configfolder_ask "Install nvim binary from source?" && configfolder_nvim_src
  configfolder_ask "Install nvim?" && configfolder_nvim
fi
