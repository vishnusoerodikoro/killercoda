## Step 5 — Remediate & Verifikasi

Lo sudah tahu culpritnya. Sekarang remediate — **dengan cara yang benar**.

### Opsi 1: Truncate (recommended — non-destructive)

Truncate mengosongkan isi file tanpa menghapus file-nya. Ini penting karena:
- Proses yang sedang write ke file itu **tidak akan error**
- File descriptor tetap valid
- Log rotation bisa jalan normal

```
sudo truncate -s 0 /var/log/mystery.log
```

### Opsi 2: Hapus file (kalau yakin tidak ada proses yang pakai)

```
sudo rm /var/log/mystery.log
```

---

### Verifikasi hasilnya

```
df -h
ls -lh /var/log/mystery.log
```

Disk usage harusnya turun drastis sekarang.

---

### Cleanup decoy juga

```
sudo rm -rf /var/lib/decoy
```

---

> 💡 **Real-world follow-up**: Di produksi, setelah remediate lo harus:
> 1. Cari tahu **proses apa** yang nulis ke file itu (`lsof /var/log/mystery.log`)
> 2. Fix aplikasinya — bukan cuma lognya
> 3. Setup **log rotation** (`logrotate`) supaya tidak kejadian lagi
> 4. Pasang **disk alert** di monitoring (threshold 80%, 90%)

---

> ✅ Jalankan `truncate -s 0 /var/log/mystery.log` atau `rm`, lalu verifikasi disk sudah lega. Klik **Check**.
