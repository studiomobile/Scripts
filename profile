DIR="$( dirname "${BASH_SOURCE[0]}" )"

export PATH=$PATH:$DIR/git

source $DIR/git/profile

# Bash completion setup
if [ `type -p brew` ]; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
fi
