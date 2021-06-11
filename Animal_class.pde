class Animal extends World {
  float moveSpeedX;
  float moveSpeedY;
  boolean overTerrain = false;
  
  Animal(PImage image_, float moveSpeedX_, float moveSpeedY_) {
    x = random(25, (width - 25));
    y = random(25, (height - 25));
    image = image_;
    moveSpeedX = moveSpeedX_;
    moveSpeedY = moveSpeedY_;
  }
  
  void display() {
      
  }
  
  void update() {
    if ((x + (image.width / 2)) >= width) {
      moveSpeedX = -moveSpeedX;
    }
    
    if ((x - (image.width / 2)) <= 0) {
      moveSpeedX = (moveSpeedX * -1);
    }
    
    if ((y + (image.height / 2)) >= height) {
      moveSpeedY = -moveSpeedY;
    }
    
    if ((y - (image.height / 2)) <= 0) {
      moveSpeedY = (moveSpeedY * -1);
    }
    
    if (overTerrain == false) {
      x += moveSpeedX;
      y += moveSpeedY;
    } else {
      x += (moveSpeedX / 3);
      y += (moveSpeedY / 3);
    }
  }
}
