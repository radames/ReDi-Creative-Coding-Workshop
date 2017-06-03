//Fundamentals of our first Sketch
//Now all togehter   
//
PImage myImg; //space to allocate the image
PFont font; //space to allocate the font

void setup(){
  size(500, 750);  
  
  font = createFont("Verdana", 32);

  //printArray(PFont.list()); //list fonts in your system
  myImg = loadImage("http://www.nyan.cat/cats/original.gif");
  myImg.resize(100,0); //resize to 100 pixels width
  imageMode(CENTER); // draw image from the center
}
void draw(){
  //colors Channels Red Green Blue 
  background(255,255,255); 
 
   myShape(100,100, 0); //it needs position x,y, and angle 
   myShape(100,300, 45);
   
   myShape(100,500, 15);

  //make a composition with your own shape
  
}

void myShape(float px, float py, float angle){
 pushMatrix(); //create a new coordinate 
   translate(px,py);
   rotate(radians(angle));
   fill(255,0,0);
   ellipse(0,0, 100,100);
   fill(100,100,0);
   rect(0,0,200,10);
   image(myImg, 0,0);
   fill(0,0,255);
   textSize(32);
   text("nyan cat", 100,0);
   
 popMatrix();
  
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