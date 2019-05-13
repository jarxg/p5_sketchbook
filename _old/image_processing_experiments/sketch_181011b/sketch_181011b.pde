import processing.pdf.*;
import milchreis.imageprocessing.*;

PImage img, fx01;

int scale = 8;

void setup() {
  beginRecord(PDF, "patternstudy02.pdf");
  size(640, 640);
  background(0);
  img = createImage(640, 640, ARGB);
  img.loadPixels();
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
  img.updatePixels();
  fx01 = TiltShift.apply(img, 30, true, height / 2, 320);
  image (fx01, 0, 0, width, height);
  endRecord();
  saveFrame("line-######.png");
}

void draw() {
}
