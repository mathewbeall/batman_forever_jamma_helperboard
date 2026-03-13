# Assembly Guide

## Tools Required

- Soldering iron (temperature-controlled recommended)
- Solder (leaded or lead-free)
- Flush cutters
- Multimeter (for continuity and voltage checks)

## Before You Start

All components are through-hole. There are no resistors, capacitors, or SMD parts on this board. Assembly is straightforward hand-soldering.

---

## Component Placement

### Top Side Components

| Ref | Component | Notes |
|-----|-----------|-------|
| J3 | Molex KK 396, 6-pin (power) | Pin 1 marked on silkscreen |
| J4 | Molex KK 396, 4-pin (speaker) | Pin 1 marked on silkscreen |
| J9 | Molex KK 254, 4-pin (line input) | Keyed/shrouded header |
| J10 | Molex KK 254, 4-pin (line output) | Keyed/shrouded header |
| J14 | Molex KK 254, 3-pin (fan 1) | Keyed/shrouded header |
| J15 | Molex KK 254, 3-pin (fan 2) | Keyed/shrouded header |
| J16 | 1x3 pin header (voltmeter) | Cut from breakaway strip |
| RV1 | Alpha RV16A01F dual-gang pot | Right-angle mount, 6 pins |
| SW1 | SS42H11-G9 4PDT switch (P1 remap) | See switch prep below |
| SW2 | SS42H11-G9 4PDT switch (P2 remap) | See switch prep below |
| SW3 | SS-12D10L8 SPDT switch (voltmeter) | |
| SW4 | SS42H11-G9 4PDT switch (audio) | See switch prep below |
| CN2 | 56-pin JAMMA female connector | Soldered onto gold finger pads |

### Bottom Side Components

| Ref | Component | Notes |
|-----|-----------|-------|
| J7 | Kycon KLPX-0848A-2-R RCA jack (red, Left) | Mounts on BOTTOM layer |
| J8 | Kycon KLPX-0848A-2-W RCA jack (white, Right) | Mounts on BOTTOM layer |

**After soldering J7/J8, flush-cut their pins on the top side** to prevent interference with RV1.

---

## Switch Preparation (SW1, SW2, SW4)

The SS42H11-G9 switches have 4 metal mounting lugs that extend from the corners of the body. **Snip all 4 lugs flush with the body using flush cutters before soldering.** The board does not have mounting holes for these lugs.

The switches have 12 pins in a 2-row x 6-column grid at 3mm pitch. All pins should drop through the PCB holes cleanly. If they don't fit, verify you have the correct SS42H11-G9 part (some sellers ship similar but different switches).

A 3D-printable fit test jig is included in the `extras/` directory if you want to verify fit before soldering.

---

## CN2 — JAMMA Female Connector

The 56-pin JAMMA female edge connector (CN2) is soldered onto the **top edge** gold finger pads. This connector mates with the ST-V board.

**You must use a solder pin type connector, NOT a solder eyelet type.** The solder pin type has straight pins that go through the gold finger pads. The eyelet type will not work.

---

## Switch Settings

### SW4 — Audio Source Select

| Position | Label | Function |
|----------|-------|----------|
| Slider up (toward JAMMA edge) | **ST-V** | Passes native ST-V JAMMA audio straight through to cabinet |
| Slider down (toward tab) | **Batman** | Routes Batman sound board audio to cabinet speakers |

**All standard ST-V games:** Set to ST-V.
**Batman Forever with sound board:** Set to Batman.

### SW1 / SW2 — Button Remap (Player 1 / Player 2)

| Position | Label | Function |
|----------|-------|----------|
| Slider up (toward JAMMA edge) | **Off** | Normal 1:1 button passthrough |
| Slider down (toward tab) | **On** | Shifts buttons +1 for Batman Forever |

Batman Forever maps its controls to buttons 2/3/4 instead of the standard 1/2/3. The remap switches shift the cabinet buttons so that cabinet button 1 maps to ST-V button 2, button 2 to button 3, etc.

**All standard ST-V games:** Set both to Off.
**Batman Forever:** Set both to On.

### SW3 — Voltmeter Select

| Position | Function |
|----------|----------|
| Left | Displays 5V rail on voltmeter |
| Right | Displays 12V rail on voltmeter |

---

## Testing Procedure

### Before First Power-On

1. **Visual inspection** — Check all solder joints for bridges, especially on the dense gold finger pads
2. **Continuity check** — Verify no shorts between:
   - +5V and GND
   - +12V and GND
   - +5V and +12V
3. **Cable check** — If power cable is connected, verify the same three checks at the cable connector ends

### First Power-On

1. Set SW4 to **ST-V** (audio passthrough)
2. Set SW1/SW2 to **Off** (no button remap)
3. Insert the bottom edge (CN1) into the cabinet JAMMA harness
4. Insert the ST-V board into the top edge (CN2)
5. Power on
6. Verify video output — you should see the ST-V boot screen
7. Verify audio — you should hear the ST-V boot sound through cabinet speakers
8. Verify controls — test all buttons and joystick directions
9. Check voltmeter reading if module is installed

### Batman Forever Testing

1. Connect the power cable from J3 to the sound board J1
2. Connect the speaker cable from sound board J6 to J4
3. Set SW4 to **Batman**
4. Set SW1/SW2 to **On**
5. Power on and verify Batman Forever audio plays through cabinet speakers
6. Verify all 3 action buttons respond correctly

---

## Troubleshooting

| Symptom | Likely Cause |
|---------|-------------|
| No video | Check CN1/CN2 seating, verify JAMMA harness is good |
| No audio in ST-V mode | Check SW4 is set to ST-V (slider up) |
| No audio in Batman mode | Check SW4 set to Batman, verify speaker cable J6→J4, check power cable to sound board |
| Buttons don't work | SW1/SW2 switches not installed (circuit is open without them). Install switches first. |
| Wrong buttons in Batman | Check SW1/SW2 are set to On (slider down) |
| Voltmeter blank | Check J16 wiring — pin 2 must be +12V, pin 3 must be GND |
