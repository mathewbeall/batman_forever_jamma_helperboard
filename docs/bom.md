# Bill of Materials

**All prices verified 2026-03-20**
**Estimated total cost per assembled unit: ~$66.83** (including PCB, amortized across V1.1 + V1.2 runs)

---

## Per-Board Cost Summary

| Category | Cost |
|----------|------|
| DigiKey — PCB-mount headers/jacks/resistors | $4.95 |
| DigiKey — Cable housings & terminals | $7.50 |
| Amazon/AliExpress — Switches, voltmeter, IDE cable | $13.11 |
| Adafruit — RV1 pot | $2.75 |
| Memotronics — CN2 JAMMA connector | $2.69 |
| Wire (estimated per board) | $3.50 |
| **Components subtotal** | **$34.50** |
| Shipping estimate (10%) | $3.45 |
| **Total per board (components + shipping)** | **$37.95** |
| PCB cost ($664.28 total / 23 sellable boards) | $28.88 |
| **Grand total per assembled unit** | **$66.83** |

---

## PCB-Mount Components (DigiKey)

| Location | Qty | Description | Part Number | DigiKey PN | Link | Price | Ext |
|----------|-----|-------------|-------------|-----------|------|-------|-----|
| Power header (G G G 5V 12V) | 1 | Molex KK 396 header, 6-pos, vertical, 3.96mm | 0026481065 | WM50008-06-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0026481065/26763) | $1.02 | $1.02 |
| Speaker header (+ L - + R -) | 1 | Molex KK 396 header, 4-pos, vertical, 3.96mm | 0026481045 | WM50008-04-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0026481045/26761) | $0.83 | $0.83 |
| RCA jack — L (bottom, red) | 1 | Kycon RCA jack, right-angle, 2-pin, RED | KLPX-0848A-2-R | 2092-KLPX-0848A-2-R-ND | [DigiKey](https://www.digikey.com/en/products/detail/kycon-inc/KLPX-0848A-2-R/9990119) | $0.83 | $0.83 |
| RCA jack — R (bottom, white) | 1 | Kycon RCA jack, right-angle, 2-pin, WHITE | KLPX-0848A-2-W | 2092-KLPX-0848A-2-W-ND | [DigiKey](https://www.digikey.com/en/products/detail/kycon-inc/KLPX-0848A-2-W/9990120) | $0.83 | $0.83 |
| INPUT header | 1 | Molex KK 254 header, 4-pos, vertical, shrouded | 22-23-2041 | WM4202-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232041/26671) | $0.26 | $0.26 |
| OUTPUT header | 1 | Molex KK 254 header, 4-pos, vertical, shrouded | 22-23-2041 | WM4202-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232041/26671) | $0.26 | $0.26 |
| 12V FANS header (×2) | 2 | Molex KK 254 header, 3-pos, vertical, shrouded | 22-23-2031 | WM4201-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232031/26669) | $0.22 | $0.44 |
| Audio ballast resistors (×4) | 4 | 0.22 ohm 1W 5% axial resistor, metal film | RR01JR22TB | A131610CT-ND | [DigiKey](https://www.digikey.com/en/products/detail/te-connectivity-passive-product/RR01JR22TB/2384744) | $0.13 | $0.52 |
| | | | | | | **Subtotal:** | **$4.95** |

**Note:** All Molex headers are dedicated parts (not cut from breakaway strips).

---

## Non-PCB Components

| Location | Qty | Description | Source | Link | Price | Ext | Notes |
|----------|-----|-------------|--------|------|-------|-----|-------|
| Audio (ST-V/Batman), P1, P2 switches | 3 | SS42H11-G9 4PDT slide switch, 12-pin, 3mm pitch | AliExpress (10-pack, $10.74) | [AliExpress](https://www.aliexpress.us/item/2251801767074174.html) | $1.07 | $3.21 | Snip 4 mounting lugs flush before soldering |
| Voltmeter select switch (5V) | 1 | SS-12D10 SPDT slide switch | Amazon (10-pack, $10) | [Amazon](https://www.amazon.com/dp/B07QB8RVKT) | $1.00 | $1.00 | |
| JAMMA female connector | 1 | 56-pin JAMMA female edge connector, PCB solder pin type | Memotronics | [Memotronics](https://memotronics.com/jamma-56-pin-arcade-card-edge-connector-socket-pcb-mount-3-96mm-0-156/) | $2.69 | $2.69 | **Must be solder pin, NOT solder eyelet** |
| Voltmeter module | 1 | 0.28" 3-digit voltmeter module, 3-wire | Amazon (10-pack, $14) | [Amazon](https://www.amazon.com/dp/B0BG31FBX5) | $1.40 | $1.40 | Solder wires directly into header holes |
| Volume pot | 1 | Alpha RV16A01F-41-15R1-A10K-30H4 dual-gang 10K audio taper pot, right-angle | Adafruit | [Adafruit #5272](https://www.adafruit.com/product/5272) | $2.75 | $2.75 | |
| — | 1 | 40-pin IDE ribbon cable (Darksoft multi → sound board) | Amazon (2-pack, $15) | [Amazon](https://www.amazon.com/dp/B01IT4V7J6) | $7.50 | $7.50 | |
| | | | | | **Subtotal:** | **$18.55** | |

---

## Cable-Making Supplies (DigiKey)

### Power Cable (Power Header → Sound Board J1)

| Qty | Description | Part Number | DigiKey PN | Link | Price | Ext |
|-----|-------------|-------------|-----------|------|-------|-----|
| 1 | KK .156" 6-pin crimp housing (adapter end) | 0009503061 | WM2104-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503061/26461) | $0.26 | $0.26 |
| 1 | KK .156" 7-pin crimp housing (sound board J1 end) | 0009503071 | WM2105-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503071/26463) | $0.36 | $0.36 |
| 15 | KK .156" crimp terminal, **18-24 AWG** | 08-50-0106 | WM2300-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0850-0106/26477) | $0.11 | $1.65 |
| | | | | | **Subtotal:** | **$2.27** |

### Speaker Cable (Speaker Header → Sound Board J6)

| Qty | Description | Part Number | DigiKey PN | Link | Price | Ext |
|-----|-------------|-------------|-----------|------|-------|-----|
| 1 | KK .156" 4-pin crimp housing (adapter end) | 0009503041 | WM2102-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503041/26457) | $0.17 | $0.17 |
| 1 | KK .156" 5-pin crimp housing (sound board J6 end) | 0009503051 | WM2103-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503051/26459) | $0.22 | $0.22 |
| 9 | KK .156" crimp terminal, **22-30 AWG** | 0008500160 | WM16517-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0008500160/3071500) | $0.26 | $2.34 |
| | | | | | **Subtotal:** | **$2.73** |

### Line In/Out Cables (INPUT / OUTPUT Headers)

| Qty | Description | Part Number | DigiKey PN | Link | Price | Ext |
|-----|-------------|-------------|-----------|------|-------|-----|
| 2 | KK 254 4-pin crimp housing, no lock | 22-01-2041 | WM1577-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022012041/1090455) | $0.21 | $0.42 |
| 8 | KK 254 crimp terminal, 22-30 AWG | 0008500160 | WM16517-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0008500160/3071500) | $0.26 | $2.08 |
| | | | | | **Subtotal:** | **$2.50** |

### Wire

| Qty | Description | Per-Board | Notes |
|-----|-------------|-----------|-------|
| ~3 ft | 18-20 AWG stranded (red, black, yellow) — power cable | ~$1.75 | From 25ft spool set |
| ~3 ft | 22 AWG stranded (4 colors) — speaker cable | ~$1.75 | From 25ft spool set |
| | | **Subtotal: ~$3.50** | |

---

## Tools Required

- Soldering iron and solder
- Flush cutters (for trimming pins and switch mounting lugs)
- Molex KK crimp tool (for cable terminals) — or carefully solder the terminals

---

## Important Warnings

- **Power cable terminals:** Use **08-50-0106** (WM2300-ND) rated for 18-24 AWG. Do NOT use 08-50-0114 (WM1114-ND) — it is rated 22-30 AWG only and cannot crimp 18 AWG wire.
- **Speaker cable terminals:** Use **0008500160** (WM16517-ND) rated for 22-30 AWG.
- **RCA jacks mount on the BOTTOM layer** of the PCB. Flush-cut pins on the top side for volume pot clearance.
- **JAMMA connector** must be the solder pin type, not the solder eyelet type.
- **Volume pot taper is audio (A10K)**, not linear (B10K) — correct for volume control.
- **Buy extra crimp terminals** — budget 50% spares for crimp mistakes.
