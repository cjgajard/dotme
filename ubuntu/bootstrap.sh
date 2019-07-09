sudo apt update
sudo apt upgrade
sudo apt install git
# install wifi drivers

sudo add-apt-repository ppa:fossfreedom/arc-gtk-theme-daily
sudo apt install vim tmux arc-theme curl
ssh-keygen

cd ~/Documents
git clone git@github.com:cjgajard/configfiles
cd configfiles
./install.sh

sudo snap install go --classic
