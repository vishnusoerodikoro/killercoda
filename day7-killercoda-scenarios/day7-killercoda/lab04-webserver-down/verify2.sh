#!/bin/bash
grep -q "systemctl" ~/.bash_history 2>/dev/null && exit 0
exit 1
