#!/bin/zsh

data_dir_of_pkg() {
  echo 'data/data/'$1'/'
}

sp_dir_of_pkg() {
  echo 'data/data/'$1'/shared_prefs/'
}

cache_dir_of_pkg()  {
  echo 'data/data/'$1'/cache/'
}

pkg_list() {
  adb shell pm list packages | cut -c 9-
}
