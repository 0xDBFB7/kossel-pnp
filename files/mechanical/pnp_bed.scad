use <triangles.scad>

difference(){
    Equilateral_Triangle(l=300,h=3);
     union(){
        translate([0,259.8-65,0]) translate([-150/2,0,0]) cube([150,65,5]);
        translate([150,0,0]) rotate([0,0,60]) translate([-150/2,0,0]) cube([150,65,5]);
        translate([-150,0,0]) rotate([0,0,-60]) translate([-150/2,0,0]) cube([150,65,5]);
    }
} 
translate([80,0,0]){
    rotate([0,0,30]){
        for(j=[1:5]){
            translate([0,(100/5)*j,0]) cylinder(r=3.2/2,h=5,center=true);
        }
    }
}

color([1,0,0]) translate([0,90,0])  cylinder(r=80,h=5,center=true);

color([1,0,0]) translate([-50,30,0]) cube([97,73,5]);