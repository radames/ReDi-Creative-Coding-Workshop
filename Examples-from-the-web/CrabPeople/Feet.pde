class Feet{
  
  PVector fL, fR;
  
  float stepLength, stepHeight, stepF, sXL, sXR;
  boolean triggerStepL, triggerStepR, turnR = true;
  
  Feet(){
    fL = new PVector(0, 0);
    fR = new PVector(0, 0);
  }
  
  void update(float xL, float xR, float velMag){
    if (turnR) {
      if (!triggerStepR && fR.x - xR > 150) {
        triggerStepR = true;
        stepLength = (xR - fR.x)+random(-10, 100);
        stepHeight = abs(stepLength * random(.4, .6));
        sXR = fR.x;
        stepF = 0;
      } else if (!triggerStepR && fR.x - xR < -25) {
        triggerStepR = true;
        stepLength = (xR - fR.x)+random(25, 125);
        stepHeight = abs(stepLength * random(.4, .6));
        sXR = fR.x;
        stepF = 0;
      }
      if (triggerStepR) {
        stepR(fR, stepLength, stepHeight, velMag);
      }
    } else {
      if (!triggerStepL && fL.x - xL < -150) {
        triggerStepL = true;
        stepLength = (xL - fL.x)+random(-100, 10);
        stepHeight = abs(stepLength * random(.4, .6));
        sXL = fL.x;
        stepF = 0;
      } else if (!triggerStepL && fL.x - xL > 25) {
        triggerStepL = true;
        stepLength = (xL - fL.x)-random(25, 125);
        stepHeight = abs(stepLength * random(.4, .6));
        sXL = fL.x;
        stepF = 0;
      }
      if (triggerStepL) {
        stepL(fL, stepLength, stepHeight, velMag);
      }
    }
  }
  
  void stepR(PVector foot, float stepLength, float stepHeight, float velMag) {
    float itp = map(constrain(velMag, 0, 15), 0, 15, .25, .75);
    stepF = lerp(stepF, PI, itp);
    foot.x = sXR + stepLength*stepF/PI;
    foot.y = sin(stepF)*-stepHeight+height;

    if (stepF >= PI-.01) {
      stepF = PI;
      triggerStepR = false;
      turnR = !turnR;
    }
  }

  void stepL(PVector foot, float stepLength, float stepHeight, float velMag) {
    float itp = map(constrain(velMag, 0, 15), 0, 15, .25, .75);
    stepF = lerp(stepF, PI, itp);
    foot.x = sXL + stepLength*stepF/PI;
    foot.y = sin(stepF)*-stepHeight+height;

    if (stepF >= PI-.01) {
      stepF = PI;
      triggerStepL = false;
      turnR = !turnR;
    }
  }
}