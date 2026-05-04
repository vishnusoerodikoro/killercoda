## Step 1 — Cek Load Average

Mulai dari gambaran besar dulu: **seberapa parah kondisinya?**

```
uptime
```

Contoh output:
```
02:14:31 up 3 min,  1 user,  load average: 4.12, 3.87, 2.01
```

Cek jumlah CPU core yang tersedia:
```
nproc
```

**Interpretasi:**
- Load average = rata-rata proses yang antri minta CPU
- Kalau load ≥ jumlah core → sistem overloaded
- Load = 4.0, core = 2 → sistem 200% kewalahan

> ✅ Run `uptime` dan `nproc`. Bandingkan angkanya. Klik **Check**.
