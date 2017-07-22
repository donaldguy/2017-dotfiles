export LANG='en_US.UTF-8'
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

export ZSHRC=${HOME}/.zshrc.d
source ${ZSHRC}/prompt.zsh
source ${HOME}/.zim/init.zsh
source ${ZSHRC}/bindings.zsh
source ${ZSHRC}/util_defaults.zsh
source ${ZSHRC}/functions/all.zsh

# aws creds and such (not in source control cause secrets... shhhhh)
source ${HOME}/.bash_profile

source ${ZSHRC}/alphabet.zsh
source ${ZSHRC}/completions/all.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# vim mode
bindkey -v

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/donald/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/donald/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/donald/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/donald/google-cloud-sdk/completion.zsh.inc'; fi
