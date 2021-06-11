class World {
  ArrayList<World> allWorldParts = new ArrayList<World>();
  ArrayList<Animal> allAnimals = new ArrayList<Animal>();
  float x;
  float y;
  PImage image;
  // Settings
  // - Fox
  float foxMoveSpeedX = 8;
  float foxMoveSpeedY = 6;
  // - Mouse
  float mouseMoveSpeedX = 5;
  float mouseMoveSpeedY = 3;
  // - Tree
  float treeGrowSpeed = 0.3;
  int treeMaxSize = 250;
  // - Rose
  float roseGrowSpeed = 0.3;
  int roseMaxSize = 60;
   
  void display() {
    image(image, x, y);
    
    for (World worldParts : allWorldParts) {
      worldParts.display();
      worldParts.update();
      worldParts.terrainCheck(allAnimals);
    }
  }
  
  void update() {
  
  }
  
  void terrainCheck(ArrayList<Animal> allA) {
    
  }
  
  void add() {
    if (keyCode == 'F') {
      Fox f = new Fox(loadImage("fox.png"), foxMoveSpeedX, foxMoveSpeedY);
      allWorldParts.add(f);
      allAnimals.add(f);
    }
    
    if (keyCode == 'M') {
      Mouse m = new Mouse(loadImage("mouse.png"), mouseMoveSpeedX, mouseMoveSpeedY);
      allWorldParts.add(m); 
      allAnimals.add(m);
    }
    
    if (keyCode == 'T') {
      Tree t = new Tree(loadImage("tree.png"), treeGrowSpeed, treeMaxSize);
      allWorldParts.add(t); 
    }
    
    if (keyCode == 'R') {
      Rose r = new Rose(loadImage("flower.png"), roseGrowSpeed, roseMaxSize);
      allWorldParts.add(r); 
    }
    
    if (keyCode == SHIFT) {
      Mud m = new Mud(loadImage("mud.jpg"));
      allWorldParts.add(m); 
    }
  }
}
