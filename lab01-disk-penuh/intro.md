# 🔴 Insiden: Disk Penuh Misterius

**Jam 02:00 pagi. Lo di-page.**

Tim aplikasi report service mereka error:

```
No space left on device
```

Mereka bilang server harusnya masih kosong — baru di-deploy minggu lalu.
Lo yang on-call. Lo yang harus investigate.

---

## Tujuan Lab

Di lab ini lo akan:
1. Konfirmasi kondisi disk secara global
2. Identify mountpoint mana yang bermasalah
3. Drill-down ke direktori & file penyebabnya
4. Remediate secara aman (non-destructive dulu)

## Tools yang Dipakai

| Command | Fungsi |
|---------|--------|
| `df -h` | Lihat usage per filesystem/mountpoint |
| `du -sh /path/*` | Ukuran tiap direktori |
| `ncdu /path` | Drill-down interaktif |
| `df -i` | Cek inode usage |
| `truncate -s 0` | Kosongkan file tanpa hapus |

---

> 💡 **Tips**: Selalu pakai `sudo` untuk audit disk di level sistem. Tanpa sudo, banyak file yang tidak terbaca dan hasilnya tidak akurat.

Klik **START** untuk mulai!
