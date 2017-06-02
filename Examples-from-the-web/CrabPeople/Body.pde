class Body {

  Leg [] legsR, legsL;

  PVector pos, vel, acc, tgt;
  PVector [] vts;
  float w, h, decay, force;
  float rdns;

  Feet [] feet;

  Body() {
    pos = new PVector(width*.5, height-h*2);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    tgt = new PVector(0, 0);

    vts = new PVector[4];
    for (int i=0; i<vts.length; i++) {
      vts[i] = new PVector(0, 0);
    }

    feet = new Feet[3];
    for (int i=0; i<feet.length; i++) {
      feet[i] = new Feet();
    }

    legsR = new Leg[3];
    legsL = new Leg[3];
    for (int i=0; i<legsR.length; i++) {
      legsR[i] = new Leg(vts[2], 0);
      legsL[i] = new Leg(vts[3], 1);
    }

    rectMode(CENTER);

    decay = .8;

    w = 200;
    h = 100;
  }

  void update() {
    tgt.set(
      mouseX, constrain(mouseY, height-h*2+map(constrain(vel.mag(), 0, 15), 0, 15, -h*.2, h*.2), height-h*.6)
      );
    acc = PVector.sub(tgt, pos);
    force = acc.mag();
    acc.normalize();
    acc.mult(force*.025);
    vel.add(acc);
    pos.add(vel);
    vel.mult(decay);

    rdns = map(constrain(vel.x, -25, 25), -25, 25, -PI*.0625, PI*.0625);

    vts[0].set(-w*.5, -h*.5);
    vts[1].set(w*.5, -h*.5);
    vts[2].set(w*.5, h*.5);
    vts[3].set(-w*.5, h*.5);
    for (int i=0; i<vts.length; i++) {
      vts[i].rotate(rdns);
      vts[i].add(pos);
    }

    if (frameCount == 1) {
      for (int i=0; i<feet.length; i++) {
        feet[i].fR.set(vts[2].x+random(25, 75), height);
        feet[i].fL.set(vts[3].x+random(-75, -25), height);
      }
    }

    for (int i=0; i<feet.length; i++) {
      feet[i].update(vts[3].x, vts[2].x, vel.mag());
    }
    
    
    for (int i=0; i<legsR.length; i++) {
      legsR[i].update(feet[i].fR);
      legsL[i].update(feet[i].fL);
    }
  }

  void display() {
    stroke(0);
    strokeWeight(5);
    fill(255);
    beginShape();
    for (int i=0; i<vts.length; i++) {
      vertex(vts[i].x, vts[i].y);
    }
    endShape(CLOSE);

    for (int i=0; i<legsR.length; i++) {
      legsR[i].display();
      legsL[i].display();
    }
  }
}