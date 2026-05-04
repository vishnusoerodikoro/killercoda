## Step 3 — Identify Leaker by Process

Memory turun terus. Sekarang cari **proses mana yang rakus**.

### Sort proses by memory
```
ps aux --sort=-%mem | head -10
```

Proses dengan %MEM tertinggi di atas = kandidat leaker.

### Lihat detail RSS (Resident Set Size)
```
cat /proc/$(pgrep -f leak.py)/status | grep -i vm
```

`VmRSS` = actual RAM yang dipakai sekarang. Ini yang akan terus naik.

### Lihat memory map proses
```
pmap -x $(pgrep -f leak.py) | tail -5
```

---

### Cek pertumbuhan RSS dari waktu ke waktu
```
PID=$(pgrep -f leak.py)
watch -n 2 "cat /proc/$PID/status | grep VmRSS"
```

Kalau `VmRSS` terus naik tanpa batas → **confirmed memory leak**.

> ✅ Identify PID proses leak.py dan konfirmasi VmRSS-nya naik. Klik **Check**.
