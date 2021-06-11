class World {
  ArrayList<World> allWorldParts = new ArrayList<World>();
  float x;
  float y;
  PImage image;
   
  void display() {
    image(image, x, y);
    
    for (World worldParts : allWorldParts) {
      worldParts.display();
      worldParts.update();
    }
  }
  
  void update() {
  
  }
}
