// SW4 (SS42H11-G9) Fit Test Jig
// Matches footprint in Batman_Forever_JAMMA_Adapter_V1.1.eprj exactly
//
// Pin pitch:    3.0mm (X)
// Row spacing:  4.0mm (Y)
// Hole dia:     1.1mm (signal pins)
// Grid:         2 rows x 6 cols, pins 1-6 top, 7-12 bottom
//
// Print at 100% scale, 0.1mm layer height for best accuracy
// Material: PLA is fine

// --- Parameters ---
pcb_thickness = 1.6;        // match real PCB thickness
margin = 5.0;               // border around pin area
pin_pitch_x = 3.0;          // 3mm column pitch
pin_pitch_y = 4.0;          // 4mm row spacing
pin_hole_dia = 1.1;         // 1.1mm drill for 0.8x0.4mm rectangular pins
cols = 6;
rows = 2;

// Body outline reference (for visual, slightly larger than pin area)
body_length = 22.0;         // switch body length
body_width = 10.0;          // switch body width

// Derived
pin_area_x = (cols - 1) * pin_pitch_x;  // 15mm
pin_area_y = (rows - 1) * pin_pitch_y;  // 4mm

jig_x = body_length + 2 * margin;       // 32mm
jig_y = body_width + 2 * margin;        // 20mm

difference() {
    // Base slab
    translate([-jig_x/2, -jig_y/2, 0])
        cube([jig_x, jig_y, pcb_thickness]);

    // Signal pin holes - 2 rows x 6 cols
    for (col = [0 : cols-1]) {
        for (row = [0 : rows-1]) {
            x = -pin_area_x/2 + col * pin_pitch_x;
            y = pin_area_y/2 - row * pin_pitch_y;
            translate([x, y, -0.1])
                cylinder(h = pcb_thickness + 0.2, d = pin_hole_dia, $fn = 32);
        }
    }

    // Body outline scribe (shallow groove on top surface for alignment reference)
    translate([-body_length/2, -body_width/2, pcb_thickness - 0.3])
        difference() {
            cube([body_length, body_width, 0.4]);
            translate([0.4, 0.4, -0.1])
                cube([body_length - 0.8, body_width - 0.8, 0.6]);
        }

    // Pin 1 marker (small triangle near pin 1 position)
    translate([-pin_area_x/2 - 2, pin_area_y/2, pcb_thickness - 0.3])
        cylinder(h = 0.4, d1 = 1.5, d2 = 0, $fn = 3);
}
