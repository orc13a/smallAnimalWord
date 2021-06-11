class Rose extends Plant {
  Rose(PImage image_, float growSpeed_, int maxGrow_) {
    super(image_, growSpeed_, maxGrow_);
    // Hvert billede er forskellig, derfor gør vi der her
    plantWidth = 40;
    plantHeight = 40;
  }
  
  void display() {
    image(image, x, y, plantWidth, plantWidth);
  }
}
