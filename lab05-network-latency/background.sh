#!/bin/bash
sleep 10
cat > /etc/profile.d/histflush.sh << 'EOF'
export PROMPT_COMMAND="history -a"
EOF
