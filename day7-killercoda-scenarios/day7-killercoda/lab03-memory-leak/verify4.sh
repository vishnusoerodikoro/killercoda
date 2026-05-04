#!/bin/bash
if ! pgrep -f leak.py > /dev/null 2>&1; then
  exit 0
fi
echo "leak.py masih jalan. Coba: pkill -f leak.py"
exit 1
