//Fundamentals of our first Sketch
//Loops and Counter with your patter
//

PImage myImg; //space to allocate the image
PFont font; //space to allocate the font

float pixelX = 0;

void setup() {
  size(500, 750);  


  //printArray(PFont.list()); //list fonts in your system  
  font = createFont("Verdana", 32);

  //printArray(PFont.list()); //list fonts in your system
  myImg = loadImage("http://www.nyan.cat/cats/original.gif");
  myImg.resize(100,0); //resize to 100 pixels width
  imageMode(CENTER); // draw image from the center
}
void draw() {
  background(255, 255, 255); 

  pixelX = 0; 
  while (pixelX <= width) {
    fill(0);
    textSize(32);
    myShape(pixelX, 100, 0, 0.5);
    pixelX = pixelX + 50;
  }

  pixelX = 0; 
  while (pixelX <= width) {
    fill(0);
    textSize(15);
    text(int(pixelX), pixelX, 150);
    pixelX = pixelX + 50;
  }
  
  //fill up the screen with your Shape
}

void myShape(float px, float py, float angle, float scale){
 pushMatrix(); //create a new coordinate 
   translate(px,py);
   rotate(radians(angle));
   scale(scale);
   fill(255,0,0);
   noStroke();
   ellipse(0,0, 100,100);
   image(myImg, 0,-10);
   fill(0,0,255);
   textSize(15);
   textAlign(CENTER);
   text("nyan cat", 0,35);
   
 popMatrix();
  
}


//save image on sketchfolder if you press capital S
import java.util.Date;
void keyPressed() { 
  if (key == ' ') {
    background(255);
  }
  if (key == 'S') {// type to  save an image of your canvas
    println("Saving PNG...");
    Date d = new Date(); 
    String fileName = "output-"+ d.getTime() + ".png";
    save(fileName);
    exit();
  }
} 