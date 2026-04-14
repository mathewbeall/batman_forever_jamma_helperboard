# Batman Forever JAMMA Adapter — Bill of Materials
**Last Updated: 2026-03-22**
**All prices verified against vendor listings**

---

## Per-Board Component Cost Summary

| Category | Subtotal |
|----------|----------|
| DigiKey — PCB-mount components | $4.95 |
| DigiKey — Cable parts | $6.15 |
| Amazon/AliExpress — Switches, voltmeter, IDE cable | $8.11 |
| Adafruit — Pot | $2.75 |
| Memotronics — JAMMA connector | $2.69 |
| Wire (estimated per board) | $3.50 |
| **Components subtotal** | **$28.15** |
| Shipping estimate (10%) | $2.82 |
| **Total per board (components + shipping)** | **$30.97** |
| PCB cost ($681.27 total / 24 sellable boards) | $28.39 |
| **Grand total per assembled unit** | **$59.36** |

---

## DigiKey — PCB-Mount Components

| Ref | Qty | Description | Mfr Part # | DigiKey Part # | Link | Price | Ext |
|-----|-----|-------------|-----------|---------------|------|-------|-----|
| J3 | 1 | Molex KK 396 header, 6-pos, vertical, 3.96mm (power) | 0026481065 | WM50008-06-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0026481065/26763) | $1.02 | $1.02 |
| J4 | 1 | Molex KK 396 header, 4-pos, vertical, 3.96mm (speaker) | 0026481045 | WM50008-04-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0026481045/26759) | $0.79 | $0.79 |
| J7 | 1 | Kycon RCA jack, right-angle, 2-pin, RED (Left audio) | KLPX-0848A-2-R | 2092-KLPX-0848A-2-R-ND | [DigiKey](https://www.digikey.com/en/products/detail/kycon-inc/KLPX-0848A-2-R/9990119) | $0.83 | $0.83 |
| J8 | 1 | Kycon RCA jack, right-angle, 2-pin, WHITE (Right audio) | KLPX-0848A-2-W | 2092-KLPX-0848A-2-W-ND | [DigiKey](https://www.digikey.com/en/products/detail/kycon-inc/KLPX-0848A-2-W/9990120) | $0.83 | $0.83 |
| J9 | 1 | Molex KK 254, 4-pos, vertical, shrouded (line in) | 22-23-2041 | WM4202-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232041/26671) | $0.26 | $0.26 |
| J10 | 1 | Molex KK 254, 4-pos, vertical, shrouded (line out) | 22-23-2041 | WM4202-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232041/26671) | $0.26 | $0.26 |
| J14 | 1 | Molex KK 254, 3-pos, vertical, shrouded (fan) | 22-23-2031 | WM4201-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232031/26669) | $0.22 | $0.22 |
| J15 | 1 | Molex KK 254, 3-pos, vertical, shrouded (fan) | 22-23-2031 | WM4201-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022232031/26669) | $0.22 | $0.22 |
| R1-R4 | 4 | 0.22 ohm 1W 5% axial resistor, metal film (V1.2 audio ballast) | RR01JR22TB | A131610CT-ND | [DigiKey](https://www.digikey.com/en/products/detail/te-connectivity-passive-product/RR01JR22TB/2384744) | $0.13 | $0.52 |
| | | | | | | **Subtotal:** | **$4.95** |

**Note:** J3, J4, J9, J10, J14, J15 are dedicated Molex headers (not cut from breakaway strips). Voltmeter wires solder directly to pads — no header needed.

---

## DigiKey — Power Cable Parts (J3 → Sound Board J1)

| Qty | Description | Mfr Part # | DigiKey Part # | Link | Price | Ext |
|-----|-------------|-----------|---------------|------|-------|-----|
| 1 | KK .156" 6-pin crimp housing (adapter J3 end) | 0009503061 | WM2104-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503061/26461) | $0.26 | $0.26 |
| 1 | KK .156" 7-pin crimp housing (sound board J1 end) | 0009503071 | WM2105-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503071/26463) | $0.36 | $0.36 |
| 15 | KK .156" crimp terminals, 18-24 AWG | 08-50-0106 | WM2300-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0850-0106/26477) | $0.11 | $1.65 |
| | | | | | **Subtotal:** | **$2.27** |

**Power cable pinout:** See CLAUDE.md. J3 pins 1-2-3 = GND, pin 4 = +5V, pins 5-6 = +12V. Clean 1:1 cable to J1.

---

## DigiKey — Speaker Cable Parts (J4 → Sound Board J6)

| Qty | Description | Mfr Part # | DigiKey Part # | Link | Price | Ext |
|-----|-------------|-----------|---------------|------|-------|-----|
| 1 | KK .156" 4-pin crimp housing (adapter J4 end) | 0009503041 | WM2102-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503041/26457) | $0.17 | $0.17 |
| 1 | KK .156" 5-pin crimp housing (sound board J6 end) | 0009503051 | WM2103-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0009503051/26459) | $0.22 | $0.22 |
| 9 | KK .156" crimp terminals, 18-24 AWG | 08-50-0106 | WM2300-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0850-0106/26477) | $0.11 | $0.99 |
| | | | | | **Subtotal:** | **$1.38** |

**J6 Pinout:** 1=Speaker L+, 2=Speaker L-, 3=Speaker R+, 4=KEY (NC), 5=Speaker R-
**J4 on adapter:** 4-pin KK 396 receives pins 1,2,3,5 (skip pin 4 KEY)
**Speaker wire:** 18 AWG — uses same WM2300-ND crimp terminals as power cable.

---

## DigiKey — KK 254 Cable Parts (J9/J10 Line In/Out)

J9/J10 use Molex KK .100" (2.54mm) — different series from .156" power/speaker cables. J14/J15 fan cables not needed (fans come with hardwired connectors). This is the only cable using WM16517-ND (22-30 AWG) crimp terminals.

| Qty | Description | Mfr Part # | DigiKey Part # | Link | Price | Ext |
|-----|-------------|-----------|---------------|------|-------|-----|
| 2 | KK 254, 4-pin crimp housing, no lock | 22-01-2041 | WM1577-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0022012041/1090455) | $0.21 | $0.42 |
| 8 | KK 254 crimp terminals, 22-30 AWG | 0008500160 | WM16517-ND | [DigiKey](https://www.digikey.com/en/products/detail/molex/0008500160/3071500) | $0.26 | $2.08 |
| | | | | | **Subtotal:** | **$2.50** |

---

## DigiKey Total: $11.10

(PCB-mount: $4.95 + Power cable: $2.27 + Speaker cable: $1.38 + KK 254 cable: $2.50)

**⚠️ Buy extra crimp terminals** — budget 10-15% spares for crimp mistakes.

**⚠️ Crimp tool required** for Molex KK terminals — or carefully solder them.

---

## Amazon / AliExpress

| Ref | Qty | Description | Source | Per-Unit | Ext | Notes |
|-----|-----|-------------|--------|----------|-----|-------|
| SW1, SW2, SW4 | 3 | SS42H11-G9 4PDT slide switch, 12-pin | [AliExpress](https://www.aliexpress.us/item/2251801767074174.html) | $1.07 | $3.21 | Sold in 10-packs ($10.74). Snip 4 mounting lugs flush before soldering. |
| SW3 | 1 | SS-12D10 SPDT slide switch, 3-pin | [Amazon](https://www.amazon.com/dp/B07QB8RVKT) | $1.00 | $1.00 | Sold in 10-packs ($10). |
| — | 1 | 0.28" 3-digit voltmeter module, 3-wire | [Amazon](https://www.amazon.com/dp/B0BG31FBX5) | $1.40 | $1.40 | Sold in 10-packs ($14). Connects to J16. |
| — | 1 | 40-pin IDE ribbon cable (Darksoft multi → sound board) | [Amazon](https://www.amazon.com/dp/B07FZXK2D4) | $2.50 | $2.50 | Sold in 4-packs ($9.99). 30cm F/F IDC. |
| | | | | **Subtotal:** | **$8.11** | |

---

## Adafruit

| Ref | Qty | Description | Link | Price | Notes |
|-----|-----|-------------|------|-------|-------|
| RV1 | 1 | Alpha RV16A01F-41-15R1-A10K-30H4 dual-gang 10kΩ audio taper pot, right-angle | [Adafruit #5272](https://www.adafruit.com/product/5272) | $2.75 | Dry fit confirmed on test board |

---

## Memotronics

| Ref | Qty | Description | Link | Price | Notes |
|-----|-----|-------------|------|-------|-------|
| CN2 | 1 | 56-pin JAMMA female edge connector, PCB solder pin type | [Memotronics](https://memotronics.com/jamma-56-pin-arcade-card-edge-connector-socket-pcb-mount-3-96mm-0-156/) | $2.69 | **Must be solder pin, NOT solder eyelet.** Bifurcated gold-plated contacts. |

---

## Wire

| Qty | Description | Source | Per-Board | Notes |
|-----|-------------|--------|-----------|-------|
| ~3 ft | 18-20 AWG stranded (red, black, yellow) — power cable | [Amazon](https://www.amazon.com/) | ~$1.75 | From 25ft spool set ($27.50/set) |
| ~3 ft | 18-20 AWG stranded (4 colors) — speaker cable | [Amazon](https://www.amazon.com/) | ~$1.75 | From 25ft spool set ($27.50/set) |
| | | | **Subtotal: ~$3.50** | |

---

## Per-Board Cost Breakdown

| Category | Cost |
|----------|------|
| DigiKey — PCB-mount headers/jacks/resistors | $4.95 |
| DigiKey — Cable housings & terminals | $6.15 |
| Amazon/AliExpress — Switches, voltmeter, IDE cable | $8.11 |
| Adafruit — RV1 pot | $2.75 |
| Memotronics — CN2 JAMMA connector | $2.69 |
| Wire (estimated per board) | $3.50 |
| **Components subtotal** | **$28.15** |
| Shipping estimate (10%) | $2.82 |
| **Total per board (components + shipping)** | **$30.97** |
| PCB cost ($681.27 total / 24 sellable boards) | $28.39 |
| **Grand total per assembled unit** | **$59.36** |

---

## Notes

1. **V1.2 adds 4 resistors** (R1-R4, 0.22 ohm ballast for BTL audio summing). No capacitors. All other routing is direct wire.
2. **All through-hole** — no SMD. Hand solder everything.
3. **RCA jacks (Kycon KLPX-0848A-2) mount on the BOTTOM layer.** True 2-pin design (1 GND + 1 signal). Flush-cut J7/J8 pins on top for RV1 clearance.
4. **CN2 (JAMMA female connector)** is soldered onto the top edge gold fingers — mechanical part, not a PCB component.
5. **SW1/SW2/SW4** use 3mm pin pitch — verify SS42H11-G9 matches before soldering. Snip 4 mounting lugs flush.
6. **SW4 replaces JP1-JP4** — single switch for ST-V/Batman audio mode selection.
7. **RV1 taper is audio (A10K)**, not linear (B10K) — correct for volume control.
8. **40-pin IDE cable** connects Darksoft multi edition to the sound board.
9. **Standoffs** — TBD, not yet sourced.
10. **Prices verified 2026-03-15.** Per-unit prices calculated from bulk pack costs where applicable.
