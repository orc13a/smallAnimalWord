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
  
  void terrainCheck(ArrayList<Animal> allA) {
    if (allA.size() != 0) {
      for (Animal a : allA) {
        float d = dist(x, y, a.x, a.y);
        if (d < image.width && d < image.height) {
          a.overTerrain = true;
        } else {
          a.overTerrain = false;
        }
      }
    }
  }
}
