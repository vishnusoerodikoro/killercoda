## Step 4 — Cek Port & Fix

### Cek nginx listening di port mana
```
sudo ss -tulnp | grep nginx
```

Output yang benar:
```
tcp   LISTEN 0  511  0.0.0.0:80   0.0.0.0:*  users:(("nginx",pid=xxx))
```

Kalau nginx listen di port lain (misal 8888), curl ke port yang benar:
```
curl http://localhost:8888
```

---

### Fix & Restart

Untuk scenario ini (service disabled), enable dan start:
```
sudo systemctl enable nginx
sudo systemctl start nginx
```

Verifikasi:
```
systemctl is-active nginx
curl http://localhost
```

Harusnya dapat response HTML dari nginx.

> ✅ Pastikan `curl http://localhost` return HTTP 200. Klik **Check**.
