//downloaded from https://www.openprocessing.org/sketch/429719
Body body;

void setup(){
  size(1280, 720, P2D);
  body = new Body();
}

void draw(){
  body.update();
  
  background(255);
  body.display();
}