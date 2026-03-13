# Bill of Materials

**Estimated total cost per board: ~$35-50** (excluding PCB)

---

## PCB-Mount Components (DigiKey)

| Ref | Qty | Description | Part Number | DigiKey PN | ~Price |
|-----|-----|-------------|-------------|-----------|--------|
| J3 | 1 | Molex KK 396 header, 6-pos, vertical, 3.96mm (power) | 0026481065 | WM50008-06-ND | $1.02 |
| J4 | 1 | Molex KK 396 header, 4-pos, vertical, 3.96mm (speaker) | 0026481045 | WM50008-04-ND | $0.55 |
| J7 | 1 | Kycon RCA jack, right-angle, 2-pin, RED (Left audio) | KLPX-0848A-2-R | 2092-KLPX-0848A-2-R-ND | $0.83 |
| J8 | 1 | Kycon RCA jack, right-angle, 2-pin, WHITE (Right audio) | KLPX-0848A-2-W | 2092-KLPX-0848A-2-W-ND | $0.95 |
| J9, J10 | 2 | Molex KK 254 header, 4-pos, vertical, keyed (line in/out) | 22-23-2041 | WM4202-ND | $0.35 ea |
| J14, J15 | 2 | Molex KK 254 header, 3-pos, vertical, keyed (fan) | 22-23-2031 | WM4201-ND | $0.30 ea |
| J16 | 1 | 1x3 male pin header, 2.54mm (voltmeter) | — | S1012EC-40-ND | $1.00 |

**J16 note:** Cut 3 pins from a standard 1x40 breakaway strip.

---

## Non-PCB Components (Amazon / eBay / Adafruit)

| Ref | Qty | Description | Source | ~Price | Notes |
|-----|-----|-------------|--------|--------|-------|
| SW1, SW2, SW4 | 3 | SS42H11-G9 4PDT slide switch, 12-pin, 3mm pitch | Amazon (10-pack) | ~$8 | Snip 4 mounting lugs flush before soldering |
| SW3 | 1 | SS-12D10L8 SPDT slide switch | Amazon / eBay | ~$1 | Often sold in multi-packs |
| CN2 | 1 | 56-pin JAMMA female edge connector, PCB solder pin type | Amazon / Memotronics | $5-10 | **Must be solder pin type, NOT solder eyelet** |
| — | 1 | 0.28" 3-digit voltmeter module, 3-wire (red or green) | Amazon / eBay | $3-5 | Connects to J16 header |
| RV1 | 1 | Alpha RV16A01F-41-15R1-B10K dual-gang 10K pot, right-angle | [Adafruit #5274](https://www.adafruit.com/product/5274) | $3.50 | 6-pin dual-gang; G1=Left, G2=Right |

---

## Cable-Making Supplies (DigiKey)

### Power Cable (J3 → Sound Board J1)

| Qty | Description | Part Number | DigiKey PN | ~Price |
|-----|-------------|-------------|-----------|--------|
| 1 | Molex KK 396 housing, 6-pin (adapter end) | 0009503061 | WM2104-ND | $0.26 |
| 1 | Molex KK 396 housing, 7-pin (sound board end) | 0009503071 | WM2105-ND | $0.30 |
| 15 | Molex KK 396 crimp terminal, **18-24 AWG** | 08-50-0106 | WM2300-ND | $0.14 ea |
| — | 18" of 18-20 AWG stranded wire (red, black, yellow) | — | — | — |

### Speaker Cable (J4 → Sound Board J6)

| Qty | Description | Part Number | DigiKey PN | ~Price |
|-----|-------------|-------------|-----------|--------|
| 1 | Molex KK 396 housing, 4-pin (adapter end) | 0009503041 | WM2102-ND | $0.20 |
| 1 | Molex KK 396 housing, 5-pin (sound board end) | 0009503051 | WM2103-ND | $0.22 |
| 9 | Molex KK 396 crimp terminal, **22-30 AWG** | 0008500160 | WM16517-ND | $0.14 ea |
| — | 18" of 22 AWG stranded wire (4 colors) | — | — | — |

### Line In/Out Cables (J9, J10)

| Qty | Description | Part Number | DigiKey PN | ~Price |
|-----|-------------|-------------|-----------|--------|
| 2 | Molex KK 254 housing, 4-pin (no lock) | 22-01-2047 | WM1577-ND | $0.14 ea |
| 8 | Molex KK 254 crimp terminal, 22-30 AWG | 0008500113 | WM1114CT-ND | $0.10 ea |

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
