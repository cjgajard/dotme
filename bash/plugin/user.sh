: <<'REACTNATIVE'
alias rn="react-native"
alias rnra="react-native run-android"
alias rnri="react-native run-ios"
REACTNATIVE

alias prettyjson='python3 -m json.tool'
alias tree="tree -a -I '.git|node_modules|.env|__pycache__'"
alias killdiscord="ps -ax | grep discord | grep -v grep | awk '{print \$1}' | xargs kill -9"
export PATH="$(systemd-path user-binaries):$PATH"
