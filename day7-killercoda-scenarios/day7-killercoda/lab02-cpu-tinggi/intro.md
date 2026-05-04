# 🔴 Insiden: Server Lemot, CPU Tinggi

**Alert masuk: SLA latency naik dari 50ms ke 800ms.**

Monitoring belum terpasang. Lo perlu manual investigate dari command line.

## Tujuan Lab

1. Cek load average untuk konfirmasi kondisi sistem
2. Identify proses mana yang menghabiskan CPU
3. Analisis apakah ini satu proses atau distributed load
4. Kill proses dengan benar — SIGTERM dulu, bukan langsung SIGKILL

## Tools

| Command | Fungsi |
|---------|--------|
| `uptime` | Load average 1/5/15 menit |
| `top` / `htop` | Live process view, sortable |
| `ps -eo pid,pcpu,comm --sort=-pcpu` | Snapshot CPU per proses |
| `pidstat 1 5` | Per-process CPU history (5 sampel) |
| `mpstat -P ALL 1 3` | Per-core utilization |
| `pkill` | Kill by process name |
