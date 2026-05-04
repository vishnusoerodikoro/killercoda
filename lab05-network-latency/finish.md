# 🎉 Lab 05 Selesai — Network Latency Triage

## The Latency Decomposition Framework

```
mtr --report                → "Di hop mana latency naik?"
  ↓
dig +stats                  → "Berapa lama DNS?"
  ↓
curl -w time_*              → "DNS? TCP? TLS? Server?"
  ↓
Analisis fase dominan       → Root cause yang spesifik
  ↓
Rekomendasi yang actionable → Bukan cuma "jaringan lemot"
```

## Cheat Sheet curl -w Metrics

| Metric | Artinya |
|--------|---------|
| `time_namelookup` | DNS resolution selesai |
| `time_connect` | TCP 3-way handshake selesai |
| `time_appconnect` | TLS handshake selesai |
| `time_starttransfer` | Byte pertama response diterima (TTFB) |
| `time_total` | Seluruh request selesai |

## Real-World Context

> Di BTPN Syariah, latency analysis seperti ini dipakai untuk justifikasi capex Direct Connect ke AWS. Kita bisa tunjukkan: *"Tanpa DX, latency ke ap-southeast-3 (Jakarta) adalah Xms. Dengan DX via Fiberstar/DCI, turun ke Yms."* Itu angka konkret untuk decision maker, bukan asumsi.

---

# 🏁 Semua Lab Selesai!

Lo sudah cover 5 area fundamental SRE/DevOps:

| Lab | Skill |
|-----|-------|
| 01 | Disk investigation & remediation |
| 02 | CPU profiling & graceful process management |
| 03 | Memory trend analysis & leak detection |
| 04 | Service/config/network layered debugging |
| 05 | Network latency decomposition |

**Keep the mental model**: climb the layers, stop where it breaks, fix with data.
