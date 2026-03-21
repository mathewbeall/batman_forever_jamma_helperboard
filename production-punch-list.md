# Batman Forever JAMMA Adapter — Production Revision Punch List
**Date: 2026-03-09**
**Based on: Test board assembly & fit-check findings + spec review**

---

## PCB Design Changes

### Footprint Fixes
1. ~~**J7/J8 — RCA jack footprint**~~ ✅ DONE — Switched to Kycon KLPX-0848A-2 (true 2-pin: GND + signal). Footprint: CONN-TH_KLPX-0848A-2-B. Pin mapping verified: pin 1=GND, pin 2=signal (correct). BOM updated: KLPX-0848A-2-R (red, J7), KLPX-0848A-2-W (white, J8).
2. ~~**J4 — Speaker input footprint change**~~ ✅ DONE — Changed to CONN-TH_4P, 3.96mm pitch KK 396 footprint. DRC clean.
3. ~~**RV1 — Pot footprint verification**~~ ✅ DONE — Dry fit confirmed on test board. Pin spacing matches.

### Board Specs
4. **Board color** — Change from green (test) to black solder mask.
5. **Copper weight** — Change from 1oz outer / 0.5oz inner (test) to 2oz all layers.
6. ~~**Gold finger beveling**~~ ✅ DONE — Board height increased to 50mm. Tab extended 1.5mm each side (now 115mm). CN1 key notch added at pad 7/35 position (3.96mm wide, 11mm deep). Bottom corners chamfered 1mm (rounding TBD in EasyEDA Pro). 45° bevel can now be selected at JLCPCB.

### Silkscreen
7. ~~**Pin 1 indicators**~~ ✅ DONE — Pin 1 dots added to all connectors in silkscreen.
8. **Reference designators** — Add component labels (J3, J4, J7, J8, JP1-JP4, SW1-SW3, RV1, etc.) to silkscreen.
9. **Signal labels** — Add signal names at key connectors:
   - J3: GND, GND, +5V, +5V, +12V, +12V (pins 1-6)
   - J4: L+, L-, R+, R- (speaker signals)
   - JP1-JP4: STV / CAB / SB labels on each jumper
   - J16: S, +, - (voltmeter)
   - J14/J15: fan header pinout
   - SW1/SW2: NORMAL / BATMAN positions
   - SW3: 5V / 12V positions
10. **Logos and branding** — Add SEGA logo, Batman logo, ST-V box, project credits per spec Section 11.

---

## BOM / Documentation Corrections

### Critical Safety Fix
11. ~~**Context file power cable table**~~ ✅ DONE — Fixed in context-file.md. J3 pin 4 now marked LEAVE EMPTY, J1 pin 7 mapped as splice, safety warning added.

### Terminal Part Numbers
12. ~~**Power cable terminals**~~ ✅ DONE — BOM and spec updated: power cable uses 08-50-0106 (WM2300-ND, 18-24 AWG). Old 08-50-0114 removed from spec.
13. ~~**Speaker cable terminals**~~ ✅ DONE — BOM updated: speaker cable uses 0008500160 (WM16517-ND, 22-30 AWG), replacing discontinued 08-50-0114.

### Connector Upgrades (Test → Production)
14. ~~**J14/J15 fan headers**~~ ✅ DONE (BOM) — Added Molex KK 254 3-pos shrouded (22-23-2031 / WM4201-ND) to BOM. PCB footprint change still needed in EasyEDA if shrouded header has different footprint than plain pin header.
14b. ~~**J9/J10 — Line in/out headers upgraded**~~ ✅ DONE — Changed from bare 2.54mm pin headers to Molex KK 254 4-pos shrouded (22-23-2041 / WM4202-ND). Footprint changed in EasyEDA. BOM updated with headers, mating housings (22-01-2041 / WM1577-ND), and crimp terminals (0008500113 / WM1114CT-ND).

### Schematic / Layout Changes
15. ~~**Replace JP1–JP4 audio jumpers with single 4PDT switch (SW4)**~~ ✅ DONE — JP1-JP4 removed from schematic and PCB. SW4 (SS42H11-G9) placed and wired: Pole A=L+, B=L-, C=R+, D=R-. Position 1=ST-V, Position 2=Batman. DRC clean, routing complete. Silkscreen labels "ST-V / Batman" added.
16. ~~**Update JP1–JP4 silkscreen references**~~ ✅ DONE — JP1-JP4 removed, SW4 silkscreen labels "ST-V / Batman" placed.

---

## Verification Items (Before Locking Production Gerbers)

17. ~~**Gold finger pad dimensions**~~ ✅ DONE — Verified: 2.93mm × 10mm pads, 3.96mm pitch, 1.03mm gap, 55 pads (28+27 with key notch). All within JLCPCB specs. 9.1mm contact remains after 30° bevel.
18. **Voltmeter cutout** — Verify VM1/VM2 spacing and pot cutout against physical 0.28" voltmeter module.
19. **SW1/SW2 switch fit** — Confirm SS42H11-G9 3mm pitch matches footprint once switches arrive and are soldered.
20. **J4 connector type vs. sound board cable** — Verify Molex KK 396 4-pin mates correctly with sound board J6 cable assembly before locking footprint.

---

## Status Key
- 🔴 **Blocks production** — Must fix before ordering production boards
- 🟡 **Should fix** — Significant quality/usability improvement
- 🟢 **Nice to have** — Cosmetic or minor

| # | Item | Priority |
|---|------|----------|
| 1 | ~~RCA jack footprint~~ ✅ DONE — Kycon KLPX-0848A-2, 2-pin, CONN-TH_KLPX-0848A-2-B, pin mapping verified | 🔴 |
| 2 | ~~J4 footprint 2.54→3.96mm~~ ✅ DONE — CONN-TH_4P, 3.96mm KK 396 | 🔴 |
| 3 | ~~RV1 pot footprint verify~~ ✅ DONE — dry fit confirmed | 🟡 |
| 4 | ~~Black solder mask~~ ✅ DONE — selected at JLCPCB order time | 🟡 |
| 5 | ~~2oz copper all layers~~ ✅ DONE — selected at JLCPCB order time | 🟡 |
| 6 | ~~Gold finger bevel + height~~ ✅ DONE — board height now 50mm | 🟡 |
| 7 | ~~Pin 1 indicators~~ ✅ DONE | 🔴 |
| 8 | ~~Reference designators~~ ✅ DONE | 🟡 |
| 9 | ~~Signal labels~~ ✅ DONE | 🟡 |
| 10 | ~~Logos/branding~~ ✅ CLOSED — not adding logos or branding | 🟢 |
| 11 | ~~Fix power cable doc error~~ ✅ DONE — context-file.md corrected, safety warning added | 🔴 |
| 12 | ~~Power cable terminal PN~~ ✅ DONE — 08-50-0106/WM2300-ND in BOM and spec | 🟡 |
| 13 | ~~Speaker cable terminal PN~~ ✅ DONE — 0008500160/WM16517-ND in BOM | 🟡 |
| 14 | ~~J14/J15 keyed headers~~ ✅ DONE (BOM) — 22-23-2031/WM4201-ND added, footprint TBD | 🟢 |
| 15 | ~~Replace JP1–JP4 with SW4 (4PDT audio switch)~~ ✅ DONE | 🔴 |
| 16 | ~~Update silkscreen for SW4~~ ✅ DONE | 🟡 |
| 17 | ~~Gold finger pad dims~~ ✅ DONE — JLCPCB compliant | 🟡 |
| 18 | ~~Voltmeter cutout verify~~ ✅ DONE — cutouts adjusted, will 3D print to validate | 🟡 |
| 19 | ~~SW1/SW2 fit confirm~~ ✅ DONE — confirmed on V1.1 build | 🟡 |
| 20 | ~~J4 KK 396 mate verify~~ ✅ DONE — confirmed on V1.1 build | 🟡 |
| 21 | ~~SW1/SW2/SW4 mounting lug holes~~ ✅ DONE — lugs snipped, holes not needed | 🟡 |
| 22 | ~~CN1 bottom tab round corners~~ ✅ DONE | 🟢 |
| 24 | ~~J14/J15 fan header footprint rotated 180°~~ ✅ DONE — Key notch flipped to outside edge, silkscreen updated in V1.2. | 🟡 |
| 23 | CN1 key notch at pad 7/35 ✅ DONE — 3.96mm wide, 11mm deep, chamfered corners | 🟡 |
