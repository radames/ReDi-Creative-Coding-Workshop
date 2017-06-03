//Fundamentals of our first Sketch
//Loops and Counter
//
PFont font; //space to allocate the font
float pixelX = 0;
void setup() {
  size(500, 750);  

  font = createFont("Verdana", 32);

  //printArray(PFont.list()); //list fonts in your system

  background(255, 255, 255);
}
void draw() {
  background(255, 255, 255); 

  pixelX = 0; 
  while (pixelX <= width) {
    fill(0);
    textSize(32);
    text("A", pixelX, 100);
    pixelX = pixelX + 50;
  }

  pixelX = 0; 
  while (pixelX <= width) {
    fill(0);
    textSize(15);
    text(int(pixelX), pixelX, 150);
    pixelX = pixelX + 50;
  }
  
  //make different patter but now at the vertical
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