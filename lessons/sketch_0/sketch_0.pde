//Fundamentals of our first Sketch
//Pixels elements
//
void setup(){
  size(500, 750);  
}
void draw(){
  //colors Channels Red Green Blue 
  background(255,255,255); 
  
  //now made it Red and with 1 pixels size
  stroke(255,0,0);
  strokeWeight(1);
  point(100,100); //position x = 100, y = 100
  
  //now made it Green and with 5 pixels size
  stroke(0,255,0);
  strokeWeight(5);
  point(200,200); //position x = 200, y = 200

  //now make vertical line, with differente color
  
  //a horizontal line, with differente color
  
  //a diagonal line, with differente color
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