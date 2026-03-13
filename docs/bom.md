# Bill of Materials

**All prices verified 2026-03-12**
**Estimated total cost per assembled unit: ~$52.50** (including PCB)

---

## Per-Board Cost Summary

| Category | Cost |
|----------|------|
| DigiKey — PCB-mount headers/jacks | $4.90 |
| DigiKey — Cable housings & terminals | $5.82 |
| Amazon/AliExpress — Switches, voltmeter, IDE cable | $13.11 |
| Adafruit — RV1 pot | $2.75 |
| Memotronics — CN2 JAMMA connector | $2.69 |
| Wire (estimated per board) | $3.50 |
| **Components subtotal** | **$32.77** |
| Shipping estimate (10%) | $3.28 |
| **Total per board (components + shipping)** | **$36.05** |
| PCB cost ($329 / 20 boards) | $16.45 |
| **Grand total per assembled unit** | **$52.50** |

---

## PCB-Mount Components (DigiKey)

| Ref | Qty | Description | Part Number | DigiKey PN | Link | Price | Ext |
|-----|-----|-------------|-------------|-----------|------|-------|-----|
| J3 | 1 | Molex KK 396 header, 6-pos, vertical, 3.96mm (power) | 0026481065 | WM50008-06-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0026481065/26763) | $1.02 | $1.02 |
| J4 | 1 | Molex KK 396 header, 4-pos, vertical, 3.96mm (speaker) | 0026481045 | WM50008-04-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0026481045/26761) | $0.83 | $0.83 |
| J7 | 1 | Kycon RCA jack, right-angle, 2-pin, RED (Left audio) | KLPX-0848A-2-R | 2092-KLPX-0848A-2-R-ND | [DigiKey](https://www.digikey.com/en/products/detail/kycon-inc/KLPX-0848A-2-R/9990119) | $0.83 | $0.83 |
| J8 | 1 | Kycon RCA jack, right-angle, 2-pin, WHITE (Right audio) | KLPX-0848A-2-W | 2092-KLPX-0848A-2-W-ND | [DigiKey](https://www.digikey.com/en/products/detail/kycon-inc/KLPX-0848A-2-W/9990120) | $0.83 | $0.83 |
| J9 | 1 | Molex KK 254 header, 4-pos, vertical, shrouded (line in) | 22-23-2041 | WM4202-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232041/26671) | $0.26 | $0.26 |
| J10 | 1 | Molex KK 254 header, 4-pos, vertical, shrouded (line out) | 22-23-2041 | WM4202-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232041/26671) | $0.26 | $0.26 |
| J14 | 1 | Molex KK 254 header, 3-pos, vertical, shrouded (fan) | 22-23-2031 | WM4201-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232031/26669) | $0.22 | $0.22 |
| J15 | 1 | Molex KK 254 header, 3-pos, vertical, shrouded (fan) | 22-23-2031 | WM4201-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232031/26669) | $0.22 | $0.22 |
| J16 | 1 | 1x40 breakaway pin header, 2.54mm (cut 1x3) | PREC040SAAN-RC | S1012EC-40-ND | [DigiKey](https://www.digikey.com/en/products/detail/sullins-connector-solutions/PREC040SAAN-RC/2774814) | $0.43 | $0.43 |
| | | | | | | **Subtotal:** | **$4.90** |

**J16 note:** Cut 3 pins from the 1x40 breakaway strip. Plenty of spares.

**Note:** J3, J4, J9, J10, J14, J15 are dedicated Molex headers (not cut from breakaway strips).

---

## Non-PCB Components

| Ref | Qty | Description | Source | Link | Price | Ext | Notes |
|-----|-----|-------------|--------|------|-------|-----|-------|
| SW1, SW2, SW4 | 3 | SS42H11-G9 4PDT slide switch, 12-pin, 3mm pitch | AliExpress (10-pack, $10.74) | [AliExpress](https://www.aliexpress.us/item/2251801767074174.html) | $1.07 | $3.21 | Snip 4 mounting lugs flush before soldering |
| SW3 | 1 | SS-12D10 SPDT slide switch | Amazon (10-pack, $10) | [Amazon](https://www.amazon.com/dp/B07QB8RVKT) | $1.00 | $1.00 | |
| CN2 | 1 | 56-pin JAMMA female edge connector, PCB solder pin type | Memotronics | [Memotronics](https://memotronics.com/jamma-56-pin-arcade-card-edge-connector-socket-pcb-mount-3-96mm-0-156/) | $2.69 | $2.69 | **Must be solder pin, NOT solder eyelet** |
| — | 1 | 0.28" 3-digit voltmeter module, 3-wire | Amazon (10-pack, $14) | [Amazon](https://www.amazon.com/dp/B0BG31FBX5) | $1.40 | $1.40 | Connects to J16 header |
| RV1 | 1 | Alpha RV16A01F-41-15R1-A10K-30H4 dual-gang 10K audio taper pot, right-angle | Adafruit | [Adafruit #5272](https://www.adafruit.com/product/5272) | $2.75 | $2.75 | Dry fit confirmed on test board |
| — | 1 | 40-pin IDE ribbon cable (Darksoft multi → sound board) | Amazon (2-pack, $15) | [Amazon](https://www.amazon.com/dp/B01IT4V7J6) | $7.50 | $7.50 | |
| | | | | | **Subtotal:** | **$18.55** | |

---

## Cable-Making Supplies (DigiKey)

### Power Cable (J3 → Sound Board J1)

| Qty | Description | Part Number | DigiKey PN | Link | Price | Ext |
|-----|-------------|-------------|-----------|------|-------|-----|
| 1 | KK .156" 6-pin crimp housing (adapter J3 end) | 0009503061 | WM2104-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503061/26461) | $0.26 | $0.26 |
| 1 | KK .156" 7-pin crimp housing (sound board J1 end) | 0009503071 | WM2105-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503071/26463) | $0.36 | $0.36 |
| 15 | KK .156" crimp terminal, **18-24 AWG** | 08-50-0106 | WM2300-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0850-0106/26477) | $0.11 | $1.65 |
| | | | | | **Subtotal:** | **$2.27** |

### Speaker Cable (J4 → Sound Board J6)

| Qty | Description | Part Number | DigiKey PN | Link | Price | Ext |
|-----|-------------|-------------|-----------|------|-------|-----|
| 1 | KK .156" 4-pin crimp housing (adapter J4 end) | 0009503041 | WM2102-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503041/26457) | $0.17 | $0.17 |
| 1 | KK .156" 5-pin crimp housing (sound board J6 end) | 0009503051 | WM2103-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503051/26459) | $0.22 | $0.22 |
| 9 | KK .156" crimp terminal, **22-30 AWG** | 0008500160 | WM16517-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0008500160/3071500) | $0.26 | $2.34 |
| | | | | | **Subtotal:** | **$2.73** |

### Line In/Out Cables (J9, J10)

| Qty | Description | Part Number | DigiKey PN | Link | Price | Ext |
|-----|-------------|-------------|-----------|------|-------|-----|
| 2 | KK 254 4-pin crimp housing, no lock | 22-01-2041 | WM1577-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022012041/1090455) | $0.21 | $0.42 |
| 8 | KK 254 crimp terminal, 22-30 AWG | 0008500113 | WM1114CT-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0008500113/304071) | $0.05 | $0.40 |
| | | | | | **Subtotal:** | **$0.82** |

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
- **RCA jacks mount on the BOTTOM layer** of the PCB. Flush-cut J7/J8 pins on the top side for RV1 clearance.
- **CN2 (JAMMA connector)** must be the solder pin type, not the solder eyelet type.
- **RV1 taper is audio (A10K)**, not linear (B10K) — correct for volume control.
- **Buy extra crimp terminals** — budget 50% spares for crimp mistakes.
