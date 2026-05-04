#!/bin/bash
grep -q "curl -w\|time_namelookup\|time_total" ~/.bash_history 2>/dev/null && exit 0
exit 1
