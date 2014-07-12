source ~/.antigen/src/antigen.zsh

COMPLETION_WAITING_DOTS="true"

antigen-use oh-my-zsh

antigen-bundle osx
antigen-bundle brew

antigen-bundle git

antigen-bundle ruby
antigen-bundle rbenv
antigen-bundle bundler
antigen-bundle powder

antigen-bundle autojump
antigen-bundle npm

antigen-bundle zsh-users/zsh-syntax-highlighting

#antigen-theme pure
antigen bundle sindresorhus/pure

antigen-apply
