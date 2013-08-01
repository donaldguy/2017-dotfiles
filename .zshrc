fpath=(/usr/local/share/zsh-completions $fpath)
source ~/.antigen/src/antigen.zsh

COMPLETION_WAITING_DOTS="true"

antigen-use oh-my-zsh

antigen-bundle osx

antigen-bundle git

antigen-bundle ruby
antigen-bundle rbenv
antigen-bundle bundler
antigen-bundle powder

antigen-bundle autojump

antigen-bundle zsh-users/zsh-syntax-highlighting

antigen-theme robbyrussell

antigen-apply
