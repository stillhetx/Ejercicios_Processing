
int grid=200;
float angle;
int nX = 80; int mY=135;

float scaleVar=1;

void setup() {
    size(960,1080,P3D);
    surface.setLocation(957,0);
    rectMode(CENTER);
    fill(255,0,0);
    noStroke();

    nX=(width-floor(width/(grid*2))*grid*2)/2;
    mY=(height-floor(height/(grid*2))*grid*2)/2;
    
}

void draw() {
  background(15,20,30);
  translate(width/2, height/2);
  scaleVar=lerp(scaleVar,map(mouseX,0,width,0.1,5),1);
  scale(scaleVar);
    for (int x = nX+grid-width/2; x < width/2-nX; x+=grid*2) {
        for (int y = mY+grid-width/2; y < width/2-mY; y+=grid*2) {
            pushMatrix();
            translate(x,y);
          
            pushMatrix();      
            translate(-grid/2, -grid/2);
            rotateX(radians(angle));
            rotateY(-radians(angle));
            rect(0,0,grid,grid);
            popMatrix();
            
            pushMatrix();      
            translate(+grid/2,-grid/2);
            rotateY(radians(angle));
            rotateX(radians(angle));            
            rect(0,0,grid,grid);
            popMatrix();

            pushMatrix();      
            translate(-grid/2, +grid/2);
            rotateY(radians(angle));
            rotateX(-radians(angle));            
            rect(0,0,grid,grid);
            popMatrix();
            
            pushMatrix();      
            translate(+grid/2,+grid/2);
            rotateX(-radians(angle));
            rotateY(-radians(angle));
            rect(0,0,grid,grid);
            popMatrix();
            
            popMatrix();
        }
    }
            angle+=1;
            if(angle>=180){
                grid=grid/2;
                angle=0;
                if(grid<25) grid=200;
            }

}
