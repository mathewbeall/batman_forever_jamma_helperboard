// Batman Forever sound board mounting kit - all parts on one plate
//
// Shim A:  6mm X offset, countersunk standoff hole
// Shim B:  6mm X / -10mm Y offset, countersunk standoff hole
// Shim C:  Plain spacer, no offset, no countersink
// Bracket: L-bracket standoff, 25mm horizontal, 53mm vertical

$fn = 60;

// === Shared parameters ===
m3_clearance  = 3.4;
m3_head_dia   = 6.2;
m3_head_depth = 1.8;

// === Shim parameters ===
shim_thickness = 3;
corner_radius  = 2;
pad            = 5;

// === Bracket parameters ===
wall          = 5;
h_offset      = 25;
v_height      = 53;
m3_pilot      = 2.5;
pilot_depth   = 10;

// === Layout ===
shim_spacing = 35;

// Shim A
translate([0, 0, 0])
    shim([6, 0]);

// Shim B
translate([shim_spacing, 0, 0])
    shim([6, -10]);

// Shim C (plain spacer)
translate([shim_spacing * 2, 0, 0])
    spacer();

// L-bracket - placed to the right with clearance
translate([shim_spacing * 2 + 20, 15, 0])
    bracket();


// === Shim modules ===

module shim(offset) {
    min_x = min(0, offset[0]) - pad;
    max_x = max(0, offset[0]) + pad;
    min_y = min(0, offset[1]) - pad;
    max_y = max(0, offset[1]) + pad;

    width  = max_x - min_x;
    height = max_y - min_y;

    cx = (min_x + max_x) / 2;
    cy = (min_y + max_y) / 2;

    difference() {
        translate([cx, cy, shim_thickness/2])
            rounded_box(width, height, shim_thickness, corner_radius);
        countersunk_hole(0, 0);
        plain_hole(offset[0], offset[1]);
    }
}

module spacer() {
    outer_dia = 8;
    difference() {
        cylinder(h = shim_thickness, d = outer_dia);
        translate([0, 0, -0.1])
            cylinder(h = shim_thickness + 0.2, d = m3_clearance);
    }
}

// === Bracket module ===

module bracket() {
    difference() {
        union() {
            // Horizontal arm
            translate([-wall/2, -wall/2, 0])
                cube([h_offset + wall/2, wall, wall]);

            // Vertical pillar
            translate([h_offset - wall/2, -wall/2, 0])
                cube([wall, wall, v_height]);

            // Inside corner fill - vertical triangle, same width
            translate([0, -wall/2, 0])
                rotate([90, 0, 0])
                    translate([0, 0, -wall])
                        linear_extrude(wall)
                            polygon([
                                [h_offset - wall/2 - 10, wall],
                                [h_offset - wall/2, wall],
                                [h_offset - wall/2, wall + 10]
                            ]);
        }

        // Base through-hole
        translate([0, 0, -0.1])
            cylinder(h = wall + 0.2, d = m3_clearance);

        // Top pilot hole
        translate([h_offset, 0, v_height - pilot_depth])
            cylinder(h = pilot_depth + 0.1, d = m3_pilot);
    }
}

// === Shared hole modules ===

module plain_hole(x, y) {
    translate([x, y, -0.1])
        cylinder(h = shim_thickness + 0.2, d = m3_clearance);
}

module countersunk_hole(x, y) {
    translate([x, y, -0.1]) {
        cylinder(h = shim_thickness + 0.2, d = m3_clearance);
        translate([0, 0, shim_thickness - m3_head_depth + 0.1])
            cylinder(h = m3_head_depth + 0.1, d1 = m3_clearance, d2 = m3_head_dia);
    }
}

module rounded_box(w, h, t, r) {
    hull() {
        for (x = [-(w/2 - r), (w/2 - r)])
            for (y = [-(h/2 - r), (h/2 - r)])
                translate([x, y, 0])
                    cylinder(h = t, r = r, center = true);
    }
}
