void setup() {
    size(960,1080);
    surface.setLocation(957,0);
    rectMode(CENTER);
    stroke(0,15,30);
    strokeWeight(25);
}

float angle;

void draw() {
    background(0,15,30);
    translate(width/2, height/2);
    for (int i = 0; i < 100; ++i) {
            fill(i*10, 15, 30);
            scale(0.95);
            rotate(radians(angle));
            rect(0,0,600,600);
    }


    angle++;
    
}
