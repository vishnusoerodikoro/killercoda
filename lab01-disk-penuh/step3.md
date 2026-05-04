## Step 3 — Drill-down ke direktori terbesar

Lo sudah tahu mountpoint-nya. Sekarang masuk lebih dalam — cari **direktori mana yang paling rakus**.

Jalankan:

```
sudo du -sh /var/* | sort -h
```

Ini akan list semua subdirektori di `/var` beserta ukurannya, diurutkan dari terkecil ke terbesar.

**Output yang lo cari** — direktori dengan ukuran yang "aneh" / jauh lebih besar dari yang lain.

---

Kalau mau cara yang lebih nyaman dan interaktif, pakai **ncdu**:

```
sudo ncdu /var
```

Navigasi dengan arrow keys. Enter untuk masuk ke direktori. `q` untuk keluar.

ncdu langsung sort otomatis dari terbesar ke terkecil — cocok untuk drill-down cepat jam 2 pagi 😄

---

> ✅ Sudah lihat direktori mana yang paling besar di `/var`? Klik **Check**.
