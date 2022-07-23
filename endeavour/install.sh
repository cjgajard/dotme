set -e

# Install missing
sudo pacman -S tmux xclip

# Install vim
read -p "Install vim from source? [y|N] " -n 1 -r; echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  cd ~/Public
  git clone --depth=1 https://github.com/vim/vim.git
  cd vim
  make
  sudo make install
  cd
else
  sudo pacman -S vim
fi

# Install configfiles
ssh-keygen
xclip -sel c ~/.ssh/id_rsa.pub
mkdir ~/cjgajard
cd ~/cjgajard
git clone git@github.com:cjgajard/configfiles.git;
cd configfiles
./install
mv ~/.profile ~/.bash_profile
cd

# Install sunwait
cd ~/Public
git clone https://github.com/risacher/sunwait.git
cd sunwait
make
ln -s `readlink -f sunwait` ~/.local/bin/
chmod +x ~/.local/bin/sunwait

# Install gnome themes
echo Create 3 profiles
cd $CONFIGFOLDER/gnome
echo '```'
echo bash cobalt.theme [profile-id]
echo bash even.theme   [profile-id]
echo bash night.theme  [profile-id]
echo '```'
cd $CONFIGFOLDER

# Install fonts
echo Copy fonts and log-in again
echo '```'
echo cp -r /run/media/carlos/KINGSTON/vendor/fonts/ ~/.fonts
echo '```'
