function groot() {
  cd $(git rev-parse --show-toplevel)
}

function diff2() {
  git difftool -y -x "colordiff -y -W $COLUMNS" $* | less -R
}
