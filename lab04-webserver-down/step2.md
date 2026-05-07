## Step 2 — Cek Service Status

Service nginx running atau tidak?

```
systemctl status nginx
```

Perhatikan bagian:
```
● nginx.service - A high performance web server
   Loaded: loaded (/lib/systemd/system/nginx.service; disabled)
   Active: inactive (dead)
```

- `Active: active (running)` → Service jalan ✅
- `Active: inactive (dead)` → Service tidak jalan ❌
- `Active: failed` → Service crash ❌

Kalau inactive atau failed, lihat baris terakhir di output — biasanya ada hint error.

---

Kalau service tidak jalan, coba start:
```
sudo systemctl start nginx
```



Kalau masih gagal, lanjut ke step 3 untuk cek logs.

> ✅ Run `systemctl status nginx | tee /tmp/step2-done.txt
`. Klik **Check**.
