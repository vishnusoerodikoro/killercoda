## Step 2 — Isolasi DNS Resolution Time

DNS lookup yang lambat bisa jadi penyebab tersembunyi. Isolasi dulu.

```
dig api.github.com +stats | grep "Query time"
```

Output:
```
;; Query time: 12 msec
```

Coba beberapa kali:
```
for i in {1..3}; do dig api.github.com +stats | grep "Query time"; done
```

**Interpretasi:**
- < 50ms → DNS normal
- 50-200ms → DNS agak lambat, pertimbangkan local caching (dnsmasq, systemd-resolved)
- > 200ms → DNS bermasalah, coba ganti ke 8.8.8.8 atau 1.1.1.1

Bandingkan juga dengan query ke domain lokal vs luar negeri:
```
dig www.google.com +stats | grep "Query time"
```

> ✅ Run `dig api.github.com +stats`. Berapa query time-nya? Klik **Check**.
