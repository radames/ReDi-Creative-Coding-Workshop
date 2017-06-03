//Fundamentals of our first Sketch
//Buffer image
//

PFont font; //space to allocate the font
float pixelX = 0;
float pixelY = 0;

float tileWidth = 125;

PGraphics buffer; //buffer image

color colorArray[] = {#8BC21D, #C0B086, #D9A66E, #F7F3C0, #DA3C41};
void setup() {
  size(500, 750);  

  font = createFont("Verdana", 32);

  //printArray(PFont.list()); //list fonts in your system

  buffer = createGraphics(300, 300); //initialize buffer image with 500x500px 


  background(255, 255, 255);
}
void draw() {
  background(255, 255, 255); 

  pixelX = 0;
  while (pixelX < width) {
    pixelY = 0;
    while (pixelY < height) {
      myShape(pixelX, pixelY, tileWidth, colorArray[int(colorArray.length*pixelX/width)]);
      pixelY = pixelY + tileWidth;      
    }
    pixelX = pixelX + tileWidth;
  }


  //try to make new variables and play with different paramenters from your shape
}

void myShape(float px, float py, float tileWidth, color c) {

  buffer.beginDraw();
  buffer.noStroke();
  buffer.fill(c);
  buffer.rect(0, 0, 300, 300); 
  buffer.fill(c/2);
  buffer.textAlign(CENTER, CENTER);
  buffer.textSize(32);
  buffer.stroke(c/2);
  buffer.strokeWeight(5);

  float count = 0;
  float mx = map(mouseX, 0, width, 0, 300); //map mouse range to fit on the tile box 
  float my = map(mouseY, 0, height, 0, 300);

  while (count < 300) {
    buffer.line(count, 0, mx, my);
    buffer.line(count, 300, mx, my);

    count = count + 20;
  }
  
  buffer.line(300, 150, mx, my);
  buffer.line(0, 150, mx, my);


  buffer.text("AHA", 250, 250);
  buffer.endDraw();

  image(buffer, px, py, tileWidth, tileWidth);
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