//Fundamentals of our first Sketch
//Loops and Counter variables
//
PFont font; //space to allocate the font
float pixelX = 0;
float pixelXRand = 0;

void setup() {
  size(500, 750);  

  font = createFont("Verdana", 32);

  //printArray(PFont.list()); //list fonts in your system

  background(255, 255, 255);
}
void draw() {
  background(255, 255, 255); 

  
  fill(0);
  textSize(32);
  text("A", pixelX, 100);
  text(int(pixelX), pixelX, 150);
  pixelX = pixelX + 1; 
  if(pixelX > width){
    pixelX = 0;
  }
  
  pixelXRand = random(width);
  text("B", pixelXRand, 200);
  text(int(pixelXRand), pixelXRand, 250);


  //make the structure for the Y position
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