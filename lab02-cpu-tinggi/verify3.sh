#!/bin/bash
grep -q "pidstat\|mpstat" ~/.bash_history 2>/dev/null && exit 0
exit 1
