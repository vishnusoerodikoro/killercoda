## Step 4 — Kill Proses dengan Benar

### Aturan: SIGTERM dulu, SIGKILL kalau perlu

```bash
# Langkah 1: Graceful
pkill stress-ng

# Tunggu sebentar
sleep 5
pgrep stress-ng   # masih ada?

# Langkah 2: Force (kalau masih ada)
pkill -9 stress-ng
```

**SIGTERM (15)** = "tolong berhenti" — proses bisa cleanup dulu
**SIGKILL (9)** = "mati sekarang" — tidak ada cleanup, risiko data corrupt

### Verifikasi
```
watch -n 2 uptime
```
Load average harusnya turun ke mendekati 0.

> ✅ Kill stress-ng, konfirmasi dengan `pgrep stress-ng` tidak ada output. Klik **Check**.
