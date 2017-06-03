//Fundamentals of our first Sketch
//Make your our shape  
//

void setup(){
  size(500, 750);  
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