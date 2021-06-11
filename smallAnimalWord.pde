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

  for (World worldParts : grassWorld.allWorldParts) {
    worldParts.display();
  }
}

void keyPressed() {
  if (keyCode == 'F') {
    Fox f = new Fox(loadImage("fox.png"));
    grassWorld.allWorldParts.add(f); 
  }
}
