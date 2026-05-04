# 🎉 Lab 03 Selesai — Memory Leak

## Mental Model: Memory Investigation

```
free -h             → Baseline + cek free vs available
  ↓
watch -n 2 free -h  → Observe trend
  ↓
ps aux --sort=-%mem  → Siapa yang paling rakus?
  ↓
/proc/PID/status    → VmRSS naik terus = leak confirmed
  ↓
pkill               → Kill leaker
  ↓
free -h             → Verify memory kembali
```

## Perbedaan free vs available

| Kolom | Artinya |
|-------|---------|
| `free` | RAM yang benar-benar kosong (biasanya kecil — normal!) |
| `available` | RAM yang bisa dipakai proses baru (termasuk cache yang bisa dilepas) |

> **Selalu lihat `available`, bukan `free`.**

Lanjut ke **Lab 04 → Web Server Tak Bisa Diakses**!
