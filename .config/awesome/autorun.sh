#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

setxkbmap -layout se -variant nodeadkeys
xsetroot -cursor_name left_ptr
xset r rate 300 40
