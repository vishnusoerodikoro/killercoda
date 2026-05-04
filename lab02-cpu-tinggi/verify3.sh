#!/bin/bash
if [ -f ~/lab02-step3.txt ]; then
  exit 0
fi
echo "Hint: jalankan -> pidstat 1 3 > ~/lab02-step3.txt"
exit 1
