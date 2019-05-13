import processing.pdf.*;

void setup() {
  size(600, 800);
  background(255);
  stroke(0);
  strokeWeight(1);
}

void draw() {
  noStroke();
  fill(0, 1);
  for (int x = 0; x <= width; x += 10) {
    for (int y = 0; y <= height; y += 10) {
      ellipse(x, y, x, y);
    }
  }
}
