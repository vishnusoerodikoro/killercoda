## Step 1 — Ambil Baseline Memory

Sebelum inject fault, catat kondisi awal sistem.

```
free -h
```

Contoh output:
```
              total        used        free      shared  buff/cache   available
Mem:           7.8G        1.2G        4.1G        120M        2.5G        6.2G
Swap:          2.0G          0B        2.0G
```

**Yang perlu diperhatikan:**
- Kolom `available` → RAM yang bisa dipakai proses baru
- Kolom `buff/cache` → RAM yang dipakai Linux sebagai cache (bisa diambil kembali)
- Kolom `free` → RAM yang benar-benar kosong (sering misleading!)

Catat angka `available` sekarang. Ini baseline lo.

> ✅ Run `free -h` dan catat nilai `available`. Klik **Check**.
