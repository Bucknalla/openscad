module triangle_0(){
    difference(){
        cube([85,32,10]);
        rotate([0,0,20]) translate([0,5,0]) cube([90,30,50]);
    }
    translate([1.75,-3,0]) rotate([0,0,20]) cube([10,5,10]);

}

module triangle_1(){
    difference(){
        cube([60,20,10]);
        rotate([0,0,20]) translate([0,2,0]) cube([70,10,50]);
    }
}

module frame (){
    offset = 66.65 + 3.65;
    difference(){
        rotate([90,0,0]){
            difference(){
                triangle_0();
                translate([5,2,5]){
                    rotate ([90,0,20]) cylinder (
                    h = 60, 
                    r=2, 
                    center = true, 
                    $fn=100);
                }
                translate([5+offset,2,5]){
                    rotate ([90,0,20]) cylinder (
                    h = 60, 
                    r=2, 
                    center = true, 
                    $fn=100);
                }
                translate([160,15,5]){
                    rotate ([90,0,90]) cylinder (
                    h = 170, 
                    r=2.8, 
                    center = true, 
                    $fn=100);
                }
            }   
        }
        rotate([90,0,0]) translate([20,5,0]) triangle_1();
        //translate([10,-5,0]) cube([10,5,5]);

    }
}

rotate([0,20,0]) translate([0,0,32]) frame();
//        translate([0,-5,0]) cube([10,5,5]);
