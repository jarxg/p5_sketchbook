import processing.pdf.*;

size(640, 640);
// beginRecord(PDF, "patternstudy06" + random(1000) + ".pdf");
background(0);
translate(width / 2, height / 2);
for (int i = 0; i <= width; i += 5) {
  for (int j = 0; i <= height; i += 10) {
    noFill();
    rotate(QUARTER_PI / 4);
    stroke(0, i / 2, j);
    ellipse(i, j, i, i);
    rotate(QUARTER_PI / 2);
    ellipse(j, i, i, i);
    stroke(i / 2, 0, j);
    ellipse(j, j, i, i);
  }
}
// endRecord();