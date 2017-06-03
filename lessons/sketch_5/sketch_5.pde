//Fundamentals of our first Sketch
//Text  
//
PFont font; //space to allocate the font

void setup(){
  size(500, 750);  
  
  //printArray(PFont.list()); //list fonts in your system
  font = createFont("Verdana", 32);

}
void draw(){
  //colors Channels Red Green Blue 
  background(255,255,255); 
  
  stroke(0,255,0);
  fill(255,0,0);
  textSize(32); // font size
  text("Hello!", 100, 100); // position
  
  
  pushMatrix(); //trick to rotate 
  translate(100,100); //the position is here now 
  rotate(radians(45)); //rotate 45 degrees
  text("Hello Rotated", 0, 0); // position 0,0 in the new coordinates
  popMatrix();
  
  //make a composition with texts
  
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