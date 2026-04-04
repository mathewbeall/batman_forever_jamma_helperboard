# Cable Build Guide

## Power Cable (Power Header → Sound Board J1)

6-pin on the adapter side, 7-pin on the sound board side (pin 5 is the key — leave empty).

| Adapter Pin | Signal | Wire Color | → | Sound Board J1 Pin | Signal |
|-------------|--------|------------|---|-------------------|--------|
| 1 | GND | Black | → | 3 | GND |
| 2 | GND | Black | → | 4 | GND |
| 3 | GND | Black | → | 7 | GND |
| 4 | +5V | Red | → | 6 | +5V |
| 5 | +12V | Yellow | → | 1 | +12V |
| 6 | +12V | Yellow | → | 2 | +12V |
| — | — | — | — | 5 (KEY) | Empty |

Silkscreen on the adapter reads "G G G 5V 12V" (left to right, pin 1 on the left when viewing from the front).

### Parts

| Qty | Description | DigiKey PN |
|-----|-------------|-----------|
| 1 | KK .156" 6-pin crimp housing (adapter end) | WM2104-ND |
| 1 | KK .156" 7-pin crimp housing (sound board end) | WM2105-ND |
| 12+ | KK .156" crimp terminal, **18-24 AWG** | WM2300-ND |

Use 18 AWG stranded wire. **Do NOT use WM1114-ND terminals — they are 22-30 AWG only and cannot crimp 18 AWG wire.**

---

## Speaker Cable (Speaker Header → Sound Board J6)

4-pin on the adapter side, 5-pin on the sound board side (pin 4 is the key — leave empty).

| Sound Board J6 Pin | Signal | → | Adapter Pin |
|--------------------|--------|---|-------------|
| 1 | Speaker L+ | → | 1 |
| 2 | Speaker L- | → | 2 |
| 3 | Speaker R+ | → | 3 |
| 4 | KEY (NC) | — | skip |
| 5 | Speaker R- | → | 4 |

Silkscreen on the adapter reads "+ L - + R -".

### Parts

| Qty | Description | DigiKey PN |
|-----|-------------|-----------|
| 1 | KK .156" 4-pin crimp housing (adapter end) | WM2102-ND |
| 1 | KK .156" 5-pin crimp housing (sound board end) | WM2103-ND |
| 9+ | KK .156" crimp terminal, **18-24 AWG** | WM2300-ND |

Use 18 AWG stranded wire. Same terminals as the power cable.

---

## Line-Level Audio Cables (INPUT / OUTPUT Headers)

These connect the sound board's RCA line-level outputs to the adapter's INPUT header, and the adapter's OUTPUT header to an external amplifier (via RCA jacks or direct).

### Sound Board RCA Jacks

| Jack | Color | Function |
|------|-------|----------|
| J14 | Red | Line-level output — Right |
| J13 | White | Line-level output — Left |
| J11 | Red | Mix-in input — Right |
| J10 | White | Mix-in input — Left |
| — | Black | Combined mono output |

Connect J14 (red) and J13 (white) to the adapter's INPUT header.

### Parts

| Qty | Description | DigiKey PN |
|-----|-------------|-----------|
| 2 | KK 254 4-pin crimp housing, no lock | WM1577-ND |
| 8+ | KK 254 crimp terminal, 22-30 AWG | WM16517-ND |

Use 22 AWG stranded wire.

---

## Safety

- **Always verify no shorts between +5V, +12V, and GND at both connector ends before powering on.**
- Double-check pin 5 (KEY) on the sound board housings is left empty.
- Budget 50% extra crimp terminals for mistakes.
- A proper Molex crimp tool is recommended. Crimping with pliers works but is less reliable.
