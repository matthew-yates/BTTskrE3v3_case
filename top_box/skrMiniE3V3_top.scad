$fa = 1.0;
$fs = 0.4;
// PCB dimensions  ****comment out before generating STL****
//color("gray"){
//translate([175.1,-45.6,22.1]) rotate([0,180,0]) import("tft35model.stl");}
//******comment out code above before generating STL********
//
color("cornflowerblue"){
difference(){
union(){
//main plate
cube([115.75,120,3]);
// PCB standoffs
translate([6.23,36.37,0]) cylinder(h=11,r=3);
translate([6.23,101.27,0]) cylinder(h=11,r=3);
translate([94.13,101.27,0]) cylinder(h=11,r=3);
translate([94.13,36.37,0]) cylinder(h=11,r=3);
// left and right sides
translate([0,-5,3]) cube([3,125,20]);
translate([112.75,-5,3]) cube([3,125,20]);
// front and back angled to match bottom box
rotate([14.47,0,0]) cube([115.75,3,25]);
translate([0,117,0]) rotate([14.47,0,0]) cube([115.75,3,25]);
// corner supports and opening for screw tabs
rotate([14.47,0,0]) cube([8,8,25]);
translate([107.75,0,0]) rotate([14.47,0,0]) cube([8,8,25]);
translate([107.75,112,0]) rotate([14.47,0,0]) cube([8,8,25]);
translate([0,112,0]) rotate([14.47,0,0]) cube([8,8,25]);
}
//cut out for LCD panel
translate([13.18,42.32,-1]) cube([77,53,6]);
// holes for M3 PCB mounting screws
translate([6.23,36.37,3]) cylinder(h=9,r=1.35);
translate([6.23,101.27,3]) cylinder(h=9,r=1.35);
translate([94.13,101.27,3]) cylinder(h=9,r=1.35);
translate([94.13,36.37,3]) cylinder(h=9,r=1.35);
// flexible tab for reset button
difference(){
    union(){
        translate([51.67,25.5,-1]) cylinder(h=5,r=6);
        translate([51.67,21.5,-1]) cube([21,8,5]);}
translate([51.67,22.5,-2]) cube([25,6,7]);
translate([51.67,25.5,-2]) cylinder(h=7,r=5);
}
// cut out for knob
translate([19.12,27,-1]) cylinder(h=5,r=5);
// cut out for usb/SD card and venting
translate([-1,38,12]) cube([5,50,23]);
// cut out for venting
translate([111.75,42,12]) cube([5,50,23]);
// cut tabs off front
rotate([14.47,0,0]) translate([-1,-5,0]) cube([117.75,5,25]);
// cut tabs off back
translate([-1,120,0])rotate([14.47,0,0]) cube([117.75,7,25]);
// cut tabs off top
translate([-1,-10,23])  cube([117.75,140,5]);
// cut out for shorter M3 screws
rotate([14.47,0,0]) translate([-1,-1.,-3]) cube([8,8,23]);
rotate([14.47,0,0]) translate([108.75,-1.,-3]) cube([8,8,23]);
translate([108.75,113.,0]) rotate([14.47,0,0]) translate([0,0,-3]) cube([8,8,23]);
translate([-1,113,0]) rotate([14.47,0,0]) translate([0,0,-3]) cube([8,8,23]);
// M3 screw holes for mounting to bottom box
translate([4,4,0]) rotate([14.47,0,0]) translate([0,0,19])  cylinder(5,1.7);
translate([111.75,4,0]) rotate([14.47,0,0]) translate([0,0,19])  cylinder(5,1.7);
translate([4,116,0]) rotate([14.47,0,0]) translate([0,0,19])  cylinder(5,1.7);
translate([111.75,116,0]) rotate([14.47,0,0]) translate([0,0,19])  cylinder(5,1.7);
}
// add corner supports for printing
translate([0,-4.997,0]) cube([1,6.778,22.3]);
translate([114.75,-4.997,0]) cube([1,6.778,22.3]);
translate([0,107.8,0]) cube([1,6.778,21.1]);
translate([114.75,107.8,0]) cube([1,6.778,21.1]);
// add mouse ears for printing
translate([2,2,0]) cylinder(h=1,r=7.5);
translate([113.75,2,0]) cylinder(h=1,r=7.5);
translate([113.75,118,0]) cylinder(h=1,r=7.5);
translate([2,118,0]) cylinder(h=1,r=7.5);
}
