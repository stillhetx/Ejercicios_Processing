void setup(){
size(800,800);
background(#eeeeee);
}

void draw(){
background(#eeeeee);
//translate(width/2,height/2);
for(int i=-100; i<width+100;i+=200){
for(int j=-100; j<height+100; j+=200){
  noStroke();
  fill(random(255),random(255),random(255));
  rectMode(CENTER);
  rect(i,j,200,200);
  pushMatrix();
  translate(i,j);
  scale(0.28);
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
  popMatrix();

}
}
saveFrame("frames/######.jpg");
}

void KeyPressed(){
redraw();
}
