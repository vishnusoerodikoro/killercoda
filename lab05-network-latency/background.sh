#!/bin/bash
apt-get install -y -qq mtr-tiny dnsutils curl > /dev/null 2>&1
cat > /etc/profile.d/histflush.sh << 'EOF'
export PROMPT_COMMAND="history -a"
EOF
