import processing.pdf.*;

int back = 255;

void setup() {
  beginRecord(PDF, "patternstudy05.pdf");
  size(600, 800);
  background(back);
  stroke(0);
  fill(back);
  for (int i = 0; i <= width; i += width / 25) {
    for (int j = 0; j <= height; j += width / 25) {
      strokeWeight(abs(j - i) / 100);
      ellipse(j, i, i, i);
    }
  }
  for (int x = 0; x <= width; x += width / 25) {
    for (int y = 0; y <= height; y += height / 50) {
      strokeWeight(abs(x - y) / 50);
      point(x, y);
    }
  }
  endRecord();
}
