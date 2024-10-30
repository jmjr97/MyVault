#!/bin/bash

function main() {
  action=$1

  if [ "${action}" == "test1" ]; then
    echo "test1"
  fi

  if [ "${action}" == "test2" ]; then
    echo "test2"
  fi

  if [ "${action}" == "test3" ]; then
    echo "test3"
  fi

  if [ "${action}" == "" ]; then
    echo "first"
  fi
}

main $@
