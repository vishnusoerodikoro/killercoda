#!/bin/bash
pgrep -f leak.py > /dev/null 2>&1 && exit 0
echo "leak.py belum jalan. Jalankan dulu: python3 /tmp/leak.py &"
exit 1
