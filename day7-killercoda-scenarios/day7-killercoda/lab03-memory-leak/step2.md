## Step 2 — Inject Leak & Observe Trend

Buat script Python yang leak memory ~5MB per detik:

```bash
cat > /tmp/leak.py << 'EOF'
import time
data = []
while True:
    data.append('x' * 5_000_000)  # ~5MB per iterasi
    time.sleep(1)
EOF

python3 /tmp/leak.py &
```

Sekarang observe memory dalam real-time:

```
watch -n 2 free -h
```

Perhatikan kolom `available` — harusnya turun terus, ~5MB per detik.

Tunggu 20-30 detik untuk melihat trennya jelas. Tekan `Ctrl+C` untuk stop watch.

---

> ✅ Lihat `available` turun secara konsisten? Itu tanda leak. Klik **Check**.
