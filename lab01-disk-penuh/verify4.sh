#!/bin/bash
# verify4.sh — check student found mystery.log
if grep -q "mystery.log" ~/.bash_history 2>/dev/null; then
  exit 0
fi
exit 1
