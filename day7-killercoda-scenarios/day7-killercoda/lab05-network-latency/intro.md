# 🔴 Insiden: API Lambat, Tim Bilang "Jaringan Lemot"

**API call ke `https://api.github.com` kadang-kadang >2 detik.**

Tim development langsung bilang: *"Pasti jaringannya yang lemot."*

Tugas lo: **buktikan** dimana tepatnya waktu hilang. Bukan asumsi — data.

## Latency Budget: Di Mana Waktu Hilang?

```
Client → [DNS lookup] → [TCP connect] → [TLS handshake] → [Server processing] → Response
           ~10ms           ~100ms           ~200ms              ~50ms
```

Tiap fase punya karakteristiknya sendiri. Lo bisa isolasi masing-masing.

## Tools

| Command | Measures |
|---------|----------|
| `mtr --report host` | Per-hop latency (path tracing) |
| `dig host +stats` | DNS resolution time |
| `curl -w '...'` | DNS + TCP + TLS + TTFB breakdown |

---

> 💡 Lab ini tidak ada fault injection — menggunakan target real internet (`api.github.com`). Pastikan VM punya koneksi internet.
