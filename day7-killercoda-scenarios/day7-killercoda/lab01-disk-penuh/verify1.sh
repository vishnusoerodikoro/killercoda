#!/bin/bash
# Verify step 1: df was run (we check lab is ready + disk is actually full)
# We can't verify what student typed, so we verify the fault is in place
if [ -f /var/log/mystery.log ]; then
  exit 0
else
  echo "Lab environment not ready yet. Wait 10 seconds and try again."
  exit 1
fi
