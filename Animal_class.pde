class Animal extends World {
  float moveSpeedX;
  float moveSpeedY;
  
  Animal(PImage image_, float moveSpeedX_, float moveSpeedY_) {
    x = random(0, width);
    y = random(0, height);
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
    
    x += moveSpeedX;
    y += moveSpeedY;
  }
}
