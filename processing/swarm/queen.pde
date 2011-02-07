class Queen extends Bee{
  int borderWidth = 5;
  
  Queen(color queenColor){ super(queenColor, 4.0, 1.5); }

  void move(Bee [] swarm){
    // Accellerate
    speedX += random(-maxAccel,maxAccel);
    speedY += random(-maxAccel,maxAccel);
    
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
        
    // new position
    
    direction.x = speedX;
    direction.y = speedY;
    
    position.x += speedX;
    position.y += speedY;
    
    // constrain to screen:
    if(position.x < borderWidth)
      speedX = abs(speedX*2);
    if(position.x > (width - borderWidth))
      speedX = -abs(speedX*2);
      
    if(position.y < borderWidth)
      speedY = abs(speedY*2);
    if(position.y > (height - borderWidth))
       speedY = -abs(speedY*2);
  }
}
