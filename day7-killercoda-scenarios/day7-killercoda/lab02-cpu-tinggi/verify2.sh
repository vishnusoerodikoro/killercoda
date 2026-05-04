#!/bin/bash
grep -qE "^top|^htop|ps -eo" ~/.bash_history 2>/dev/null && exit 0
pgrep stress-ng > /dev/null && exit 0
exit 1
