float x, y;
float dia=400;
float sw=10;

void setup() {
    size(960,1053);
    surface.setLocation(957,0);
    rectMode(CENTER);
    noFill();
    stroke(#282828);
    strokeWeight(sw);

    x=width/2;
    y=height/2;
}

void draw() {
    background(#eeeeee);
    rect(x,y,dia,dia);
    
    x+=random(-10,10);
    y+=random(-10,10);
    
    x = constrain(x, dia/2-sw/2, width-dia/2-sw/2);
    y = constrain(y, dia/2-sw/2, height-dia/2-sw/2);
}
