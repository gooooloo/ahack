#!/bin/zsh

if (( $# == 0 )) then
  echo 'arguments needed.'
  return
fi

call_sub_cmd `dirname $0` "$@"
