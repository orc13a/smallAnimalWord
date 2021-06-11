class Fox extends Animal {
  Fox(PImage image_) {
    super(image_);
    image.resize(50, 50);
  }
  
  void display() {
    image(image, x, y);
  }
}
