# Day 7 — Infrastructure Fundamentals · Killercoda Scenarios

Dibimbing DevOps Bootcamp Batch 1 · Instructor: V (Wisnugara)

## Cara Deploy ke Killercoda

1. Push seluruh repo ini ke GitHub (satu repo, folder per scenario)
2. Login ke [killercoda.com](https://killercoda.com) pakai GitHub
3. Settings → Connect Repository → pilih repo ini
4. Killercoda auto-detect tiap folder yang ada `index.json`

## Struktur

```
day7-killercoda/
├── lab01-disk-penuh/        ← df, du, ncdu, truncate
├── lab02-cpu-tinggi/        ← top, htop, pidstat, pkill
├── lab03-memory-leak/       ← free, watch, /proc, pmap
├── lab04-webserver-down/    ← systemctl, journalctl, nginx -t, ss
└── lab05-network-latency/   ← mtr, dig, curl -w
```

## URL Scenario (setelah deploy)

```
https://killercoda.com/<your-profile>/scenario/lab01-disk-penuh
https://killercoda.com/<your-profile>/scenario/lab02-cpu-tinggi
https://killercoda.com/<your-profile>/scenario/lab03-memory-leak
https://killercoda.com/<your-profile>/scenario/lab04-webserver-down
https://killercoda.com/<your-profile>/scenario/lab05-network-latency
```

## Time Budget

| Lab | Topik | Durasi |
|-----|-------|--------|
| 01 | Disk Penuh Misterius | ~13 menit |
| 02 | Server Lemot, CPU Tinggi | ~13 menit |
| 03 | Memory Leak Simulation | ~13 menit |
| 04 | Web Server Tak Bisa Diakses | ~13 menit |
| 05 | Network Latency Triage | ~13 menit |
| **Total** | | **~65 menit** |

## Notes

- Lab 01-03: fault di-inject otomatis via `background.sh`
- Lab 04: fault di-inject di `background.sh` (nginx disabled)
- Lab 05: no fault injection — real internet target (`api.github.com`)
- Tiap step punya `verify.sh` yang di-run saat student klik **Check**
