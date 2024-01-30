float bobSize = 70;
Bob[] bobs;
int bobCount = 200;
void setup() {
  bobs = new Bob[bobCount];
  for (int a = 0; a < bobCount; a++)
    bobs[a] = new Bob(color(random(255), random(255), random(255), 125));
  frameRate(60);
  fullScreen();
}

void draw() {
  background(0);
  for (Bob bob : bobs) {
    bob.show();
    bob.update();
  }
}
void mousePressed() {
  for (Bob bob : bobs) {
    bob.target = new PVector(mouseX, mouseY);
  }
}
PVector getRandomPoint() {
  return new PVector(random(width), random(height));
}
