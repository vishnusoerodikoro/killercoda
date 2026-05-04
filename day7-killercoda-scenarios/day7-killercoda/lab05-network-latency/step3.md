## Step 3 — Latency Breakdown dengan curl -w

Ini **the money command** untuk network latency triage. `curl -w` bisa breakdown waktu per fase.

```bash
curl -w \
  'DNS:         %{time_namelookup}s\nTCP connect:  %{time_connect}s\nTLS handshake:%{time_appconnect}s\nTTFB:         %{time_starttransfer}s\nTotal:        %{time_total}s\n' \
  -o /dev/null -s \
  https://api.github.com/zen
```

`-o /dev/null` = buang response body
`-s` = silent (no progress bar)
`/zen` = endpoint ringan dari GitHub API

Contoh output dari Indonesia:
```
DNS:          0.015s
TCP connect:  0.185s
TLS handshake:0.390s
TTFB:         0.450s
Total:        0.460s
```

**Baca hasilnya:**
- `time_namelookup` → DNS only
- `time_connect - time_namelookup` → TCP handshake only
- `time_appconnect - time_connect` → TLS handshake only
- `time_starttransfer - time_appconnect` → Server processing only

---

Bandingkan dengan endpoint yang lebih dekat:
```
curl -w 'Total: %{time_total}s\n' -o /dev/null -s https://www.google.com
```

> ✅ Run curl -w ke api.github.com. Klik **Check**.
