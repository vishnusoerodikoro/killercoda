# 🎉 Lab 02 Selesai — CPU Tinggi

## Mental Model: CPU Investigation

```
uptime + nproc      → "Load vs capacity?"
  ↓
top / htop          → "Siapa yang boros?"
  ↓
pidstat 1 5         → "Konsisten runaway atau sesekali?"
  ↓
mpstat -P ALL       → "Single-core atau semua?"
  ↓
pkill (SIGTERM)     → Graceful kill
pkill -9 (SIGKILL)  → Last resort
```

Lanjut ke **Lab 03 → Memory Leak Simulation**!
