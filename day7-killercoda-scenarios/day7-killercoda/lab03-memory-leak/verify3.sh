#!/bin/bash
grep -qE "ps aux|pmap|VmRSS|proc.*status" ~/.bash_history 2>/dev/null && exit 0
pgrep -f leak.py > /dev/null && exit 0
exit 1
