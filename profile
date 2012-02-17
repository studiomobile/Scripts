DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PATH=$PATH:$(find $DIR -type d | grep -v "/\." | tr "\n" ":")

source $(find $(find $DIR -type d | grep -v "$DIR$") -name "profile")

# MacPorts setup
if [ -d /opt/local/bin ]; then
  export PATH=/opt/local/bin:/opt/local/sbin:$PATH
fi

# Bash completion setup
# MacPorts version
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi
# Homebrew version
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
