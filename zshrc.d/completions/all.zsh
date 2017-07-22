source /usr/local/bin/aws_zsh_completer.sh
source <(kubectl completion zsh)
source <(kops completion zsh)
source ${ZSHRC}/completions/_docker
source ${ZSHRC}/completions/_fly
#source ${ZSHRC}/completions/_helm
source ${ZSHRC}/completions/_npm
eval "$(chef shell-init zsh)"
