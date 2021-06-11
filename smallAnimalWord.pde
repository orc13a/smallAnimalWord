float foxMoveSpeedX = 8;
float foxMoveSpeedY = 6;
boolean startProgram = false;
World grassWorld;

void setup() {
  size(650, 650);
  
  smooth(8);
  // pixelDensity(2);
  imageMode(CENTER);
  
  grassWorld = new World();
  grassWorld.x = (width/2);
  grassWorld.y = (height/2);
  grassWorld.image = loadImage("ground.png");
}

void draw() {
  clear();
  if (startProgram == false) {
    textSize(24);
    text("Controls", 25, 25 + 20);
    textSize(16);
    text("Ræv: R", 25, 100);
    text("Mus: M", 25, 125);
    text("Træ: T", 25, 150);
    text("Rose: R", 25, 175);
    text("Mudder: SHIFT", 25, 200);
    textSize(26);
    text("<Mellemrum> for at starte", 25, height - 75);
  } else {
    grassWorld.display();
  }
}

void keyPressed() {  
  if (keyCode == ' ') {
    startProgram = true;
  }
  
  if (keyCode == 'F') {
    Fox f = new Fox(loadImage("fox.png"), foxMoveSpeedX, foxMoveSpeedY);
    grassWorld.allWorldParts.add(f);
  }
  
  if (keyCode == 'M') {
    Mouse m = new Mouse(loadImage("mouse.png"), foxMoveSpeedX, foxMoveSpeedY);
    grassWorld.allWorldParts.add(m); 
  }
  
  if (keyCode == 'T') {
    Tree t = new Tree(loadImage("tree.png"), 0.3, 250);
    grassWorld.allWorldParts.add(t); 
  }
  
  if (keyCode == 'R') {
    Rose r = new Rose(loadImage("flower.png"), 0.3, 60);
    grassWorld.allWorldParts.add(r); 
  }
  
  if (keyCode == SHIFT) {
    Mud m = new Mud(loadImage("mud.jpg"));
    grassWorld.allWorldParts.add(m); 
  }
}
