# install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src && cd
export PATH="$PATH:$HOME/.rbenv/bin"

# install ruby-build
git clone \
  https://github.com/rbenv/ruby-build.git \
  $(rbenv root)/plugins/ruby-build

# install ruby
rbenv install $(rbenv install --list |
  grep -v '^\s*[A-Za-z]' |
  grep -Pv '(preview|rc|dev)\d*$' |
  sort | tail -n1)
