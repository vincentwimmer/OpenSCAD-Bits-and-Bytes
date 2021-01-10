$fn= 90;
module WholeFuckinThing(){
module holes(){
for(n = [1 : 6])
{
    rotate([0, 0, n * 60])
    {
        hull(){
        translate([0,30,-1])
        cylinder(d=5.3, h=15);
        translate([0,45,-1])
        cylinder(d=5.3, h=15);
        }
    }
}
}


//Change this
module carve(){
hull(){
translate([0,0,4])
cube([20,20,1], center=true);
translate([0,0,18])
sphere(d=30);
}
translate([0,0,8])
resize([30,30,8])
sphere(d=35);

//Through Holes
translate([0,0,-0.5])
cylinder(d=12, h=18);

translate([-9,8.5,-1])
cylinder(d=3.75, h=5);
translate([9,8.5,-1])
cylinder(d=3.75, h=5);
translate([-7.5,-8.5,-1])
cylinder(d=3.75, h=5);
translate([7.5,-8.5,-1])
cylinder(d=3.75, h=5);

//Bolt Heads

translate([-9,8.5,1])
cylinder(d=9.25, h=19);
translate([9,8.5,1])
cylinder(d=9.25, h=19);
translate([-7.5,-8.5,1])
cylinder(d=9.25, h=19);
translate([7.5,-8.5,1])
cylinder(d=9.25, h=19);

}


module enforcement(){
for(n = [1 : 6])
{
    rotate([0, 0, n * 60 + 30])
    {
        hull(){
        translate([0,20,7])
        cylinder(d=8, h=5);
        translate([0,36,9.5])
        cube([25,1,5], center = true);
        translate([0,30,7])
        cylinder(d=16, h=5);
            
            
        translate([0,20,5])
        cylinder(d=2, h=5);
        translate([0,38,8])
        cube([15,1,5], center = true);
        translate([0,30,6])
        cylinder(d=12, h=5);
        }
    }
}
for(n = [1 : 6])
{
    rotate([0, 0, n * 60])
    {
        hull(){
        translate([0,17,7])
        cylinder(d=2, h=3);
        translate([0,22,7])
        cylinder(d=4, h=3);
            
        translate([0,18,6])
        cylinder(d=1, h=3);
        translate([0,22,6])
        cylinder(d=2, h=3);
        }
    }
}
}

module enforcement2(){
for(n = [1 : 6])
{
    rotate([0, 0, n * 60 + 30])
    {
        hull(){
        translate([0,20,3])
        cylinder(d=8, h=5);
        translate([0,36,9.5])
        cube([25,1,5], center = true);
        translate([0,30,3])
        cylinder(d=16, h=4);
            
            
        translate([0,20,3])
        cylinder(d=2, h=5);
        translate([0,38,8])
        cube([15,1,5], center = true);
        translate([0,30,5])
        cylinder(d=12, h=5);
        }
    }
}

}

///////

//Connector
module Connector(){
    difference(){
    cylinder(d=36, h=17);
    translate([0,0,-0.5])
cylinder(d=34.35, h=20);
    }

difference(){
hull(){
    cylinder(d=36, h=13);
    cylinder(d=52, h=1);
}
     
translate([0,0,3.5])
cylinder(d=34.35, h=17);
        
translate([0,0,3.5])
cylinder(d=34.35, h=17);
    translate([0,0,-0.5])
cylinder(d=12, h=18);

translate([0,0,-0.5])
cylinder(d=12, h=4);
    
translate([-7.5,8.5,-1])
cylinder(d=3.75, h=5);
translate([7.5,8.5,-1])
cylinder(d=3.75, h=5);
translate([-9,-8.5,-1])
cylinder(d=3.75, h=5);
translate([9,-8.5,-1])
cylinder(d=3.75, h=5);
}

difference(){
cylinder(d=26.5, h=17);
translate([0,0,-0.5])
cylinder(d=12, h=18);

translate([-7.5,8.5,-1])
cylinder(d=8.5, h=19);
translate([7.5,8.5,-1])
cylinder(d=8.5, h=19);
translate([-9,-8.5,-1])
cylinder(d=8.3, h=19);
translate([9,-8.5,-1])
cylinder(d=8.3, h=19);

}


}


//////

difference(){
//Change this
cylinder(d=85, h=7);
holes();
carve();
//enforcement();
translate([0,0,-11])
rotate([180,180,0])
enforcement2();
}

rotate([180,0,0])
Connector();
}

///
translate([0,0,7])
rotate([180,0,0])
color("LightSkyBlue")
WholeFuckinThing();
