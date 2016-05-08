#!/bin/zsh
local mydir=`dirname $0`
if (( $# == 0 )); then
  local commands; commands=()
  for dir in $mydir/*/; do
    local bn=`basename $dir`
    commands+=$bn':'
  done
  #TODO: for alias

  _describe -t commands 'command' commands && ret=0
else
  echo 'OHHH'
fi

