## Step 3 — Analisis: Runaway Process atau Traffic Spike?

### Cek per-process history (5 sampel, interval 1 detik)
```
pidstat 1 5
```
Kalau satu PID terus-menerus dominan → runaway process → kill aman.

### Cek per-core
```
mpstat -P ALL 1 3
```
- Hanya 1 core 100% → kemungkinan single-threaded runaway
- Semua core hot → bisa legitimate traffic atau multi-threaded

---

> 💡 Di produksi: sebelum kill, selalu cek apakah traffic/request count memang naik. Kill proses yang lagi handle real traffic = buat outage sendiri.

> ✅ Run `pidstat 1 5`. Catat PID yang konsisten tinggi. Klik **Check**.
