
int grid=100;
int margin=100;

void setup() {
    size(800,800);
    noLoop();
}

void draw() {
    background(15,20,30);
    noFill();
    stroke(255);
    
    float d=100;
    float x1=random(d);
    float y1=random(d);
    float x2=random(d);
    float y2=random(d);
    float x3=random(d);
    float y3=random(d);
    float x4=random(d);
    float y4=random(d);


for (int i = margin; i < width-margin; i+=grid) {
    for (int j = margin; j < height-margin; j+=grid) {
        pushMatrix();
        translate(i, j);
        quad(x1, y1, x2, y2, x3, y3, x4, y4);
        popMatrix();    
    }
}
    

    //rectMode(CENTER);
    //rect(x1, y1, d, d);
}

void keyPressed() {
    if(key==' ') redraw();
}

