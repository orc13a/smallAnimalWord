float foxMoveSpeedX = 8;
float foxMoveSpeedY = 6;
World grassWorld;

void setup() {
  size(650, 650);
  
  smooth(8);
  // pixelDensity(2);
  imageMode(CENTER);
  
  grassWorld = new World();
  grassWorld.x = (width/2);
  grassWorld.y = (height/2);
  grassWorld.image = loadImage("ground.png");
}

void draw() {
  clear();
  grassWorld.display();
}

void keyPressed() {
  if (keyCode == 'F') {
    Fox f = new Fox(loadImage("fox.png"), foxMoveSpeedX, foxMoveSpeedY);
    grassWorld.allWorldParts.add(f); 
  }
  
  if (keyCode == 'M') {
    Mouse m = new Mouse(loadImage("mouse.png"), foxMoveSpeedX, foxMoveSpeedY);
    grassWorld.allWorldParts.add(m); 
  }
  
  if (keyCode == 'T') {
    Tree t = new Tree(loadImage("tree.png"), 0.3, 250);
    grassWorld.allWorldParts.add(t); 
  }
}
