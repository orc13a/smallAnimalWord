class Terrain extends World {
  Terrain(PImage image_) {
    x = random(25, (width - 25));
    y = random(25, (height - 25));
    image = image_;
    
  }
  
  void display() {
    
  }
  
  void update() {
    
  }
  
  void check() {
    for (World worldParts : allWorldParts) {
      if ((x - (image.width/2)) < worldParts.x && (x + (image.width/2)) > worldParts.x && (y - (image.height/2)) < worldParts.y && (y + (image.height/2)) > worldParts.y) {
        worldParts.overTerrain = true;
        /*try {
          
        } catch() {
        
        }*/
      } else {
        worldParts.overTerrain = false;
      }
    }
  }
}
