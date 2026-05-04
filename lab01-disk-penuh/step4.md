## Step 4 — Identifikasi file culprit

Dari drill-down sebelumnya, lo harusnya sudah punya suspek. Saatnya **konfirmasi**.

Lihat isi direktori `/var/log` lebih detail:

```
sudo du -sh /var/log/* | sort -h
```

Ada satu file yang ukurannya jauh lebih besar dari yang lain.

---

Setelah ketemu, verifikasi filenya:

```
ls -lh /var/log/mystery.log
```

Dan cek kapan file ini terakhir dimodifikasi:

```
stat /var/log/mystery.log
```

---

> 🤔 **Pertanyaan investigasi**: Kenapa file ini bisa sebesar itu? Siapa yang nulis ke sana? 
> Di produksi nyata, lo harus tahu **akar masalahnya** — bukan cuma nulis file-nya.

---
Setelah ketemu, jalankan perintah ini sebagai tanda bukti:
```
echo "mystery.log" > ~/found-culprit.txt
```
> ✅ Sudah identify `/var/log/mystery.log` sebagai culprit? Klik **Check**.
