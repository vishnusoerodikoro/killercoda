## Step 4 — Analisis & Kesimpulan

Sekarang lo punya data. Saatnya **analisis dan ambil kesimpulan yang bisa dipertanggungjawabkan**.

### Template kesimpulan yang baik

Dari data curl -w, identifikasi fase mana yang dominan:

**Contoh 1: TCP + TLS dominan**
```
DNS:          0.015s   ← OK
TCP connect:  0.185s   ← 185ms = physical RTT ke US
TLS handshake:0.390s   ← +205ms untuk TLS = wajar
TTFB:         0.450s   ← +60ms server processing = OK
```
Kesimpulan: *"Latency disebabkan jarak fisik ke server US (~185ms RTT). Ini normal — bukan bug jaringan, bukan DNS, bukan server lambat. Solusi: cache response di CDN lokal atau gunakan endpoint Asia."*

**Contoh 2: DNS dominan**
```
DNS:          0.850s   ← INI MASALAHNYA
TCP connect:  0.870s   ← TCP cepat, berarti DNS-nya yang lambat
```
Kesimpulan: *"DNS resolver lambat. Solusi: ganti ke 8.8.8.8 atau aktifkan local DNS cache."*

---

### Tulis kesimpulan lo

Di terminal, buat file analisis:
```
cat > ~/lab05-analysis.txt << 'EOF'
=== Lab 05 Network Latency Analysis ===
Target: api.github.com

DNS time:         ___s
TCP connect:      ___s  (delta dari DNS)
TLS handshake:    ___s  (delta dari TCP)
Server (TTFB):    ___s  (delta dari TLS)
Total:            ___s

Dominant phase: ___________
Root cause:     ___________
Recommendation: ___________
EOF
```

Isi dengan data lo sendiri dari step 3.

> ✅ Buat file `~/lab05-analysis.txt`. Klik **Check**.
