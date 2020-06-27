
module hexagon(size, height) {
  boxWidth = size/1.75;
  for (r = [-60, 0, 60])
    rotate([0,0,r])
      cube([boxWidth, size, height], true);
}
 

 
 difference() {
      cylinder(25,6,6, $fn=100);
      hexagon(6.5,12);
      translate ([0,0,25]) 
        hexagon(6.5,12);

     } 