## Step 1 — Path-Level Test dengan mtr

`mtr` adalah kombinasi `ping` + `traceroute`. Ia menunjukkan **setiap hop** di jalur network dan latency per hop.

```
mtr --report --report-cycles 10 api.github.com
```

`--report` = non-interaktif, output sekali jalan
`--report-cycles 10` = kirim 10 packet per hop

Contoh output:
```
HOST: ubuntu                    Loss%   Snt   Last   Avg  Best  Wrst StDev
  1.|-- 10.0.2.2                 0.0%    10    0.5   0.4   0.3   0.6   0.1
  2.|-- 192.168.1.1              0.0%    10    3.2   3.1   2.9   3.5   0.2
  ...
 12.|-- lb-140-82-114-5-sin.g... 0.0%    10  165.2 168.1 162.0 175.0   4.1
```

**Yang dicari:**
- Hop mana yang tiba-tiba latency naik besar (itu bottleneck-nya)
- Loss% > 0% di hop tengah (bisa noise, tapi perlu dicatat)

> ✅ Run `mtr --report --report-cycles 10 api.github.com`. Catat hop terakhir (tujuan). Klik **Check**.
