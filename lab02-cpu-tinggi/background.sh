#!/bin/bash
sleep 5
apt-get install -y -qq stress-ng > /dev/null 2>&1
stress-ng --cpu 4 --timeout 1200s &
yes > /dev/null &
echo "fault-injected" > /tmp/.lab02_ready
