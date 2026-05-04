# 🎉 Lab 01 Selesai — Disk Penuh Misterius

Lo berhasil investigate dan remediate insiden disk penuh dengan metodologi yang benar.

## Yang Lo Pelajari

| Skill | Command |
|-------|---------|
| Cek disk global | `df -h` |
| Sort by usage | `df -h \| sort -k5 -hr` |
| Drill-down direktori | `sudo du -sh /var/* \| sort -h` |
| Interactive explorer | `sudo ncdu /var` |
| Cek inode | `df -i` |
| Truncate file aman | `sudo truncate -s 0 <file>` |

## Mental Model: Disk Investigation

```
df -h              → "Filesystem mana yang penuh?"
  ↓
du -sh /var/*      → "Direktori mana yang terbesar?"
  ↓
ncdu /var/log      → "File mana yang paling rakus?"
  ↓
stat / ls -lh      → "Kapan? Siapa yang nulis?"
  ↓
truncate / rm      → Remediate
  ↓
Cari root cause    → Fix the REAL problem
```

## Real-World Reminder

> Menghapus log adalah first aid, bukan obat. Yang penting adalah **kenapa log itu besar** — apakah ada exception yang terus-menerus di-log? Apakah aplikasinya crash loop? Itu yang harus di-fix.

---

Lanjut ke **Lab 02 → Server Lemot, CPU Tinggi**!
