wget https://raw.githubusercontent.com/docker/docker/master/contrib/completion/zsh/_docker
sed -i '' -e 's/_docker "$@"/compdef _docker docker/' _docker

npm completion > _npm
