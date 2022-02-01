if command -v xkbset &>/dev/null; then
  xkbset m
  # xkbset ma delay=300 interval=100 timetomax=3 max=1 curve=50
  xkbset ma 10 10 100 10 50
fi
