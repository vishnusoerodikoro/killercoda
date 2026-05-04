#!/bin/bash
if ! pgrep stress-ng > /dev/null 2>&1; then
  exit 0
fi
echo "stress-ng masih jalan. Coba: pkill stress-ng"
exit 1
