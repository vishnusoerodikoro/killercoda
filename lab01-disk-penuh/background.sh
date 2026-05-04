#!/bin/bash
# background.sh — runs automatically when the scenario starts (hidden from student)
# Injects two files: the "mystery" culprit + a decoy to make drill-down realistic

# Give the VM a moment to fully boot
sleep 5

# Create decoy first (smaller, visible noise)
mkdir -p /var/lib/decoy
dd if=/dev/zero of=/var/lib/decoy/cache.bin bs=1M count=200 2>/dev/null

# Create the real culprit — 2 GB mystery log deep in /var/log
dd if=/dev/zero of=/var/log/mystery.log bs=1M count=2000 2>/dev/null

# Leave a breadcrumb in /var/log directory listing (realistic noise)
touch /var/log/syslog
touch /var/log/auth.log
touch /var/log/dpkg.log

echo "fault-injected" > /tmp/.lab01_ready
