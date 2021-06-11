class Tree extends Plant {
  Tree(PImage image_, float growSpeed_, int maxGrow_) {
    super(image_, growSpeed_, maxGrow_);
    // Hvert billede er forskellig, derfor gør vi der her
    plantWidth = 100;
    plantHeight = 100;
  }
  
  void display() {
    image(image, x, y, plantWidth, plantHeight);
  }
}
