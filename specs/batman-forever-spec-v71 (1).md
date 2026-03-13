# ST-V Batman Forever JAMMA Adapter PCB
## Engineering Design Specification v7.1
**Date: 2026-02-10**
**Author: Matt (mathewbeall on arcade-projects.com)**
**Design Tool: EasyEDA Pro (JLCEDA Pro) V2.2.45.4 — Mac desktop client**
**Project Name in EasyEDA: Batman_Forever_JAMMA_Adapter**

---

## 1. PURPOSE

A JAMMA edge adapter board for the Sega ST-V arcade platform that enables the Batman Forever sound board repro (by Mitsurugi-w) to work in generic JAMMA cabinets. This is a recreation of Derick2k's abandoned design from the arcade-projects.com forum (thread: "Wait List — Batman Forever Sound PCB Repro," post #191 shows final renders).

Derick2k has been unreachable for nearly two years and never released his design files. This project recreates the board from his renders and the community discussion.

## 2. WHAT THE BOARD DOES

1. **Pass-through** — Most JAMMA signals (video, controls, coins, test, service) pass straight through untouched.
2. **Power distribution** — Taps JAMMA 5V/12V/GND to power the sound board (via cable with pin remapping), fan headers, voltage breakouts, and a voltmeter display.
3. **Audio switching** — Four 3-pin jumpers select whether cabinet speakers receive audio from the Batman sound board (mixed to mono) or the ST-V's native JAMMA audio (pass-through).
4. **Button remapping** — Two 4PDT slide switches shift P1/P2 button mapping for Batman Forever, which maps to buttons 2/3/4 instead of 1/2/3. The 4th pole handles button 4→5 mapping to prevent duplicate inputs.
5. **Line-level audio path** — Independent path with volume pot, RCA jacks, and pin headers for cabinets with external amplifiers.
6. **Voltage monitoring** — Slide switch selects 5V or 12V rail to display on a 0.28" 3-digit voltmeter module.

## 3. PHYSICAL SPECIFICATIONS

**Board shape:** Stepped/I-shaped profile — wider main body with narrower gold finger tabs at top and bottom.

| Section | Width | Height | Notes |
|---------|-------|--------|-------|
| Top gold finger tab (CN2) | 112mm | 7.5mm | ST-V side, female socket soldered on top |
| Main body | 157mm | 37mm | Component area with mounting holes at corners |
| Bottom gold finger tab (CN1) | 112mm | 7.5mm | Cabinet side, plugs into JAMMA harness |
| **Overall** | **157mm** | **52mm** | |

- **Mounting holes:** 4× corner holes on the main body, 3.2mm diameter NPTH (M3 standoffs)
- **Gold finger tabs centered** on the main body width (22.5mm margin on each side)
- **PCB layers:** 4 layers (Top, Inner1, Inner2, Bottom)
- **Copper weight:** 2oz on all layers
- **PCB color:** Black solder mask, gold ENIG finish
- **Both edges require gold finger plating** — select "Gold Fingers" option at JLCPCB
- **Beveled/chamfered gold fingers**
- **CN1 key notch:** Board outline cutout at pad 7/35 position for JAMMA harness key tab

---

## 4. COMPONENT PICK LIST (Bill of Materials)

### 4.1 PCB-Mount Components — Digikey / Standard Distributors

| Ref | Qty | Description | Suggested Part | Source | Notes |
|-----|-----|-------------|----------------|--------|-------|
| J3 | 1 | 6-pin header, 3.96mm pitch, vertical, through-hole | Molex 26-48-1065 (KK 396, 6-pos breakaway) | Digikey / Jameco | **LCSC alt: HC-3.96-6A6 (C2979533)** — used in EasyEDA schematic |
| J4 | 1 | 4-pin male header, 2.54mm pitch, vertical | Standard 1×4 pin header | Digikey (any generic) | Sound board speaker input — pin headers OK for test board |
| J9 | 1 | 4-pin male header, 2.54mm pitch, vertical | Standard 1×4 pin header | Digikey | Line level input — G R G L |
| J10 | 1 | 4-pin male header, 2.54mm pitch, vertical | Standard 1×4 pin header | Digikey | Line level output — G R G L |
| J14 | 1 | 3-pin male header, 2.54mm pitch, vertical | Standard 1×3 pin header | Digikey | 12V fan header |
| J15 | 1 | 3-pin male header, 2.54mm pitch, vertical | Standard 1×3 pin header | Digikey | 12V fan header |
| J16 | 1 | 3-pin male header, 2.54mm pitch, vertical | Standard 1×3 pin header | Digikey | Voltmeter module header |
| JP1–JP4 | 4 | 3-pin male header, 2.54mm pitch, vertical | Standard 1×3 pin header | Digikey | Audio selection jumpers |
| — | 4 | 2-pin jumper shunt, 2.54mm | Standard shorting block | Digikey | For JP1–JP4 |
| J7 | 1 | RCA jack, PCB mount, through-hole | CUI Devices RCJ-011 (Digikey CP-1400-ND) | Digikey | Line out LEFT — **mounts on bottom layer** |
| J8 | 1 | RCA jack, PCB mount, through-hole | CUI Devices RCJ-011 (Digikey CP-1400-ND) | Digikey | Line out RIGHT — **mounts on bottom layer** |
| RV1 | 1 | 10kΩ dual-gang potentiometer, 16mm, right-angle PC mount | Alpha RV16A01F-41-15R1-B10K | Adafruit (Product 5274) | 6-pin dual-gang; G1=Left, G2=Right. **Verify footprint matches before ordering.** |
| SW1 | 1 | 4PDT slide switch, 12-pin, 2×6 grid, 3mm pitch | SS42H11-G9 | Amazon (10-pack ~$8) | Footprint updated to 3mm pitch in v7.1 |
| SW2 | 1 | 4PDT slide switch, 12-pin, 2×6 grid, 3mm pitch | SS42H11-G9 | Amazon (10-pack ~$8) | Same part as SW1 |
| SW3 | 1 | SPDT slide switch, 3-pin | SS-12D10L8 | Digikey / Amazon | Voltmeter 5V/12V selector |

### 4.2 Pin Header Summary (buy breakaway strips and cut to size)

Instead of buying individual 3-pin and 4-pin headers, buy breakaway strips:

| Qty | Description | Suggested Part | Notes |
|-----|-------------|----------------|-------|
| 2 | 1×40 male pin header strip, 2.54mm, breakaway | Digikey (any standard) | Cut to size: 4×3-pin (JP1-JP4), 3×3-pin (J14, J15, J16), 3×4-pin (J4, J9, J10) |

### 4.3 Non-PCB Components — Specialty / Amazon / eBay

| Qty | Description | Suggested Source | Notes |
|-----|-------------|-----------------|-------|
| 1 | 56-pin JAMMA female edge connector, PCB mount, 3.96mm | Amazon (B06XTNTNN8) / Memotronics | Soldered onto CN2 (ST-V side, top of board). **Must be PCB solder pin type, NOT solder eyelet.** |
| 1 | 0.28" 3-digit voltmeter module (red or green) | Amazon / eBay | Mounts in VM1/VM2 holes, 28mm center-to-center. Wires route through VM3 slot to J16. |
| 4 | M3×10mm hex standoffs + M3 screws/nuts | Amazon / hardware store | For mounting holes |
| 1 | 6-pin to 7-pin power cable (custom) | Hand-made | See Section 7.3 for cable mapping. Uses Molex KK .156" crimp pins — 6-pin housing on adapter end, 7-pin housing on sound board end. |

### 4.4 Cable-Making Supplies (for J3-to-Sound Board cable)

| Qty | Description | Suggested Part | Notes |
|-----|-------------|----------------|-------|
| 1 | Molex KK .156" 6-pin crimp housing | Molex 09-50-8063 | Adapter end |
| 1 | Molex KK .156" 7-pin crimp housing | Molex 09-50-8073 | Sound board end |
| 13 | Molex KK .156" crimp terminals, 18-24 AWG (power) | Molex 08-50-0106 (WM2300-ND) | 6 on adapter end + 7 on sound board end |
| ~18" | 18-20 AWG stranded wire (red, black, yellow) | Any | 3 colors for GND/5V/12V identification |

---

## 5. CRITICAL DIMENSIONS & SPACING REFERENCE

*(unchanged from v7.0 — see Sections 5.1–5.10)*

---

## 6. JAMMA PINOUT REFERENCE (VERIFIED)

*(unchanged from v6.2)*

---

## 7. SIGNAL ROUTING — COMPLETE NET LIST

### 7.1 Direct Pass-Through (CN2 pad N → CN1 pad N)

Pads: 7, 8, 9, 12, 13, 15, 16, 17, 18, 19, 20, 21, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49

**⚠️ Pads 25, 26, 53, 54 are NOT pass-through** — they route through SW1/SW2 pole D.
**⚠️ CN1 pads 26 and 54 have NO CONNECTION** — BTN5 only exists on the ST-V side (CN2).

### 7.2 Power Nets

- **GND:** CN1/CN2 pads 1, 2, 14, 27, 28, 29, 30, 55, 56 + J3 pins 1/2/3 + J7/J8 shields + J9/J10 pins 1/3 + J14/J15 pin 1 + J16 pin 3 + RV1 ground — **HANDLED BY GND COPPER POURS on Top, Bottom, and Inner1 layers**
- **+5V:** CN1/CN2 pads 3, 4, 31, 32 + **J3 pin 4** + SW3 Pin 1
- **+12V:** CN1/CN2 pads 6, 34 + **J3 pins 5/6** + J14/J15 pin 2 + J16 pin 2 + SW3 Pin 3
- **-5V:** CN1/CN2 pads 5, 33 (pass-through only)

### 7.3 Sound Board Power (J3 — 6-pin)

**J3 pinout on the adapter board (matches JAMMA pad positions):**

| J3 Pin | Signal | Aligns with JAMMA Pad |
|--------|--------|----------------------|
| 1 | GND | GND pads |
| 2 | GND | GND pads |
| 3 | GND | GND pads |
| 4 | +5V | Pads 3-4 / 31-32 |
| 5 | +12V | Pads 6 / 34 |
| 6 | +12V | Pads 6 / 34 |

**Cable mapping (J3 → J1) — clean 1:1, no splices:**

| Adapter J3 Pin | Signal | → | Sound Board J1 Pin | Signal |
|----------------|--------|---|-------------------|--------|
| 1 (GND) | GND | → | 3 (GND) | GND |
| 2 (GND) | GND | → | 4 (GND) | GND |
| 3 (GND) | GND | → | 7 (GND) | GND |
| 4 (+5V) | +5V | → | 6 (+5V) | +5V |
| 5 (+12V) | +12V | → | 1 (+12V) | +12V |
| 6 (+12V) | +12V | → | 2 (+12V) | +12V |

Sound board J1 pin 5 (KEY) = empty position in 7-pin housing.

### 7.4–7.7 *(unchanged from v6.2)*

---

## 8. PCB LAYOUT — LAYER STRATEGY

### 8.1 Layer Stack (4-layer, 2oz copper)

| Layer | Name | Type | Usage |
|-------|------|------|-------|
| 1 | Top | Signal | Component side, signal traces, GND copper pour |
| 2 | Inner1 | Signal | GND copper pour (primary ground plane), signal routing overflow |
| 3 | Inner2 | Signal | **+5V and +12V horizontal power distribution (2.5mm traces)** |
| 4 | Bottom | Signal | Back side components (J7/J8 RCA), signal traces, GND copper pour |

### 8.2 Power Routing Strategy

**Vertical power traces (Top and Bottom layers, 2.5mm width):**
- Top layer: CN2 pads 3/4 (+5V) → J3 pin 4 → CN1 pads 3/4
- Top layer: CN2 pad 6 (+12V) → J3 pins 5/6 → CN1 pad 6
- Bottom layer: CN2 pads 31/32 (+5V) → J3 pin 4 → CN1 pads 31/32
- Bottom layer: CN2 pad 34 (+12V) → J3 pins 5/6 → CN1 pad 34
- J3 pins 1/2/3 (GND) connect via ground pours

**Horizontal power traces (Inner Layer 2, 2.5mm width):**
- +12V: J3 Pin 5 → J16 pin 2 → SW3 pin 3 → J14 pin 2 → J15 pin 2
- +5V: J3 Pin 4 → SW3 pin 1

**Why Inner Layer 2 for horizontal power:** Through-hole component pads exist on all layers, so no vias needed. Running power on a dedicated inner layer keeps top and bottom completely clear for signal routing.

### 8.3 GND Strategy

GND copper pours on **three layers** (Top, Bottom, Inner1). Inner2 has **NO** GND pour — it is dedicated to power traces only. All through-hole GND pads connect automatically through the pours. Inner1 serves as the primary ground reference plane.

**Routing sequence that achieved 0 DRC errors:**
1. Route all power traces manually (vertical on Top/Bottom, horizontal on Inner2)
2. **Remove ALL copper pours** from every layer
3. Run autorouter on all 4 layers (ignore GND, +5V, +12V nets; keep existing traces; 0.5mm width)
4. After autorouter completes with 0 errors, **add GND copper pour back to Inner1 only**
5. Then add GND copper pours back to Top and Bottom layers
6. Rebuild all copper pours → 0 DRC errors

### 8.4 Component Placement Zones (left to right on front view)

| Zone | Components | Notes |
|------|-----------|-------|
| Far left | RV1 (volume pot), J9 (line in), J10 (line out) | Pot shaft protrudes from back |
| Center-left | J3 (6-pin power), J4 (4-pin speaker) | J3 aligned with JAMMA power pads |
| Center | JP1-JP4 (audio jumpers) | 4-across at 100mil spacing |
| Center-right | SW1 (P1 remap), SW2 (P2 remap) | 2×6 footprints side by side |
| Right | VM1/VM2 (voltmeter mount), pot cutout, VM3 (wire slot), J16, SW3 | Voltmeter on front face |
| Far right | J14/J15 (fan headers) | Stacked vertically on right edge |

---

## 9. PROJECT STATUS IN EASYEDA

### Schematic: ✅ COMPLETE (v7.0)
- All components placed and wired
- J3: HC-3.96-6A6, 6-pin (LCSC C2979533)
- J3 pinout: Pin 1=GND, Pin 2=GND, Pin 3=GND, Pin 4=+5V, Pin 5=+12V, Pin 6=+12V
- DRC: **0 errors** ✅

### PCB Layout: ✅ ROUTING COMPLETE — READY FOR TEST GERBER EXPORT

**Completed:**
- ✅ 4-layer board configured (Top, Inner1, Inner2, Bottom — all Signal type)
- ✅ 2oz copper design rules set (copperThickness2oz as default)
- ✅ Board outline drawn as stepped I-shape (157mm × 52mm overall)
- ✅ CN1 key notch at pad 7/35 position
- ✅ CN1/CN2 aligned (same Center X on pad 1)
- ✅ All components placed in correct zones per Derick's render
- ✅ **Power routing complete (manual, 2.5mm traces):**
  - Vertical +5V and +12V on Top layer (parts-side pads)
  - Vertical +5V and +12V on Bottom layer (solder-side pads)
  - Horizontal +5V and +12V on Inner Layer 2 (to SW3, J14, J15, J16)
  - No vias needed — through-hole pads span all layers
- ✅ **GND copper pours on Top, Bottom, and Inner1 layers** (Inner2 = power only, no pour)
- ✅ **Autorouter completed with 0 DRC errors** using optimized sequence (strip pours → autoroute → add pours back)
- ✅ All mounting holes, voltmeter cutouts placed
- ✅ JP1-JP4 verified at 100mil spacing
- ✅ All 56 pads on CN1/CN2, pin order correct

### Design Rule Settings (copperThickness2oz):
- Track to Track: 0.203mm
- Track to SMD Pad: 0.2mm
- Track to TH Pad: 0.2mm
- Track to Via: 0.2mm
- Track to Fill Region/Teardrop: 0.3mm
- Track to Board Outline: 0.3mm
- Track to Hole: 0.175mm
- Default trace width: 0.5mm (signal), 2.5mm (power)

### Current DRC: **0 errors** ✅

---

## 10. MANUFACTURING NOTES (JLCPCB Order Settings)

- **Manufacturer:** JLCPCB
- **Layers:** 4
- **Copper weight:** 2oz
- **Gold Fingers option:** REQUIRED for both edges
- **Beveled/chamfered gold fingers:** YES
- **Board color:** Black solder mask
- **Surface finish:** ENIG (gold)
- **All components are through-hole** — no SMD, no JLCPCB assembly needed
- **Hand-solder assembly**
- **Stepped board outline** requires custom board shape in Gerber output
- **Board cutouts** (voltmeter pot clearance, wire slot, CN1 key notch) will be routed out by manufacturer

---

## 11. REMAINING ITEMS BEFORE FINAL PRODUCTION

1. ~~**SW1/SW2 physical switch verification**~~ ✅ RESOLVED — Footprint changed to 3mm pitch to match SS42H11-G9. DRC clean.
2. **J4 connector type** — Verify against physical cable from sound board J6. Pin headers work for testing; match correct connector for production.
3. **J3-to-J1 cable build** — Assemble custom 6-pin to 7-pin cable per Section 7.3 mapping table.
4. **RV1 pot footprint** — Verify Alpha RV16A01F pin spacing matches custom 6-pin footprint.
5. **Gold finger pad dimensions** — Verify against JLCPCB gold finger requirements.
6. **Voltmeter cutout fine-tuning** — Verify VM1/VM2 spacing and pot cutout against physical module.
7. **RCA jack footprint** — Verify J7/J8 footprint matches selected CUI RCJ jack before ordering.
8. **Silkscreen cleanup** — Add SEGA logo, Batman logo, ST-V box, improved pin labels for production revision.

---

## 12. AUDIO JUMPER OPERATION (JP1–JP4)

Each jumper is a 3-pin header with a 2-pin shorting block:
- **Pin 1 (top):** ST-V native JAMMA audio
- **Pin 2 (center):** Cabinet output (always connected to speaker/amp)
- **Pin 3 (bottom):** Batman Forever sound board audio (from J4)

**ST-V mode (jumpers on pins 1-2):** Normal JAMMA audio pass-through. Board acts transparent.

**Batman mode (jumpers on pins 2-3):** Sound board audio routed to cabinet. Direct BTL parallel summing — L+ and R+ tied to Speaker+, L- and R- tied to Speaker-. No resistor network needed because BTL outputs can be safely paralleled.

| Jumper | Function | JAMMA Pad |
|--------|----------|-----------|
| JP1 | SPK+ | Pad 10 |
| JP2 | SPK- | Pad 38 |
| JP3 | AUD+ | Secondary audio |
| JP4 | AUD- | Secondary audio |

All four jumpers move together — never mix modes between jumpers.

### Sound Board RCA Jacks (on repro sound board, upper right)

The sound board has 5 RCA jacks. From the forum thread (Mitsurugi-w, post #98):

| Sound Board Jack | Color | Function |
|-----------------|-------|----------|
| J14 | Red | Line-level output — Right |
| J13 | White | Line-level output — Left |
| J11 | Red | Mix-in input — Right |
| J10 | White | Mix-in input — Left |
| (black) | Black | Combined mono output (both channels summed) |

**Line-level out (J14/J13)** → connect to adapter board J9 (INPUT) for volume control via RV1, then out through J7/J8 RCA jacks (or J10 header) to external amplifier.

**Mix-in (J11/J10)** → allows external audio sources to be mixed with game audio. Can be used to route other game audio through the Batman sound board's built-in amp.

---

## 13. EASYEDA PRO TIPS & TOOL KNOWLEDGE

### Layer Management (4-layer)
- **Layer Manager** accessed via gear icon or settings near the Layers panel
- Layer preset dropdown at bottom switches between 2-layer and 4-layer
- All 4 layers set to **Signal** type with copper pours for GND

### Routing
- **Single Routing:** Route → Single Routing (shortcut **Alt+W**)
- **Auto Routing:** Route → Auto Routing...
- **Via placement:** Place → Via (shortcut **Alt+V**)
- **Layer switching during routing:** Press **V** to drop via and switch layers

### Autorouter Settings (that achieved 0 errors)
- **Ignore nets:** GND, +5V, +12V
- **Existing traces:** Keep
- **All 4 layers:** Enabled
- **Effect priority:** Completion first
- **Routing corner:** 45 degrees
- **Default trace width:** 0.5mm
- **⚠️ KEY INSIGHT:** Remove all copper pours BEFORE running autorouter, then add them back after. Pours constrain the autorouter and cause clearance violations.

### Copper Pours
- Rebuild all copper areas: **Shift+B** or Route/Tools menu
- Draw pours larger than board outline — EasyEDA clips to board edge automatically

### Critical Warnings
- **NEVER double-click a component in PCB editor** — can break device association
- **BACKUP before footprint edits**
- **After any footprint edit:** Check Design → Footprint Manager

---

## 14. REFERENCE MATERIALS

- **Forum thread:** https://www.arcade-projects.com/threads/wait-list-batman-forever-sound-pcb-repro.27304/
- **Derick's final renders:** Post #191
- **Sound board J1 power pinout:** Post #148 (twistedsymphony)
- **Derick confirms 4-layer/2oz/ENIG:** Post #180
- **Button remap discovery:** Post #165 (twistedsymphony)
- **Stereo-to-mono method:** Post #144 (twistedsymphony — Taito L+/R- method)
- **Voltmeter change to .28":** Post #199
- **JAMMA pinout:** Arcade Museum (verified)
- **Resources thread:** https://www.arcade-projects.com/threads/batman-forever-sound-pcb-repro-instructions-and-resources.29327/

---

## CHANGELOG

| Version | Date | Changes |
|---------|------|---------|
| v1–v6.2 | 2026-02-07 to 2026-02-09 | See previous spec versions |
| v7.0 | 2026-02-10 | J3 changed to 6-pin. 4-layer board. 2oz copper rules. Power routing redesigned with Inner Layer 2. GND pours on 3 layers. Autorouter run — 6 connection + 267 clearance errors remained. |
| v7.1 | 2026-02-10 | **PCB routing complete — 0 DRC errors.** Optimized autorouter sequence documented (strip pours → route → add pours back). Power trace width updated to 2.5mm. Inner2 confirmed as power-only (no GND pour). CN1 key notch added at pad 7/35. **Complete component pick list added** with Digikey/Amazon sourcing and cable-making supplies. Audio jumper operation documented in detail. |
