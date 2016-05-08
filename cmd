#!/bin/zsh

if (( $# == 0 )) then
  echo 'arguments needed.'
  return
fi

subcmd `dirname $0` "$@"
