# PCB Ordering Guide — JLCPCB

## Gerber Files

Use `Gerber_PCB2_2026-03-20.zip` from this repo. Upload directly to [JLCPCB](https://jlcpcb.com).

## Order Settings

| Setting | Value |
|---------|-------|
| Quantity | 20 (or as needed) |
| Layers | 4 |
| Thickness | 1.6mm |
| PCB Color | Black |
| Surface Finish | ENIG |
| Gold Thickness | 1U" |
| Gold Fingers | Yes |
| Gold Finger Bevel | 45° |
| Outer Copper Weight | 2oz |
| Inner Copper Weight | 2oz |
| Via Covering | Plugged |
| Board Outline Tolerance | ±0.2mm |
| Electrical Test | Flying Probe Fully Test |
| Mark on PCB | Remove Mark |

## Notes

- Gold fingers and ENIG are required — the JAMMA edge connector solders directly to the gold finger pads.
- 45° bevel is needed for smooth insertion into JAMMA harnesses.
- 2oz copper on all layers provides better current handling for the power traces.
- "Remove Mark" keeps the JLCPCB order number off the board.
