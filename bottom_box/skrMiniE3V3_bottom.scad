$fa = 1.0;
$fs = 0.4;
// PCB dimensions  ****comment out before generating STL****
// gray is main board with screw hole cut outs
color("gray"){
    translate([0,0,8])
    difference(){
        cube([103.75,70.25,1.6]);
        translate([5.54,32.05,-1]) cylinder(h=3,r=1.3);
        translate([37.34,29.41,-1]) cylinder(h=3,r=1.3);
        translate([101.22,2.56,-1]) cylinder(h=3,r=1.3);
        translate([85.55,67.03,-1]) cylinder(h=3,r=1.3);
        translate([23.40,67.03,-1]) cylinder(h=3,r=1.3);}}
// rosybrown color for surface mount parts on PCB
color("rosybrown"){
    // approx shape of SD card reader
    translate([93.7,53.76,9.6]) cube([11.55,13.7,2]);
    // approx shape of micro USB port
    translate([99.5,40,9.6]) cube([5.75,8.38,2]);}
//
//******comment out code above before generating STL********
//
color("cornflowerblue"){
// translate box to leave gaps around PCB
// 5 mm left
// 20 mm front and back
// 0.5 mm right
//
difference(){
//Main box
union(){
   difference(){
        translate([-8,-23,0]) cube([115.75,116.25,70]);
        translate([-5,-20,3]) cube([109.25,110.25,70]);}
    // add corner supports
    translate([-5,-20,0])
    cube([5,5,70]);
    translate([-5,85.25,0])
    cube([5,5,70]);
    translate([99.75,-20,0])
    cube([5,5,70]);
    translate([99.75,85.25,0])
    cube([5,5,70]);
    // add PCB standoffs
    translate([5.54,32.05,0]) cylinder(h=8,r=3);
    translate([37.34,29.41,0]) cylinder(h=8,r=3);
    translate([85.55,67.03,0]) cylinder(h=8,r=3);
    translate([23.40,67.03,0]) cylinder(h=8,r=3);
        hull(){
        translate([101.22,2.56,0]) cylinder(h=8,r=3);
        translate([104,-0.44,0]) cube([2,6,8]);}
    }
 // box cut outs
 //
    // PCB mounting holes for M3 screws
    translate([5.54,32.05,3]) cylinder(h=6,r=1.35);
    translate([37.34,29.41,3]) cylinder(h=6,r=1.35);
    translate([101.22,2.56,3]) cylinder(h=6,r=1.35);
    translate([85.55,67.03,3]) cylinder(h=6,r=1.35);
    translate([23.40,67.03,3]) cylinder(h=6,r=1.35);
    // top lid mounting holes for M3 screws
    translate([-4,-19,32]) cylinder(h=10,r=1.35);
    translate([-4,89.25,61]) cylinder(h=10,r=1.35);
    translate([103.75,-19,32]) cylinder(h=10,r=1.35);
    translate([103.75,89.25,61]) cylinder(h=10,r=1.35);
    // opening for wires
    translate([-7,9,19])
    hull(){
        translate([0,0,35]) cube([5,20,5],center=true);
        rotate([0,90,0])
        cylinder(h=5,r=10,center=true);}
    // cut out for SD card slot
    translate([103.25,53.26,9.5]) cube([5,14.7,2.5]);
    // cut out for micro SD cable
    translate([103.25,38.5,9]) cube([5,11.38,4]);
    // holes for two 40 mm fans
        // large holes for air flow
        // fan 1
    translate([24.94,94.25,32.6]) rotate([90,0,0]) cylinder(h=5,r=18);
        // fan 2
    translate([74.82,94.25,32.6]) rotate([90,0,0]) cylinder(h=5,r=18);
        // small holes for fan 1 screws
    translate([8.94,94.25,48.6]) rotate([90,0,0]) cylinder(h=5,r=2.2);
    translate([40.94,94.25,48.6]) rotate([90,0,0]) cylinder(h=5,r=2.2);
    translate([40.94,94.25,16.6]) rotate([90,0,0]) cylinder(h=5,r=2.2);
    translate([8.94,94.25,16.6]) rotate([90,0,0]) cylinder(h=5,r=2.2);
        // small holes for fan 2 screws
    translate([90.82,94.25,48.6]) rotate([90,0,0]) cylinder(h=5,r=2.2);
    translate([90.82,94.25,16.6]) rotate([90,0,0]) cylinder(h=5,r=2.2);
    translate([58.82,94.25,48.6]) rotate([90,0,0]) cylinder(h=5,r=2.2);
    translate([58.82,94.25,16.6]) rotate([90,0,0]) cylinder(h=5,r=2.2);
    // Top is angled at 14.47 deegrees.  This gives y-axis length 120 mm for lid.
    translate([-8.1,-23.1,40]) rotate([14.47,0,0]) cube([116.75,120.25,70]);
}}
