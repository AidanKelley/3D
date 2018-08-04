$fn = 48;

module s() {
    difference() {
        translate([0, 17, 0]) cylinder(d=40, h=4);
        translate([0, 17, -0.1]) cylinder(d=28, h=4.2);
        translate([0, -2.5, -0.1]) cube([30, 20, 4.2]);
    }
    
    translate([18, 8, 0])  hub();
}

difference() {
    union() {
        s();
        rotate([0, 0, 180]) s();

        translate([4, -42.5, 0]) cube([4, 85, 4]);
        translate([-8, -42.5, 0]) cube([4, 85, 4]);
        cylinder(d=16, h=4);
    }
    cylinder(d=8, h=4.2);
}

module hub() {
    cylinder(d=16, h=1.6);
    cylinder(d=4, h=2);
    cylinder(d=3, h=3.8);
}
