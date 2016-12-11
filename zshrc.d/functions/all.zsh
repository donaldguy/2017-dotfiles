source ${ZSHRC}/functions/git.zsh
source ${ZSHRC}/functions/osx.zsh

if [[ "$(hostname)" != "donald.local" ]]; then
  source ${ZSHRC}/functions/not_home.zsh
fi
