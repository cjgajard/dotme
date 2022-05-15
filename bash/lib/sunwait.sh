#!/usr/bin/env bash

daynight() {
  if ! command -v chprofile &>/dev/null; then
    return 127;
  fi
  case `sunwait poll civil 70.4W 33.27S` in
    DAY)   chprofile 1 ;;
    NIGHT) chprofile 3 ;;
  esac
}
