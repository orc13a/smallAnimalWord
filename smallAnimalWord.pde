boolean startProgram = false;
World grassWorld;

// Settings
// - Fox
float foxMoveSpeedX = 8;
float foxMoveSpeedY = 6;
// - Mouse
float mouseMoveSpeedX = 5;
float mouseMoveSpeedY = 3;
// - Tree
float treeGrowSpeed = 0.3;
int treeMaxSize = 250;
// - Rose
float roseGrowSpeed = 0.3;
int roseMaxSize = 60;

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
  
  if (startProgram == true) {
    grassWorld.add();
  }
}
