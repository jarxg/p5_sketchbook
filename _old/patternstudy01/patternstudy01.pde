import processing.pdf.*;

// patternstudy01
// by @jarxg

void setup() {
  beginRecord(PDF, "patternstudy01.pdf");
  size(600, 800);
  background(255);
  for (int j = 0; j <= height; j+= 16) {
    for (int i = 0; i <= width; i+= 16) {
      stroke(0);
      strokeWeight(4);
      line(j, i, i, j);
    }
  }
  for (int j = 0; j <= height; j+=16) {
    for (int i = 0; i <= width; i+= 16) {
      stroke(255);
      strokeWeight(abs((j/32)));
      line(i, j, i, j);
    }
  }
  endRecord();
}

void draw() {
}
