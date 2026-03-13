# Cable Build Guide

This board requires two cables to connect to the Mitsurugi-w Batman Forever sound board repro.

**Before powering on any cable, verify with a multimeter that there are no shorts between +5V, +12V, and GND at both connector ends.**

---

## Power Cable (Adapter J3 → Sound Board J1)

Connects the adapter's 6-pin J3 header to the sound board's 7-pin J1 power connector. This is a straight 1:1 cable with no splices — pin 5 (KEY) on the sound board side is left empty.

### Pinout

| Adapter J3 Pin | Signal | Wire Color | → | Sound Board J1 Pin | Signal |
|----------------|--------|------------|---|-------------------|--------|
| 1 | GND | Black | → | 3 | GND |
| 2 | GND | Black | → | 4 | GND |
| 3 | GND | Black | → | 7 | GND |
| 4 | +5V | Red | → | 6 | +5V |
| 5 | +12V | Yellow | → | 1 | +12V |
| 6 | +12V | Yellow | → | 2 | +12V |
| — | — | — | — | 5 (KEY) | Empty |

J3 pin 1 is on the LEFT when viewing the board from the front (component side facing you).

### Parts

- **Wire:** 18-20 AWG stranded, ~6-8 inches per conductor
- **Adapter end:** Molex KK 396 6-pin housing (0009503061 / WM2104-ND)
- **Sound board end:** Molex KK 396 7-pin housing (0009503071 / WM2105-ND)
- **Terminals:** 08-50-0106 (WM2300-ND) — rated 18-24 AWG

### Safety Warning

**DO NOT use 08-50-0114 (WM1114-ND) crimp terminals for this cable.** Those are rated 22-30 AWG only and cannot properly crimp 18 AWG power wire. Use 08-50-0106 (WM2300-ND) which is rated for 18-24 AWG.

---

## Speaker Cable (Sound Board J6 → Adapter J4)

Connects the sound board's 5-pin J6 speaker output to the adapter's 4-pin J4 speaker input. Pin 4 (KEY) on the sound board side is skipped.

### Pinout

| Sound Board J6 Pin | Signal | Wire Color | → | Adapter J4 Pin |
|--------------------|--------|------------|---|---------------|
| 1 | Speaker L+ | Brown | → | 1 |
| 2 | Speaker L- | Gray | → | 2 |
| 3 | Speaker R+ | Violet | → | 3 |
| 4 | KEY (NC) | — | → | skip |
| 5 | Speaker R- | Gray | → | 4 |

### Parts

- **Wire:** 22 AWG stranded, ~6-8 inches per conductor
- **Adapter end:** Molex KK 396 4-pin housing (0009503041 / WM2102-ND)
- **Sound board end:** Molex KK 396 5-pin housing (0009503051 / WM2103-ND)
- **Terminals:** 0008500160 (WM16517-ND) — rated 22-30 AWG

---

## Voltmeter Wiring (J16)

The voltmeter module connects to J16 with 3 wires:

| J16 Pin | Wire | Signal |
|---------|------|--------|
| 1 | Yellow | Measurement input (from SW3 common) |
| 2 | Red | VCC (+12V always) |
| 3 | Black | GND |

The voltmeter module itself always runs on 12V. SW3 selects whether pin 1 measures the 5V or 12V rail.

---

## Crimp Terminal Quick Reference

| Cable | Wire Gauge | Correct Terminal | DigiKey PN |
|-------|-----------|-----------------|------------|
| Power (J3→J1) | 18 AWG | Molex 08-50-0106 | WM2300-ND |
| Speaker (J6→J4) | 22 AWG | Molex 0008500160 | WM16517-ND |
| Line in/out (J9/J10) | 22 AWG | Molex 0008500113 | WM1114CT-ND |
