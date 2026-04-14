# Batman Forever JAMMA Adapter — Assembly Guide

**Board Version:** V1.3
**V1.3 change:** SW1/SW2/SW4 are Alps SSSU042100 (Mouser). No lug prep required — metal snap-in retention clips seat into dedicated PCB holes. Only the 12 signal pins solder.
**All components are through-hole. No SMD. Four resistors (R1-R4) are the only passives.**

---

## Tools Required

- Soldering iron (adjustable temp recommended — 350-370°C for ground plane pins)
- Solder (60/40 or 63/37 leaded recommended for through-hole)
- Flush cutters
- Needle-nose pliers
- Crimp tool for Molex KK terminals (or solder carefully)

---

## Before You Start

- Inspect the bare PCB for manufacturing defects, especially the gold finger edge and via fills.
- Gather all components and verify against the [Bill of Materials](bom.md).
- **No switch prep needed** — the SSSU042100 uses metal snap-in retention clips that seat into dedicated PCB holes. Just press the switch in until the clips snap through, then solder the 12 signal pins. Orientation does not matter — the switches are electrically symmetric.

---

## Soldering Order

The order matters — some components block access to others if installed first. Follow this sequence.

### Step 1: JAMMA Female Connector

Solder this first while the board is empty and you have plenty of room to work.

- The 56-pin JAMMA female edge connector solders onto the gold finger pads on the top edge.
- **Must be solder-pin type, NOT solder eyelet.**
- Align carefully before tacking a few pins, then solder all 56.

### Step 2: Volume Pot

Solder the Alpha RV16A01F dual-gang pot. The ground pins connect to heavy copper pours on multiple layers, so they will sink a lot of heat.

- Apply extra heat and dwell time on the ground pins — they take noticeably longer to flow.
- Verify the pot is seated flush to the board before soldering.
- **Flush-cut all pins on the bottom side** — the RCA jacks mount directly behind this area and need clearance.

### Step 3: RCA Jacks (Bottom Side)

The Kycon KLPX-0848A-2 RCA jacks mount on the **bottom** of the board (solder from the top). There is not a lot of room to maneuver around the volume pot, which is why it gets soldered and trimmed first. Silkscreen on the bottom reads "RCA Output" with "L" and "R" labels.

- Red jack = Left audio (labeled "L" on bottom silk)
- White jack = Right audio (labeled "R" on bottom silk)
- Apply extra heat — ground pins connect to copper pours.
- Verify jacks are seated flat against the bottom of the board before soldering.

### Step 4: Line In/Out Headers

Solder the two Molex KK 254 4-pos shrouded headers. Silkscreen labels read "INPUT" and "OUTPUT" with pin labels "- R - L" and "L - R -".

- INPUT header = line level input from sound board
- OUTPUT header = line level output to external amp
- Key tab orientation should match the silkscreen.

### Step 5: Power Header

Solder the Molex KK 396 6-pos header. Silkscreen pin labels read "G G G 5V 12V".

- This is the power connector to the sound board — carries GND, +5V, and +12V.
- Ensure fully seated before soldering.

### Step 6: Speaker Header

Solder the Molex KK 396 4-pos header. Silkscreen pin labels read "+ L - + R -".

- Speaker input from the sound board.

### Step 7: Audio Ballast Resistors

Solder the four 0.22 ohm 1W axial resistors (TE RR01JR22TB) above and below the speaker header.

- These are current-sharing ballast resistors for the BTL parallel mono summing circuit.
- Resistor body is smaller than the footprint — bend leads to match 12.8mm pad spacing.
- Orientation does not matter (resistors are not polarized).

### Step 8: Audio Source Switch

Solder the Alps SSSU042100 4PDT slide switch. Silkscreen labels read "ST-V" and "Batman".

- Press the switch into the PCB — the metal snap-in clips pass through the dedicated NPTH holes and lock. No lug snipping required.
- Orientation does not matter — switches are electrically symmetric.
- ST-V (up, toward keyed JAMMA edge) / Batman (down, away from keyed JAMMA edge).

### Step 9: Button Remap Switches (P1/P2)

Solder both Alps SSSU042100 4PDT slide switches. Silkscreen reads "Button Remap" with "P1" and "P2" labels, and "Off" / "On" positions.

- P1 = Player 1 remap
- P2 = Player 2 remap
- Orientation does not matter.
- Off (up, toward keyed JAMMA edge) / On (down, away from keyed JAMMA edge).

### Step 10: Voltmeter Select Switch

Solder the SS-12D10 SPDT slide switch. Silkscreen reads "5V" next to it.

- Selects between 5V and 12V rail display on the voltmeter.

### Step 11: 12V Fan Headers

Solder the two Molex KK 254 3-pos shrouded headers. Silkscreen reads "12V FANS".

- Key tab should face the outside edge of the board (toward the board edge, not inward).
- Pin 1 = GND, Pin 2 = +12V, Pin 3 = NC.
- Standard 3-pin PC fan connectors plug in with the key on the outside.

### Step 12: Voltmeter Module

- **Flush-cut the long pins on the back of the voltmeter module** before mounting — they will interfere with the board otherwise.
- Mount the module in the cutout area on the front of the board using M3 hardware (bolt and nut).
- Solder the module's 3 wires directly into the header holes from the back of the board. No pin header needed.
- Silkscreen reads "G 12V S" — match the wires from the voltmeter module:
  - G = black wire (GND)
  - 12V = red wire (power)
  - S = yellow wire (signal/measurement input)
- There is a small adjustment screw on the back of the module, reachable through the cutout, for calibrating the readout. Use a known-good multimeter to verify the voltage and adjust as needed.

---

## Post-Soldering Checks

Before powering on:

1. **Visual inspection** — Check all solder joints for bridges, cold joints, and missed pins.
2. **Continuity check** — Verify no shorts between +5V, +12V, and GND at the power header.
3. **Connector check** — Verify all shrouded headers have key tabs oriented correctly.

---

## Cable Builds

See the [Cable Build Guide](../docs/cable-builds.md) for power cable and speaker cable pinouts, wire gauges, and crimping instructions.

---

## Switch Settings

| Switch | Up (toward keyed JAMMA edge) | Down (away from keyed JAMMA edge) |
|--------|----------------------|-------------------|
| Audio (ST-V / Batman) | ST-V (passthrough) | Batman (sound board) |
| P1 Button Remap | Off (normal buttons) | On (Batman remap) |
| P2 Button Remap | Off (normal buttons) | On (Batman remap) |

| Voltmeter Switch | Left | Right |
|-----------------|------|-------|
| Rail Select | 5V | 12V |

**All switches should be in ST-V / Off position for initial power-on testing.**

---

## Initial Power-On Test

1. Set audio switch to ST-V, both button remap switches to Off.
2. Insert board into JAMMA harness — do NOT connect the sound board yet.
3. Power on — verify video and native audio pass through to the cabinet.
4. Check voltmeter reads correct voltage for the selected rail.
5. If passthrough works, power off, connect sound board cables, and test Batman mode.

---

## Mono Downmix Notes (Batman Mode)

When the audio switch is set to Batman, the adapter sums the sound board's stereo BTL amplifier outputs to mono for the JAMMA cabinet speaker. This is the most demanding operating mode for the sound board's amplifiers.

**Why ballast resistors R1-R4 are needed:**

When two BTL amplifier channels are paralleled for mono summing, small gain differences between the left and right channels cause cross-channel current — one amp tries to source current while the other sinks it. This wastes power as heat rather than driving the speaker. The 0.22 ohm ballast resistors limit this cross-channel current path.

**Symptoms observed on V1.1 (no ballast resistors):**

- **Cold-start oscillation** — Low-frequency feedback/motorboating when the sound board's heatsinks are cold. Clears after the amp warms up, as thermal drift brings channel gains closer together. Toggling the audio switch to ST-V and back also clears it.
- **Elevated heatsink temperature** — In normal speaker mode (driving speakers directly), the sound board heatsinks are barely warm. In downmix mode without resistors, they get noticeably hot due to cross-channel current dissipation.
- **More stable power rails** — The 12V and 5V rails fluctuate less in downmix mode compared to normal speaker mode, because the cross-channel current draw is more constant (amps fighting each other) vs. the dynamic current draw of actually driving speakers with audio signal.

All three symptoms point to the same root cause: uncontrolled cross-channel current between paralleled BTL outputs. Ballast resistors address this.

**Verification after build:** Compare sound board heatsink temperature and 12V rail stability between ST-V mode and Batman mode. Heatsinks should run cooler and rails should be more stable than V1.1 in downmix mode.
