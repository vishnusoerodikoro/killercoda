## Step 2 — Temukan Proses Boros CPU

### Cara 1: top (interaktif)
```
top
```
Tekan `P` untuk sort by CPU. Tekan `q` untuk keluar.

### Cara 2: htop (lebih visual)
```
htop
```
Tekan `F6` → pilih `CPU%`. `F10` untuk keluar.

### Cara 3: Snapshot cepat
```
ps -eo pid,pcpu,comm --sort=-pcpu | head -10
```

---

Perhatikan nama proses di baris paling atas. Itu kandidat utama.

> ✅ Identify nama proses yang paling banyak konsumsi CPU. Klik **Check**.
