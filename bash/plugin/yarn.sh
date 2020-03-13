if command -v yarn >/dev/null; then
  export PATH="$(yarn global bin):$PATH"
fi
