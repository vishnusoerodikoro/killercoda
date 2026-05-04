#!/bin/bash
grep -qE "journalctl|nginx -t" ~/.bash_history 2>/dev/null && exit 0
exit 1
