//Fundamentals of our first Sketch
//Image  
//
PImage myImg; //space to allocate the image

void setup(){
  size(500, 750);  
  
  //printArray(PFont.list()); //list fonts in your system
  myImg = loadImage("http://www.nyan.cat/cats/original.gif");
  myImg.resize(100,0); //resize to 100 pixels width
  imageMode(CENTER); // draw image from the center
}
void draw(){
  //colors Channels Red Green Blue 
  background(255,255,255); 
  noTint(); //no fill color for image
  image(myImg, 100, 100);
  
  tint(255,0,0,150); //fill color with red and transparent
  image(myImg, 300, 100);

  //make a composition with an image you pick from the web
  
}




//save image on sketchfolder if you press capital S
import java.util.Date;
void keyPressed() { 
  
  if (key == 'S') {// type to  save an image of your canvas
    println("Saving PNG...");
    Date d = new Date(); 
    String fileName = "output-"+ d.getTime() + ".png";
    save(fileName);
    exit();
  }
} 