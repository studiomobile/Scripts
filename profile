DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PATH=$PATH:$(find $DIR -type d | grep -v "/\." | tr "\n" ":")

source $(find $(find $DIR -type d | grep -v "$DIR$") -name "profile")
