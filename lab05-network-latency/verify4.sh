#!/bin/bash
if [ -f ~/lab05-analysis.txt ]; then
  exit 0
fi
echo "Buat dulu ~/lab05-analysis.txt dengan kesimpulan analisis lo."
exit 1
