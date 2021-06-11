class World {
  ArrayList<World> allWorldParts = new ArrayList<World>();
  float x;
  float y;
  PImage image;
  boolean overTerrain = false;
   
  void display() {
    image(image, x, y);
    
    for (World worldParts : allWorldParts) {
      worldParts.display();
      worldParts.update();
      worldParts.check();
    }
  }
  
  void update() {
  
  }
  
  void check() {
  
  }
}
