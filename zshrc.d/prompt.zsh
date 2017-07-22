function precmd() {
 echo -ne "\033]2;${USER}@${HOST%%.*}:${PWD/#$HOME/~}\007"
}

POWERLEVEL9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_MODE='nerd-patched-complete'

POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

POWERLEVEL9K_STATUS_OK_BACKGROUND='046'
POWERLEVEL9K_STATUS_OK_FOREGROUND='black'

zsh_kubectl_context() {
  if test -f ~/.kube/config; then
    local context=$(grep current-context ~/.kube/config | cut -d' ' -f 2)
    echo -n "\u2638\u2009$context"
  fi
}
POWERLEVEL9K_CUSTOM_KUBECTL_CONTEXT="zsh_kubectl_context"
POWERLEVEL9K_CUSTOM_KUBECTL_CONTEXT_BACKGROUND='026'
POWERLEVEL9K_CUSTOM_KUBECTL_CONTEXT_FOREGROUND="white"

POWERLEVEL9K_VI_COMMAND_MODE_STRING="N"
POWERLEVEL9K_VI_INSERT_MODE_STRING="I"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context status dir rbenv vcs root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs history custom_kubectl_context vi_mode)
