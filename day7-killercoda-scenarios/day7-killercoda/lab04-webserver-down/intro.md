# 🔴 Insiden: Web Server Tak Bisa Diakses

**Tim baru deploy nginx. User report: "connection refused" saat akses http://localhost.**

Ini scenario yang sangat umum di dunia nyata. Ada **3 kemungkinan penyebab** yang berbeda:

| Variant | Penyebab | Layer |
|---------|----------|-------|
| A | Service nginx tidak jalan | Process layer |
| B | Config nginx rusak (syntax error) | Config layer |
| C | Nginx jalan tapi listen di port salah | Network layer |

Lab ini akan melatih lo untuk **climb the layers** — tidak skip langsung ke solusi.

## Diagnostic Ladder

```
curl -v http://localhost     → Reproduce
  ↓
systemctl status nginx       → Service up?
  ↓
journalctl -u nginx          → Error message?
  ↓
sudo nginx -t                → Config valid?
  ↓
sudo ss -tulnp | grep nginx  → Port benar?
```

> Jangan pernah langsung reinstall sebelum diagnose. Itu yang membedakan engineer junior vs senior.
