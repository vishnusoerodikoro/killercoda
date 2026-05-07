#!/bin/bash
sleep 5
apt-get install -y -qq nginx > /dev/null 2>&1
systemctl enable nginx > /dev/null 2>&1
systemctl start nginx > /dev/null 2>&1
sleep 2
# Inject Variant A
systemctl stop nginx > /dev/null 2>&1
systemctl disable nginx > /dev/null 2>&1
echo "variant-A" > /tmp/.lab04_variant
echo "fault-injected" > /tmp/.lab04_ready

# Auto-flush bash history
echo 'export PROMPT_COMMAND="history -a"' > /etc/profile.d/histflush.sh
