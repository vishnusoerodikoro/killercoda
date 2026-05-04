#!/bin/bash
grep -q "free" ~/.bash_history 2>/dev/null && exit 0
exit 0  # always pass step 1 — just observation
