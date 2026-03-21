# Batman Forever JAMMA Adapter — Project Context File
**Date: 2026-03-02**
**Author: Matt (mathewbeall on arcade-projects.com)**
**Design Tool: EasyEDA Pro (JLCEDA Pro) V2.2.45.4 — Mac desktop client**

---

## 1. PROJECT STATUS SUMMARY

### Test Board PCB
- **Ordered from JLCPCB** ~Feb 12, 2026
- **Specs:** 4-layer, green, ENIG, gold fingers (no bevel), 1oz outer / 0.5oz inner copper, 1.6mm thick
- **Cost:** ~$45 + $24 shipping (with $20 coupon applied)
- **Board dimensions detected by JLCPCB:** 157mm × 49mm
- **Qty:** 5 boards
- **PCB DRC:** 0 errors at time of order
- **Note:** Had to cancel and reorder once — discovered a 5V main line was not connected. Fixed and reordered.

### Component Assembly
- **All through-hole, hand solder** — no SMD, no JLCPCB assembly
- Most parts received from DigiKey, Amazon, Adafruit
- **OPEN ISSUE:** RCA jacks (CUI RCJ-012 red, RCJ-013 white) do not fit the PCB footprint — see Section 5

### Schematic & PCB Design
- **Schematic:** Complete, 0 DRC errors
- **PCB Layout:** Complete, 0 DRC errors, routing done
- **Reference spec:** batman-forever-spec-v71.md (Engineering Design Specification v7.1)

---

## 2. BILL OF MATERIALS BY VENDOR

### DigiKey — PCB-Mount Components

| Qty | Description | Mfr Part # | DigiKey Part # | ~Price |
|-----|-------------|-----------|---------------|--------|
| 1 | Molex KK 396 header, 6-pos, vertical, 3.96mm (J3) | 26-48-1065 | WM50008-06-ND | $1.02 |
| 1 | RCA jack, PCB mount, through-hole, WHITE (J7 — Left) | CUI RCJ-013 | CP-1402-ND | ~$0.80 |
| 1 | RCA jack, PCB mount, through-hole, RED (J8 — Right) | CUI RCJ-012 | CP-1401-ND | ~$0.80 |
| 2 | 1×40 male breakaway pin header, 2.54mm | — | S1012EC-40-ND (or similar) | $1.00 ea |
| 4 | 2-pin jumper shunt, 2.54mm (JP1–JP4) | — | S9001-ND (or similar) | $0.10 ea |

**Pin header cut list (from 2× 1×40 strips):**
- 4× 3-pin → JP1, JP2, JP3, JP4
- 3× 3-pin → J14, J15, J16
- 3× 4-pin → J4, J9, J10
- 31 pins used / 80 available

### DigiKey — Power Cable (J3 → Sound Board J1)

| Qty | Description | Mfr Part # | DigiKey Part # | ~Price |
|-----|-------------|-----------|---------------|--------|
| 1 | Molex KK .156" 6-pin crimp housing, standard (adapter J3 end) | 09-50-3061 | WM2104-ND | $0.26 |
| 1 | Molex KK .156" 7-pin crimp housing, standard (sound board J1 end) | 09-50-3071 | WM2105-ND | $0.30 |
| 15 | Molex KK .156" crimp terminals, 18-24 AWG | 08-50-0106 | WM2300-ND | $0.14 ea |

**Note:** The housings are plastic shells. The terminals are individual metal crimp pins that snap into the housings. Buy 25-30 terminals total to have spares for crimp mistakes.

**Power cable pinout (J3 adapter → J1 sound board):**

J3 has 3 GND pins, 1 +5V, and 2 +12V — clean 1:1 cable to J1, no splices or empty pins needed.

| Adapter J3 Pin | Signal | Wire Color | → | Sound Board J1 Pin | Signal |
|----------------|--------|------------|---|-------------------|--------|
| 1 | GND | Black | → | 3 | GND |
| 2 | GND | Black | → | 4 | GND |
| 3 | GND | Black | → | 7 | GND |
| 4 | +5V | Red | → | 6 | +5V |
| 5 | +12V | Yellow | → | 1 | +12V |
| 6 | +12V | Yellow | → | 2 | +12V |

Sound board J1 pin 5 = KEY (empty position in 7-pin housing)

### DigiKey — Speaker Cable (J4 → Sound Board J6)

| Qty | Description | Mfr Part # | DigiKey Part # | ~Price |
|-----|-------------|-----------|---------------|--------|
| 1 | Molex KK .156" 4-pin crimp housing, standard (adapter J4 end) | 09-50-3041 | WM2102-ND | $0.20 |
| 1 | Molex KK .156" 5-pin crimp housing, standard (sound board J6 end) | 09-50-3051 | WM2103-ND | $0.22 |
| 9 | Molex KK .156" crimp terminals, 22-30 AWG | 0008500160 | WM16517-ND | $0.14 ea |

**Speaker cable pinout (Sound Board J6 → Adapter J4):**

| Sound Board J6 Pin | Signal | → | Adapter J4 Pin |
|--------------------|--------|---|---------------|
| 1 | Speaker L+ | → | 1 |
| 2 | Speaker L- | → | 2 |
| 3 | Speaker R+ | → | 3 |
| 4 | KEY (NC) | → | — (skip) |
| 5 | Speaker R- | → | 4 |

### DigiKey — Wire

| Qty | Description |
|-----|-------------|
| 18" | 18-20 AWG stranded wire — red, black, yellow (power cable) |
| 18" | 22 AWG stranded wire — 4 colors (speaker cable) |

### Amazon / eBay

| Qty | Description | ~Price | Notes |
|-----|-------------|--------|-------|
| 1 pack | SS42H11-G9 4PDT slide switch, 12-pin, 3mm pitch (SW1, SW2) | ~$8/10-pack | Only need 2 |
| 1 | SS-12D10L8 SPDT slide switch, 3-pin (SW3) | ~$1 | Often in multi-packs |
| 1 | 56-pin JAMMA female edge connector, PCB solder pin type (CN2) | ~$5–10 | **MUST be solder pin, NOT solder eyelet** |
| 1 | 0.28" 3-digit voltmeter module, 3-wire, red or green | ~$3–5 | Connects to J16 header |
| 1 set | M3×10mm hex standoffs + M3 screws/nuts (×4) | ~$5 | For mounting holes |

### Adafruit

| Qty | Description | Product # | ~Price | Notes |
|-----|-------------|----------|--------|-------|
| 1 | Alpha RV16A01F-41-15R1-B10K dual-gang 10kΩ pot, right-angle (RV1) | #5274 | ~$3.50 | **⚠️ Verify pin spacing matches PCB footprint** |

---

## 3. SOUND BOARD CONNECTOR REFERENCE (from manual, Post #148)

### J1 — Power Input (on sound board)
- **Molex KK Series .156" (3.96mm pitch)**
- Housing: 09-50-3071 (7-pin)
- Pin: 09-50-0106
- Wire: 18 AWG
- Pinout: 1=+12V(Blue), 2=+12V(Blue), 3=GND(Black), 4=GND(Black), 5=KEY(NC), 6=+5V(Red), 7=GND(Black)

### J6 — Amplified Stereo Output (on sound board)
- **Molex KK Series .156" (3.96mm pitch)**
- Housing: 09-50-3051 (5-pin)
- Pin: 09-50-0106
- Wire: 22 AWG
- Pinout: 1=Speaker L+(Brown), 2=Speaker L-(Gray), 3=Speaker R+(Violet), 4=KEY(NC), 5=Speaker R-(Gray)

---

## 4. PRODUCTION REVISION UPGRADES

These changes apply to the final production board (black, 2oz copper, beveled fingers):

| Ref | Test Board Part | Production Part | Mfr Part # | Change Required |
|-----|----------------|----------------|-----------|-----------------|
| J4 | 4-pin 2.54mm pin header | Molex KK 396, 4-pos, vertical, 3.96mm | 26-48-1045 | Footprint change: 2.54mm → 3.96mm pitch |
| J14 | 3-pin 2.54mm pin header | Molex KK 254, 3-pos, vertical, keyed | 22-23-2031 | Same pitch, swap to polarized/shrouded header |
| J15 | 3-pin 2.54mm pin header | Molex KK 254, 3-pos, vertical, keyed | 22-23-2031 | Same pitch, swap to polarized/shrouded header |
| J7/J8 | RCA jacks — **FIX FOOTPRINT** | CUI RCJ-013 (white) / RCJ-012 (red) | — | See Section 5 |
| PCB | Green, 1oz/0.5oz copper, no bevel | Black, 2oz all layers, 45° bevel | — | Increase board height 1mm (50mm min for bevel) |

---

## 5. OPEN ISSUE — RCA JACK FOOTPRINT MISMATCH

### Problem
The CUI RCJ-012 (red) and RCJ-013 (white) RCA jacks **do not physically fit** the PCB footprint used in EasyEDA.

### What we know
- The EasyEDA footprint appears to be "RCA-TH_RCJ-106" — it has multiple pads including several GND pads spread around the jack outline (pads 1-6 labeled GND, plus pad 2 for GND and signal/line out pads)
- The CUI RCJ-01x series has only 3 connections: center pin (signal), ground pin, and shield/mounting tab
- The footprint in EasyEDA was likely from a different RCA jack variant in the LCSC library

### Next steps
1. Hold physical RCJ-012/013 up against the PCB and photograph to see if any holes line up
2. Check the footprint name in EasyEDA properties panel for J7/J8
3. Compare the CUI RCJ-01x datasheet pin dimensions against the PCB pad positions
4. Determine if test board can work with creative pin alignment, or if a different RCA jack needs to be sourced
5. Fix footprint in EasyEDA for production revision

### Note on the PCB layout
The J7/J8 area on the PCB also has pads from adjacent components on the top side (J9 line input header is nearby). When looking at the footprint, ignore pads that belong to neighboring components — focus only on the pads within the RCA jack outline.

---

## 6. JLCPCB ORDER SETTINGS REFERENCE

### Test Board (ordered)
- Layers: 4
- PCB Thickness: 1.6mm
- Color: Green
- Surface Finish: ENIG
- Gold Fingers: Yes
- Beveling: No (board is 49mm, under 50mm minimum)
- Outer Copper: 1oz
- Inner Copper: 0.5oz
- Via Covering: Plugged
- Board Outline Tolerance: ±0.2mm (Regular)
- Electrical Test: Flying Probe Fully Test
- Mark on PCB: Remove Mark

### Production Board (future)
- Same as above except:
- Color: Black
- Outer Copper: 2oz
- Inner Copper: 2oz
- Beveling: 45° (requires board height ≥ 50mm — increase gold finger tabs from 7.5mm to 8mm)

---

## 7. KEY REMINDERS

1. **No passive components** — zero resistors or capacitors on this board
2. **All through-hole** — hand solder everything
3. **RCA jacks (J7/J8) mount on the BOTTOM layer**
4. **JAMMA female connector (CN2)** is soldered onto top edge gold fingers — must be solder pin type, NOT eyelet
5. **Power cable requires pin remapping** — see Section 2 table
6. **SW1/SW2 use 3mm pin pitch** — verify SS42H11-G9 matches before soldering
7. **RV1 pot pin spacing** — verify against PCB footprint before soldering
8. **Crimp tool needed** for Molex KK terminals — or carefully solder them
9. **Board dimensions:** 157mm × 49mm (detected by JLCPCB from Gerbers). Original design spec was 112×85mm but that was before layout was finalized.
10. **EasyEDA Pro does NOT have "Footprint Manager" under Design menu** — do not suggest this path

---

## 8. FORUM THREAD REFERENCE

- **Thread:** https://www.arcade-projects.com/threads/wait-list-batman-forever-sound-pcb-repro.27304/
- **Derick's final renders:** Post #191
- **Sound board J1/J6 pinouts from manual:** Post #148 (twistedsymphony)
- **Derick confirms 4-layer/2oz/ENIG:** Post #180
- **Button remap discovery:** Post #165 (twistedsymphony)
- **Stereo-to-mono method:** Post #144 (Taito L+/R- method)
- **Voltmeter change to .28":** Post #199
- **Resources thread:** https://www.arcade-projects.com/threads/batman-forever-sound-pcb-repro-instructions-and-resources.29327/
- **Derick unreachable for ~2 years:** Post #263 (Mitsurugi-w, Sept 2025)
- **Sound board RCA jacks:** J14/J13 = line-level out (red/white), J11/J10 = mix-in (red/white), black = combined mono out
- **Matt volunteers to recreate:** Posts #264–265 (Jan 2026)

---

## 9. PREVIOUS CHAT LINKS

- **PCB design continuation:** https://claude.ai/chat/53bd90ab-fd6a-4c70-95be-35378fa4d15a
- **Component placement & layout:** https://claude.ai/chat/b1de875a-774c-458f-8320-40138f66c6c9
- **Engineering spec & routing:** https://claude.ai/chat/87a7480d-c92e-4e32-90d3-f005df6978a1
- **JLCPCB order settings:** https://claude.ai/chat/4058d34c-f29d-4c3d-8332-e2a61823f110
- **BOM, ordering, RCA jack issue (this chat):** Current session
