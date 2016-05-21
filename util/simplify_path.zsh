#!/bin/zsh

# simplify path, e.g. from 'a/b-c/../d_e/..' to 'a'
# http://unix.stackexchange.com/questions/115438/string-substitutions-all-occurrences
# http://stackoverflow.com/a/13043397/3273620
_simplify_path() {
  echo "$@" | sed -e 's/\/[^\/]*\/\.\.//g'
}

if [[ $1 == '--unittest' ]]; then
  source $AHACK_HOME/util/ut.zsh $0 --arg a/b/.. --exp a
  source $AHACK_HOME/util/ut.zsh $0 --arg a/b/../d/.. --exp a
  source $AHACK_HOME/util/ut.zsh $0 --arg a/b/.. d/e/.. --exp a d
else
  _simplify_path "$@"
fi


