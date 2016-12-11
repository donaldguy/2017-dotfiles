alias vi=vim

### less
export LESS='-g -i -M -R -S -w -z-4'
if (( $+commands[lesspipe.sh] )); then
  LESSOPEN="|/usr/local/bin/lesspipe.sh %s 2>&-"
  export LESSOPEN
  LESS_ADVANCED_PREPROCESSOR=1; export LESS_ADVANCED_PREPROCESSOR
fi
