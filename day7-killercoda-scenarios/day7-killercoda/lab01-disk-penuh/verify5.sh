#!/bin/bash
# verify5.sh — check that mystery.log was truncated or deleted
if [ ! -f /var/log/mystery.log ]; then
  exit 0  # deleted — pass
fi
SIZE=$(stat -c%s /var/log/mystery.log 2>/dev/null || echo "99999999")
if [ "$SIZE" -lt 1000 ]; then
  exit 0  # truncated — pass
fi
echo "mystery.log masih ada dan masih besar. Coba truncate atau rm dulu."
exit 1
