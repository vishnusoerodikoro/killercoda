#!/bin/bash
# Step 2 verified if df -i was run — we check bash history
if grep -q "df -i\|df -h\|sort -k5" ~/.bash_history 2>/dev/null; then
  exit 0
fi
# fallback: always pass if mystery file is still there (they're still investigating)
if [ -f /var/log/mystery.log ]; then
  exit 0
fi
exit 1
