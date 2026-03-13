# Ordering Guide — JLCPCB

## Getting the Gerbers

1. Open `hardware/Batman_Forever_JAMMA_Adapter_V1.1.eprj` in **EasyEDA Pro** (free desktop app)
2. Go to **Order (A) → Order PCB...** to order directly from JLCPCB with auto-uploaded Gerbers
3. Alternatively, export Gerbers via **Fabrication → PCB Fabrication File** and upload to [jlcpcb.com](https://www.jlcpcb.com) manually

## JLCPCB Order Settings

These are the production settings for V1.1. Do not deviate from these unless you know what you're doing.

### Base Options

| Setting | Value |
|---------|-------|
| Base Material | FR-4 |
| Layers | **4** |
| Dimensions | 157 x 50 mm (auto-detected) |
| PCB Thickness | 1.6mm |
| PCB Color | **Black** |
| Silkscreen | White |
| Material Type | FR4 TG135 |
| Surface Finish | **ENIG** |
| Gold Thickness | 1 U" |

### High-Spec Options

| Setting | Value |
|---------|-------|
| Outer Copper Weight | **2 oz** |
| Inner Copper Weight | **2 oz** |
| Via Covering | Plugged |
| Board Outline Tolerance | ±0.2mm (Regular) |
| Mark on PCB | Remove Mark |
| Electrical Test | Flying Probe Fully Test |
| **Gold Fingers** | **Yes** |
| **Beveling** | **45°** |

All other high-spec options (castellated holes, press-fit, edge plating, blind slots, etc.) should be **No**.

### Important Notes

- **ENIG is required** — Do not select HASL. Gold fingers need ENIG for proper hard gold plating. If you select HASL with gold fingers enabled, the fingers will only be tinned and will wear out quickly.
- **Gold Fingers must be enabled** — This is not on by default. The board has gold finger edge connectors on both the top and bottom edges.
- **45° bevel** — The board is 50mm tall, which meets JLCPCB's minimum height requirement for beveling.
- **Verify detection** — After uploading, confirm JLCPCB detects **4 layers** and **157mm x 50mm**. If it shows 2 layers, the inner layer Gerber files may not have been included.

### Pricing Reference (March 2026)

| Quantity | Approximate Cost (USD) |
|----------|----------------------|
| 5 boards | ~$195 (incl. shipping) |
| 10 boards | ~$200 (incl. shipping) |
| 20 boards | ~$330 (incl. shipping, DHL DDP) |

The bulk of the cost comes from ENIG, 2oz copper, gold fingers, and the black color special process fee. Green boards with 1oz copper are significantly cheaper if you're just doing a test run.

### Test Board Settings (Cheaper)

If you want to do a test run before committing to production boards:

| Setting | Test Value |
|---------|-----------|
| PCB Color | Green |
| Outer Copper | 1 oz |
| Inner Copper | 0.5 oz |
| Beveling | No |

Everything else stays the same (4-layer, ENIG, gold fingers, 1.6mm).
