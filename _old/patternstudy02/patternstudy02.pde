import processing.pdf.*;

int scale = 8;

// patternstudy02
// by @jarxg

void setup() {
  beginRecord(PDF, "patternstudy02.pdf");
  size(600, 800);
  background(0);
  for (int j = 0; j <= height; j+= 8) {
    for (int i = 0; i <= width; i+= 8) {
      stroke(255);
      strokeWeight(i/128);
      line(j, i, i, j);
    }
  }
  for (int j = 0; j <= height; j += 16) {
    for (int i = 0; i <= width; i += 16) {
      stroke(0);
      strokeWeight(j/64);
      line(i, j, i, j);
    }
  }
  for (int j = 0; j <= height; j += 32) {
    for (int i = 0; i <= width; i+= 32) {
      stroke(0);
      strokeWeight(i/32);
      line(i, j, i, j);
    }
  }
  endRecord();
}

void draw() {
}
