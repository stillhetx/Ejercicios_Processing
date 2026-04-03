

randonWalker rLine1,rLine2;

void setup() {
    size(960,1080);
    surface.setLocation(957,0);
    background(#ffffff);
    stroke(40);
    strokeWeight(3);
    rLine1= new randonWalker(10,10);
    rLine2= new randonWalker(10,10);
}

void draw() {
    for(int n=0;n<100;n++){
        rLine1.update();    
        rLine2.update();    
    }    
}

class randonWalker{
    float x1,y1,x2,y2;
    float xStep = 10, yStep = 10;
    float roff, red;

    randonWalker(float xStep_, float yStep_){
        xStep=xStep_;
        yStep=yStep_;

        x1 = width/2;
        y1 = height/2;
        x2 = width/2;
        y2 = height/2;
    }
        randonWalker(){
        x1 = width/2;
        y1 = height/2;
        x2 = width/2;
        y2 = height/2;
    }

    void update(){
        x1+=random(-xStep, xStep);
        y1+=random(-yStep, yStep);
        x2+=random(-xStep, xStep);
        y2+=random(-yStep, yStep);

        x1=constrain(x1,0, width);
        y1=constrain(y1,0, height);
        x2=constrain(x2,0, width);
        y2=constrain(y2,0, height);

        roff+=0.01;
        red=noise(roff)*200;
        stroke(red,0,0);
        line(x1, y1, x2, y2);
    }
}