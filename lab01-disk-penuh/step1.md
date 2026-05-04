## Step 1 — Konfirmasi masalah secara global

Langkah pertama saat dapat alert disk penuh: **konfirmasi dulu kondisi globalnya**.

Jalankan perintah berikut:

```
df -h
```

Lo akan lihat output seperti ini:

```
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        20G   18G  200M  99% /
tmpfs           2.0G     0  2.0G   0% /dev/shm
...
```

Perhatikan kolom **Use%** — kalau sudah di atas 90%, itu warning. Kalau 99-100%, itu yang menyebabkan error.

---

> ✅ Setelah lo run `df -h` dan lihat ada filesystem yang hampir penuh, klik **Check** untuk lanjut.
