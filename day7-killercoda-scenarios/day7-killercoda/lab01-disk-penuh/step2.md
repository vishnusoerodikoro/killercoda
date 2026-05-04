## Step 2 — Temukan mountpoint yang bermasalah

Sekarang lo tahu ada yang penuh. Tapi **yang mana?**

Sort output `df` berdasarkan penggunaan tertinggi:

```
df -h | sort -k5 -hr
```

Flag `-k5` berarti sort berdasarkan kolom ke-5 (kolom **Use%**), dan `-hr` berarti reverse + human-readable sort.

Mountpoint dengan persentase tertinggi ada di baris paling atas — **itu target investigasi lo**.

---

Sebagai tambahan, cek juga **inode usage** — kadang disk "penuh" bukan karena kapasitas tapi karena inode habis:

```
df -i
```

---

> ✅ Sudah identify mountpoint yang bermasalah? Klik **Check**.
