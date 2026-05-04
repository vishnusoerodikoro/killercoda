## Step 1 — Reproduce & Konfirmasi Error

Pertama, **reproduce masalahnya** secara eksplisit.

```
curl -v http://localhost
```

Lo akan lihat salah satu dari ini:
- `Connection refused` → Port tidak ada yang listen (service mati atau port salah)
- `Connection timed out` → Port ada tapi tidak respond (firewall, atau service hang)
- `HTTP 502/503` → Service jalan tapi ada error di aplikasi

Verbose flag `-v` penting — lo bisa lihat di layer mana koneksi gagal.

---

Juga coba:
```
curl -v http://localhost:80
```

> ✅ Konfirmasi error message yang lo dapat. Klik **Check**.
