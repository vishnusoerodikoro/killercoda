# 🎉 Lab 04 Selesai — Web Server Down

## Diagnostic Ladder yang Benar

```
curl -v http://localhost     → "Error apa? Di layer mana?"
  ↓
systemctl status nginx       → "Service up/down/failed?"
  ↓
journalctl -u nginx          → "Ada error message?"
  ↓
sudo nginx -t                → "Config valid?"
  ↓
sudo ss -tulnp | grep nginx  → "Listening di port yang benar?"
  ↓
Fix → restart → verify
```

## 3 Variant yang Sering Ditemui

| Symptom | Penyebab | Fix |
|---------|----------|-----|
| `Connection refused`, status `inactive` | Service tidak jalan | `systemctl start nginx` |
| `Connection refused`, status `failed` | Config error | Fix syntax, `nginx -t`, restart |
| `Connection refused` di port 80 tapi OK di port lain | Listen di port salah | Fix `listen` directive, restart |

---

Lanjut ke **Lab 05 → Network Latency Triage**!
