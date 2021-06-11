class Fox extends Animal {
  Fox(PImage image_, float moveSpeedX_, float moveSpeedY_) {
    super(image_, moveSpeedX_, moveSpeedY_);
    image.resize(80, 80); // Hvert billede er forskellig, derfor gør vi der her
  }
  
  void display() {
    image(image, x, y);
  }
}
