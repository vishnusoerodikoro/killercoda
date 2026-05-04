#!/bin/bash
# Pass if nginx is active AND responding on port 80
if systemctl is-active --quiet nginx 2>/dev/null; then
  if curl -sf http://localhost > /dev/null 2>&1; then
    exit 0
  fi
fi
echo "nginx belum aktif atau belum respond di port 80."
echo "Coba: sudo systemctl enable nginx && sudo systemctl start nginx"
exit 1
