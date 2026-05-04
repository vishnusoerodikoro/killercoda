#!/bin/bash
if [ -f ~/found-culprit.txt ]; then
  exit 0
fi
echo "Hint: ketik -> echo mystery.log > ~/found-culprit.txt"
exit 1
