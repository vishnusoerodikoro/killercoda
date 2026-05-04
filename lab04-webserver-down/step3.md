## Step 3 — Baca Logs & Validasi Config

### Baca logs nginx
```
journalctl -u nginx --since '5 min ago'
```

Atau kalau mau tail real-time:
```
journalctl -u nginx -f
```

Log error biasanya sangat informatif — ada nama file dan line number.

### Validasi syntax config
```
sudo nginx -t
```

Output kalau config OK:
```
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
```

Output kalau ada error:
```
nginx: [emerg] unknown directive "invalid_directive_here" in /etc/nginx/nginx.conf:1
```

---

Kalau config error ditemukan, edit file yang disebutkan dan fix baris yang bermasalah.

> ✅ Run `sudo nginx -t`. Apakah config valid? Klik **Check**.
