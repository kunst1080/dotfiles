#!/bin/bash

set -eu

ROOT=$(cd $(dirname $0) && pwd)

cd $HOME

main() {
  setARCH
  echo "ARCH = $ARCH"
  echo
  
  relinks $ROOT/all .
  test -z "$ARCH" && relinks $ROOT/$ARCH .
#  relinks $ROOT/config .config
  [ $# -ge 1 ] && relinks $ROOT/$1 .

  echo
  echo Making links SUCCESS
}

relinks() {
  echo "making relinks from $1"
  find $1 -mindepth 1 -maxdepth 1 | while read f
  do
    name=$(basename $f)
    if [ $2 = . ] ; then
        dest=$PWD/$name
    else
        dest=$PWD/$2/$name
    fi  
    echo " ln -s $f"
    [ -h $dest ] && unlink $dest || true
    ln -s $f $dest
  done
}

setARCH() {
  ARCH=
  [ -e /etc/debian_version ] && ARCH=linux
  [ -e /etc/os-release ] && ARCH=linux
  return 0
}

main $*
