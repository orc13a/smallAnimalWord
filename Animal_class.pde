class Animal extends World {
  Animal(PImage image_) {
    x = random(0, width);
    y = random(0, height);
    image = image_;
    allWorldParts.add(this); 
  }
  
  void display() {
    image(image, x, y);
  }
}
