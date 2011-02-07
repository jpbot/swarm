// A simple swarming algorithm
// (c) Alasdair Turner 2008



Drone [] swarm = new Drone [40];
Queen queen;

void setup()
{
  color queenColor;
  color droneColor;
  
  size(128,64);
  //colorMode(HSB);
  queenColor = color(255,0,0);
  droneColor = color(255,255,0);
  
  queen = new Queen(queenColor);
  for (int i = 0; i < swarm.length; i++) {
    swarm[i] = new Drone(droneColor);
  }
  background(0);
}

void draw()
{
  queen.undraw();
  queen.move(swarm);
  queen.draw();
  for (int i = 0; i < swarm.length; i++) {
    swarm[i].undraw();
    swarm[i].move(queen, swarm);
    swarm[i].draw();
  }
}


