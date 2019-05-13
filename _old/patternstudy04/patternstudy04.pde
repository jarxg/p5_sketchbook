import processing.pdf.*;

void setup() {
  beginRecord(PDF, "patternstudy04.pdf");
  size(600, 800);
  background(255);
  for (int x = 0; x <= width; x += 40) {
    for (int y = 0; y <= height; y += 30) {
      noFill();
      strokeWeight(1);
      ellipse(x, x, x, y);
    }
  }
  endRecord();
}
