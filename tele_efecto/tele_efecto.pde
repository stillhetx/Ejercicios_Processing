


float x,y;
float xStep=10;
float yStep=100;
float a, a_;

int num=320;

void setup() {
    size(800,800);
     //frameRate(320);
}

void draw() {
    
    background(10,15,30);
    strokeWeight(3);

    int n=0;
    while (n<num){
        stroke(255,255-255*sin(radians(a)));
        line(x, y, x, y+yStep);

        x+=xStep;
        if(x>width){
          x=xStep/2;  
          y+=yStep;
        }
        if(y>height){
            y=0;
            a=0;
        }

        n++;
         a+=a_;

    }
            a+=0.001;


}
