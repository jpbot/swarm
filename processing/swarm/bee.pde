// Swarm Prototype
// (C) Copyright J.P. McGlinn

// Bee class, superclass for special bees

class  Bee{
  PVector direction;
  PVector position;
  float speed;
  float speedX;
  float speedY;
  float maxAccel;
  float maxVelocity;
  color colour;
  
  Bee(color beeColor, float mvelocity, float maccel){
    // max speed/velocity
    maxVelocity = mvelocity;
    maxAccel = maccel;
    
    // random speed
    speed = random(1,maxVelocity);
    speedX = random(1,maxVelocity);
    speedY = random(1,maxVelocity);
     
    // random location
    position = new PVector(random(0,width),random(0,height));
    
    // random direction
    direction = new PVector(random(-1,1),random(-1,1));
    direction.normalize();
    
    // color
    colour = beeColor;
  }
  
   
  void draw(){
    stroke(colour);
    pushMatrix();
    translate(position.x,position.y);
    line(0,0,direction.x*2,direction.y*2);
    popMatrix();    
  }

  void undraw(){
    stroke(0);
    pushMatrix();
    translate(position.x,position.y);
    line(0,0,direction.x*2,direction.y*2);
    popMatrix();    
  }
}

