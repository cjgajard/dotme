. `dirname ${BASH_SOURCE}`/lib/me.sh

me_installbash() {
  me_install bash/bashrc $HOME/.bashrc
  me_install bash/profile $HOME/.profile
}

if [ $0 == "$BASH_SOURCE" ]; then
  me_ask "Install bash?" && me_bash
  exit 0
fi
