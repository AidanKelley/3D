xyarray =
[[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
,[1,1,0,1,0,1,1,1,1,1,1,0,1,1,0,1,0,1,1,1,1,1,1]
,[0,1,1,0,1,0,1,1,1,1,1,0,0,1,1,0,1,0,1,1,1,1]
,[0,0,1,1,0,1,0,1,1,1,0,0,0,0,1,1,1,1,1,1,1,0]
,[0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]];

insidewidth = 120;

scaler = insidewidth/(len(xyarray[1]));

scale(scaler) {translate([-1,0,0])glasses();}
translate([0,0,0])cube([1.1*scaler,120,1.1*scaler]);
translate([-insidewidth-1.1*scaler,0,0]) cube([1.1*scaler,120,1.1*scaler]);




module glasses() {
    for(y=[0:1:len(xyarray)-1]){
        for(x=[0:1:len(xyarray[y])-1]) {
            if(xyarray[y][x] == 1) {
                translate([-x,0,y]) cube(1.1);
            }
        }
    }
}