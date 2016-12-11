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

source ${ZSHRC}/completions/all.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
