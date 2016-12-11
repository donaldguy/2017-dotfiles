#!/bin/zsh
if [ ! -d ${ZDOTDIR:-${HOME}}/.zim ]; then
  git clone --recursive https://github.com/Eriner/zim.git ${ZDOTDIR:-${HOME}}/.zim
  setopt EXTENDED_GLOB
  for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* ); do
    user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
    touch ${user_file}
    ( print -rn "$(<${template_file})$(<${user_file})" >! ${user_file} ) 2>/dev/null
  done
fi

if [ ! -d ~/.zim/modules/prompt/external-themes/powerlevel9k ]; then
  git clone https://github.com/bhilburn/powerlevel9k.git ~/.zim/modules/prompt/external-themes/powerlevel9k
  ln -s ~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme ~/.zim/modules/prompt/functions/prompt_powerlevel9k_setup
fi

for file ( $(cd $(dirname $0) && pwd -P)/* ); do
  ln -sf $file ${HOME}/.$(basename $file)
done
# don't leave a link to this script
test -L ~/.install.zsh && rm -f ~/.install.zsh

source ${ZDOTDIR:-${HOME}}/.zlogin
