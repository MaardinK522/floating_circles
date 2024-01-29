class Bob {
  PVector pos;
  PVector target;
  PVector lastPos;
  color bobColor;
  public Bob(color bobColor) {
    this.bobColor = bobColor;
    this.pos = getRandomPoint();
    this.target = getRandomPoint();
  }
  public void show() {
    noStroke();
    fill(this.bobColor);
    circle(pos.x, pos.y, bobSize);
  }
  public void update() {
    this.pos.x = lerp(this.pos.x, this.target.x, 0.01);
    this.pos.y = lerp(this.pos.y, this.target.y, 0.01);
    if (frameCount % int(random(100, 150)) == 0) {
      this.target = getRandomPoint();
    }
  }
}
