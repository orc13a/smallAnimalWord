class Mud extends Terrain {
  Mud(PImage image_) {
    super(image_);
    image.resize(75, 75); // Hvert billede er forskellig, derfor gør vi der her
  }
  
  void display() {
    image(image, x, y);
  }
}
