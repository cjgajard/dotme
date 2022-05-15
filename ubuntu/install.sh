sudo apt update
sudo apt upgrade

#
# SSH
#
sudo apt install -y xclip
ssh-keygen
cat ~/.ssh/id_rsa.pub | xclip -i -sel c
echo Agrega esta llave ssh a tu cuenta de github.
echo -n Press ENTER to continue...; read

#
# Configfiles
#
sudo apt install -y build-essential git vim tmux
git clone git@github.com:cjgajard/configfiles.git cjgajard/configfiles
cd cjgajard/configfiles/
./install.sh
mkdir -p ~/.local/bin

#
# Docker
#
wget -qO get-docker.sh https://get.docker.com
sudo sh get-docker.sh
rm get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER

#
# sunwait
#
cd ~/Public
git clone https://github.com/risacher/sunwait.git
cd sunwait
make
ln -s $HOME/Public/sunwait/sunwait ~/.local/bin/sunwait

#
# Misc
#
sudo apt install -y chrome-gnome-shell gnome-tweak-tool
sudo snap install --classic go
sudo snap install spotify vlc gimp

echo Activa bash completion en /etc/bash.bashrc
echo Descarga e instala https://www.microsoftedgeinsider.com/en-us/download
