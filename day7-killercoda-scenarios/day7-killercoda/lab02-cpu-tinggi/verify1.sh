#!/bin/bash
pgrep stress-ng > /dev/null 2>&1 && exit 0
[ -f /tmp/.lab02_ready ] && exit 0
exit 1
