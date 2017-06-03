//Fundamentals of our first Sketch
//Now all togehter Interactive  mouse
//
PFont font; //space to allocate the font

void setup(){
  size(500, 750);  
  
  font = createFont("Verdana", 32);

  //printArray(PFont.list()); //list fonts in your system

  background(255,255,255); 

}
void draw(){
  //colors Channels Red Green Blue 

  line(0,0, mouseX, mouseY);
  line(width/2,height, mouseX, mouseY);
  
  if(mousePressed == true){
    myShape(mouseX, mouseY, mouseY); //it needs position x,y, and angle
  }

  //make a composition with your own shape
  
}

void myShape(float px, float py, float size){
 
  
 pushMatrix(); //create a new coordinate 
   translate(px,py);
   fill(random(255), random(255),random(255));
   textSize(size);
   textAlign(CENTER);
   text("nyan cat", 0,0);
   
 popMatrix();
  
}


//save image on sketchfolder if you press capital S
import java.util.Date;
void keyPressed() { 
  if(key == ' '){
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