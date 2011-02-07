// Swarm Prototype
// (C) Copyright J.P. McGlinn

// Drone class, extends Bee
// drones follow queen bees

class Drone extends Bee{
  Drone(color droneColor){ super(droneColor, 3, 1.0); }

  void move(Queen queen, Drone[] swarm){
    if(random(swarm.length) > (swarm.length/5))
      speedX = speedX - 1 + random(maxVelocity/3);
    if(random(swarm.length) > (swarm.length/5))
      speedY = speedY - 1 + random(maxVelocity/3);
    
    // Accellerate
    PVector distanceV = PVector.sub(queen.position, position);
    float distance = abs(distanceV.x) + abs(distanceV.y);
    if (distance == 0)
      distance=1;
      
    speedX += (distanceV.x * maxAccel)/distance;
    speedY += (distanceV.y * maxAccel)/distance;
    
    //speed limit
    if(speedX > maxVelocity)
      speedX = maxVelocity;
    else
      if(speedX < -maxVelocity)
        speedX = -maxVelocity;
        
    if(speedY > maxVelocity)
      speedY = maxVelocity;
    else
      if(speedY < -maxVelocity)
        speedY = -maxVelocity;
        
    direction.x = speedX;
    direction.y = speedY;
    position.add( direction );
    // constrain to screen:
//    position.x = (position.x + width) % width;
  //  position.y = (position.y + height) % height;
  }
}
