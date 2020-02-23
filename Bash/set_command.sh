#!/bin/bash
function echo_runlevel() {
  set $(/sbin/runlevel)
  local previous=$1
  local runlevel=$2
  echo "previous runlevel was $previous"
  echo "current runlevel is $runlevel"
}

echo_runlevel


