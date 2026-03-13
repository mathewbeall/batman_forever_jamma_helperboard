# Batman Forever JAMMA Adapter

A JAMMA edge adapter board for the **Sega ST-V** arcade platform that enables the [Mitsurugi-w Batman Forever sound board repro](https://www.arcade-projects.com/threads/wait-list-batman-forever-sound-pcb-repro.27304/) to work in generic JAMMA cabinets.

This is a recreation and improvement of [Derick2k's original design](reference/derick2k_final_render.png) from the arcade-projects.com forum, which was abandoned ~2 years ago and never released.

> **Status:** V1.1 production boards ordered from JLCPCB (March 2026). Awaiting delivery and final validation.

<!-- TODO: Add board photo here once production boards arrive -->
<!-- ![Board Photo](docs/images/board_top.png) -->

---

## Features

- **Full JAMMA passthrough** — Video, controls, coins, test, service all pass through untouched
- **Power distribution** — Taps JAMMA 5V/12V/GND to power the sound board, fan headers, and voltmeter
- **Audio switching** — Single 4PDT slide switch selects ST-V native audio or Batman sound board output
- **Button remapping** — Two 4PDT slide switches shift P1/P2 button mapping (Batman uses buttons 2/3/4 instead of 1/2/3)
- **Line-level audio** — Independent path with dual-gang volume pot, RCA jacks, and pin headers for external amplifiers
- **Voltage monitoring** — Slide switch selects 5V or 12V rail for a 0.28" voltmeter display module
- **Fan headers** — Two 3-pin fan connectors with 12V power
- **All through-hole** — Zero SMD components, zero passives (no resistors or capacitors). Hand-solder friendly.

## Board Specifications

| Parameter | Value |
|-----------|-------|
| Dimensions | 157mm x 50mm |
| Layers | 4 (Top, Inner1 GND, Inner2 Power, Bottom) |
| Copper Weight | 2oz all layers |
| PCB Color | Black solder mask, white silkscreen |
| Surface Finish | ENIG with gold fingers |
| Gold Finger Bevel | 45 degrees |
| Thickness | 1.6mm |
| Design Tool | EasyEDA Pro (JLCEDA Pro) |

## Quick Start

1. **Order PCBs** — See the [Ordering Guide](docs/ordering-guide.md) for JLCPCB settings
2. **Order components** — See the [Bill of Materials](docs/bom.md) (~$35-50 per board)
3. **Build cables** — See the [Cable Build Guide](docs/cable-builds.md) for power and speaker cables
4. **Assemble** — See the [Assembly Guide](docs/assembly-guide.md) for soldering and setup instructions
5. **Install** — Set switches, plug into your cabinet, and play

## Documentation

| Document | Description |
|----------|-------------|
| [Assembly Guide](docs/assembly-guide.md) | Component placement, soldering notes, switch settings, testing |
| [Cable Build Guide](docs/cable-builds.md) | Power cable and speaker cable pinouts, crimping, safety |
| [Bill of Materials](docs/bom.md) | Complete shopping list with part numbers and sources |
| [Ordering Guide](docs/ordering-guide.md) | JLCPCB order settings and Gerber export instructions |

## Repository Structure

```
hardware/          EasyEDA Pro project file (.eprj) and Gerber files
docs/              Assembly guide, cable builds, BOM, ordering guide
reference/         Derick2k's original design files (2020) for reference
extras/            3D-printable test jigs and utilities
```

## 3D-Printable Sound Board Mounting Kit

The sound board mounts above the ST-V motherboard on standoffs, but the mounting holes don't align perfectly. The file `soundboard_mounting_kit.stl` contains a set of 3D-printable parts to bridge the gap:

| Part | Description |
|------|-------------|
| **Shim A** | 6mm offset adapter (single axis), M3 countersunk |
| **Shim B** | 6mm + 10mm offset adapter (two axes), M3 countersunk |
| **Spacer C** | Plain 3mm M3 spacer for aligned holes |
| **L-Bracket** | 25mm horizontal / 53mm vertical standoff for mounting points with no existing standoff |

All parts are 3mm thick (except the L-bracket pillar). M3 hardware throughout. Print in PETG or PLA, no supports needed. The OpenSCAD source (`soundboard_mounting_kit.scad`) is included if you need to adjust offsets.

## Switch Settings

### SW4 — Audio Source
| Position | Mode | Description |
|----------|------|-------------|
| Up (toward JAMMA edge) | **ST-V** | Native JAMMA audio passthrough |
| Down (toward tab) | **Batman** | Sound board audio to cabinet speakers |

### SW1/SW2 — Button Remap (P1/P2)
| Position | Mode | Description |
|----------|------|-------------|
| Up (toward JAMMA edge) | **Off** | Normal 1:1 button passthrough |
| Down (toward tab) | **On** | Batman remap (shifts buttons +1) |

### SW3 — Voltmeter Select
| Position | Mode |
|----------|------|
| Left | Displays 5V rail |
| Right | Displays 12V rail |

## Credits

- **Derick2k** — Original adapter board concept and PCB design (abandoned, never released)
- **Mitsurugi-w** — Batman Forever sound board reproduction
- **twistedsymphony** — Sound board connector pinouts from the original manual
- **Matt (mathewbeall)** — PCB recreation, schematic, and layout in EasyEDA Pro
- **arcade-projects.com community** — Testing, feedback, and support

## Forum Thread

[Wait List — Batman Forever Sound PCB Repro](https://www.arcade-projects.com/threads/wait-list-batman-forever-sound-pcb-repro.27304/)

## License

This project is licensed under the [CERN Open Hardware Licence Version 2 — Strongly Reciprocal (CERN-OHL-S-2.0)](LICENSE).

You are free to use, modify, and distribute this design. If you distribute modified versions, they must also be shared under the same licence.
