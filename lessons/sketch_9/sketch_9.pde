//Fundamentals of our first Sketch
//Interaction 
//

void setup(){
  size(500, 750);  
  
  background(0);
}

void draw(){
  fill(0);
  stroke(255);
  strokeWeight(2);
  ellipse(width/2, height/2, mouseX,mouseY);
  
  //now add other shapes you have learned and use the variables mouseX, mouseY to create a interatctive shape
  
 
}


//save image on sketchfolder if you press capital S
import java.util.Date;
void keyPressed() { 
  if(key == ' '){
     background(0); 
  }
  if (key == 'S') {// type to  save an image of your canvas
    println("Saving PNG...");
    Date d = new Date(); 
    String fileName = "output-"+ d.getTime() + ".png";
    save(fileName);
    exit();
  }
} 