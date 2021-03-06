// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Simple Recursion

void setup() {
  size(800,800);  
}

void draw() {
  background(255);
  drawCircle(width/2,height/2,500); 
  noLoop();
}

// Recursive function
void drawCircle(float x, float y, float r) {
  stroke(0);
  noFill();
  ellipse(x, y, r, r);
  if(r > 100) {
    // Now we draw two more circles, one to the left
    // and one to the right
    drawCircle(x + r/2, y, r/2);
    drawCircle(x - r/2, y, r/2);
    //drawCircle(x, y - r/2, r/2);
    //drawCircle(x, y + r/2, r/2);
    
  }
}