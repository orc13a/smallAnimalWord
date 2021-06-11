class Mouse extends Animal {
  Mouse(PImage image_, float moveSpeedX_, float moveSpeedY_) {
    super(image_, moveSpeedX_, moveSpeedY_);
    image.resize(75, 75); // Hvert billede er forskellig, derfor gør vi der her
  }
  
  void display() {
    image(image, x, y);
  }
}
