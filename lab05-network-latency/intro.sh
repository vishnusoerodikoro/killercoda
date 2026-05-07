#!/bin/bash
cat > /etc/profile.d/histflush.sh << 'EOF'
export PROMPT_COMMAND="history -a"
EOF
