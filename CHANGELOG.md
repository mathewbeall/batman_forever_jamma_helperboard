# Changelog

## V1.1 (March 2026) — Production Revision

First production-ready revision. Changes from V1.0 test board:

### Footprint Fixes
- **J7/J8 RCA jacks** — Replaced CUI RCJ-01x (wrong footprint) with Kycon KLPX-0848A-2 (true 2-pin, correct footprint)
- **J4 speaker header** — Changed from 2.54mm pin header to 3.96mm Molex KK 396 (matches cable housing)
- **SW1/SW2/SW4 slide switches** — Corrected pad pitch from 2.54mm to 3.0mm, row spacing from 2.54mm to 4.0mm, hole diameter from 0.914mm to 1.1mm (matches SS42H11-G9 datasheet)
- **Gold finger pad width** — Reduced from 2.93mm to 2.15mm for better JAMMA harness fit

### Schematic Changes
- **JP1-JP4 audio jumpers removed** — Replaced with single SS42H11-G9 4PDT slide switch (SW4) for audio source selection
- **J9/J10 line in/out** — Upgraded from bare pin headers to Molex KK 254 4-pos shrouded headers
- **J14/J15 fan headers** — Upgraded from bare pin headers to Molex KK 254 3-pos shrouded headers

### Board Changes
- **Board height** — Increased from 49mm to 50mm (minimum for JLCPCB gold finger beveling)
- **CN1 key notch** — Added board outline cutout at pad 7/35 for JAMMA harness key tab
- **Bottom tab** — Extended 1.5mm each side (now 115mm wide)
- **Voltmeter cutouts** — Adjusted for proper module clearance

### Silkscreen
- Pin 1 indicators added to all connectors
- "ST-V / Batman" labels on SW4 audio switch
- "On / Off" labels on SW1/SW2 remap switches (corrected orientation)
- "5V / 12V" labels on SW3 voltmeter select

### Documentation
- Power cable pinout corrected (J3 redesigned: 3GND/1x5V/2x12V for clean 1:1 cable)
- Crimp terminal part numbers corrected in BOM
- Complete cable build guides added

## V1.0 (February 2026) — Test Board

Initial prototype. Green, 1oz copper, no bevel. Used to validate basic JAMMA passthrough, audio routing, and power distribution. Known issues documented in punch list.
