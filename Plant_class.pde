class Plant extends World {
  float growSpeed;
  float maxGrow;
  float plantHeight;
  float plantWidth;
  
  Plant(PImage image_, float growSpeed_, float maxGrow_) {
    x = random(25, (width - 25));
    y = random(25, (height - 25));
    image = image_;
    growSpeed = growSpeed_;
    maxGrow = maxGrow_;
  }
  
  void display() {
    
  }
  
  void update() {
    if (plantHeight < maxGrow) {
      plantWidth += growSpeed;
      plantHeight += growSpeed;
      y -= (growSpeed / 2);
    }
  }
}
