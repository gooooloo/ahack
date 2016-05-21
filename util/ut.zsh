#!/bin/zsh

foo() {
  local script=$1
  local arg; arg=()
  local exp; exp=()
  local flag;
  local t_arg="--arg";
  local t_exp="--exp";

  for i in "${@:2}"; do
    if [[ $i == $t_arg ]]; then
      flag=$t_arg
    elif [[ $i == $t_exp ]]; then
      flag=$t_exp
    elif [[ $flag == $t_arg ]]; then
      arg=($arg "$i")
    elif [[ $flag == $t_exp ]]; then
      exp=($exp "$i")
    fi
  done

  if (( ${#arg} == 0 )); then
    echo 'INVALID CASE: NO ARGS'
    return
  fi
  if (( ${#exp} == 0 )); then
    echo 'INVALID CASE: NO EXPTECTED'
    return
  fi

  local actual; actual=`source $script $arg`
  if [[ ! "$actual" == "$exp" ]]; then
    echo "FAIL:"
    echo "  arg:" "$arg"
    echo "  exp:" "$exp"
    echo "  act:" "$actual"
  fi
}

foo "$@"
