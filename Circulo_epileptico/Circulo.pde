void setup(){
size(800,800);
background(#eeeeee);
}

void draw(){
background(#eeeeee);
translate(width/2,height/2);
for(int n=0; n<30;n++){
    stroke(random(255),random(255),random(255));
for(int a=0; a<360; a+=1){
  float x= random(50,150);
  float xx= random(150,350);
  pushMatrix();
  rotate(radians(a));
  strokeCap(CORNER);
  strokeWeight(4);
  line(x,0,xx,0);
  popMatrix();
}
}
saveFrame("frames/######.jpg");
}

void KeyPressed(){
redraw();
}
