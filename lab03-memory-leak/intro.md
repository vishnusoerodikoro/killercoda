# 🔴 Insiden: OOM Tiap 6 Jam

**Server di-restart otomatis tiap 6 jam karena Out Of Memory.**

Tim aplikasi bilang: *"Kode kami sudah bener kok."*

Tugas lo: **prove (atau disprove)** ada memory leak, dan dari proses mana.

## Tujuan Lab

1. Ambil baseline memory saat sistem idle
2. Inject proses yang leak memory secara bertahap
3. Observe trend memory naik terus
4. Identify proses leaker, kill, dan konfirmasi memory dibebaskan

## Tools

| Command | Fungsi |
|---------|--------|
| `free -h` | Snapshot memory usage |
| `watch -n 2 free -h` | Observe trend |
| `ps aux --sort=-%mem` | Sort proses by memory |
| `cat /proc/PID/status` | Detail memory proses |
| `pmap -x PID` | Memory map proses |

---

> 💡 **Trap klasik**: Jangan panik kalau kolom `free` hampir nol. Linux pakai spare RAM sebagai disk cache. Yang penting adalah kolom **`available`** — itu RAM yang bisa langsung dipakai.
