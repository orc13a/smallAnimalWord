PImage ground;
Animal a;

void setup() {
  size(650, 650);
  
  smooth(8);
  // pixelDensity(2);
  a = new Animal(loadImage("fox.png"));
  ground = loadImage("ground.png");
  ground.resize(650, 650);
  
  image(ground, 0, 0);
}

void draw() {
  clear();
  image(ground, 0, 0);
}

void keyPressed() {

}
