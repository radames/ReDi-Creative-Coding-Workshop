//Fundamentals of our first Sketch
//Lines A
//
void setup(){
  size(500, 750);  
}
void draw(){
  //colors Channels Red Green Blue 
  background(255,255,255); 
  stroke(255,0,0);
  strokeWeight(1);
  line(100,100, 200, 200); // needs two points to define a line
  
  
  //now make vertical line, with differente color
  
  //a horizontal line, with differente color
  
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