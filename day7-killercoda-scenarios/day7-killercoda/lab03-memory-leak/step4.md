## Step 4 — Konfirmasi & Remediate

### Kill proses leaker
```
pkill -f leak.py
```

### Konfirmasi memory dibebaskan
```
free -h
```

Bandingkan kolom `available` sekarang vs baseline step 1. Harusnya kembali ke angka semula (atau mendekati).

```
# Cleanup
rm /tmp/leak.py
```

---

### Pertanyaan refleksi

Di produksi, setelah kill proses leaker, lo harus:

1. **Report ke developer** dengan data: grafik RSS growth, waktu, rate leak per menit
2. **Sementara**: pasang monitoring alert kalau `available` < threshold
3. **Jangka panjang**: developer harus fix code (biasanya: object tidak di-release, connection pool tidak di-close, cache unbounded)

> ✅ Kill leak.py, run `free -h`, konfirmasi `available` naik lagi. Klik **Check**.
