#!/bin/bash
# verify3.sh — check that student explored /var subdirs
if grep -qE "du -sh|ncdu" ~/.bash_history 2>/dev/null; then
  exit 0
fi
[ -f /var/log/mystery.log ] && exit 0
exit 1
