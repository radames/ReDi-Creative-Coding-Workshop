class Leg{
  
  float legLength;
  PVector vS, vM, vE;
  int mode;//0 - right, 1 - left
  
  Leg(PVector vS, int mode){
    
    legLength = 120;
    
    this.vS = vS;
    this.mode = mode;
    vE = new PVector(0, 0);
    vM = new PVector(0, 0);
  }
  
  void update(PVector target){
    
    PVector diff = PVector.sub(target, vS);
    float d = diff.mag();
    
    if(d>=2*legLength){
      //diff.normalize();
      //diff.mult(legLength);
      diff.x *= legLength/d;
      diff.y *= legLength/d;
      vM.set(vS.x+diff.x, vS.y+diff.y);
      vE.set(vM.x+diff.x, vM.y+diff.y);
      
    }else{
      
      vE.set(target.x, target.y);
      if(mode == 0) diff.set(diff.y, -diff.x);
      else diff.set(-diff.y, diff.x);
      diff.x *= sqrt(sq(legLength)-sq(d*.5))/d;
      diff.y *= sqrt(sq(legLength)-sq(d*.5))/d;
      //diff.normalize();
      //diff.mult(sqrt(sq(legLength)-sq(d*.5)));
      vM.set((vS.x+vE.x)*.5+diff.x, (vS.y+vE.y)*.5+diff.y);
    }
  }
  
  void display(){
    strokeWeight(5);
    stroke(255, 0, 0);
    line(vS.x, vS.y, vM.x, vM.y);
    stroke(0, 0, 255);
    line(vE.x, vE.y, vM.x, vM.y);
  }
}