# SS42H11-G9 Switch Orientation Test

**Purpose:** Determine correct orientation before soldering SW1, SW2, and SW4.

The SS42H11-G9 has no pin 1 marking. It's electrically symmetric — soldering it backwards just reverses the slider direction, which would make the silkscreen labels wrong. This test tells you which way to orient it.

---

## Pin Layout (2×6 grid)

```
        ┌──────────────────────────────────┐
        │          ┌──────┐                │
        │          │SLIDER│                │
        │          └──────┘                │
        │                                  │
        │  (1)  (2)  (3)  (4)  (5)  (6)   │
        │                                  │
        │  (7)  (8)  (9) (10) (11) (12)   │
        │                                  │
        └──────────────────────────────────┘

        Row 1:  Pole A         Pole B
                A1  A_COM A2   B1 B_COM B2

        Row 2:  Pole C         Pole D
                C1  C_COM C2   D1 D_COM D2
```

Each pole has 3 pins: Throw 1, Common, Throw 2. The slider connects each Common to either Throw 1 or Throw 2.

---

## The Test

You only need to test one pole (Pole A, pins 1-2-3).

1. Set your multimeter to **continuity mode** (beep).
2. Put the **BLACK probe on pin 2** (A_COM — the center pin of the first group of 3).
3. Put the **RED probe on pin 1** (A1 — to the left of pin 2).
4. Slide the switch to one side:
   - **BEEP** → this slider direction = **Position 1** (Throw 1 = "Off" / "ST-V" / passthrough)
   - **No beep** → slide to the other side, move RED probe to **pin 3** to confirm beep = **Position 2** (Throw 2 = "On" / "Batman" / remap)

---

## How to Orient on the PCB

**Position 1 (COM → Throw 1) must point toward the JAMMA edge (top of board).**

This matches the silkscreen labels:

| Switch | JAMMA side (Position 1) | Tab side (Position 2) |
|--------|------------------------|----------------------|
| SW1 | Off (passthrough) | On (Batman remap) |
| SW2 | Off (passthrough) | On (Batman remap) |
| SW4 | ST-V (JAMMA audio) | Batman (sound board audio) |

**All three switches go in the same orientation.**

---

## Quick Summary

1. Meter on continuity
2. Probe pin 2 (center) and pin 1 (left)
3. Find the slider direction that beeps — that's Position 1
4. Solder with Position 1 pointing toward JAMMA edge
5. Repeat for all three switches — same orientation every time
