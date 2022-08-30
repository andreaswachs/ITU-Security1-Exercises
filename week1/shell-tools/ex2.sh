#!/usr/bin/env zsh

#
# Exercise 2
#

MARCO_RC=~/.marcorc

marco() {
  rm ${MARCO_RC} || true
  echo $(pwd) > ${MARCO_RC}
}

polo() {
  cd $(cat ${MARCO_RC})
}
