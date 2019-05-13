boolean record;
float t;

void setup() {
  size(600, 600);
  background(#000000);
}

void draw() {

  noStroke();
  fill(#000000, 8);
  rect(0, 0, width, height);

  strokeWeight(2);
  stroke(#ffffff);

  translate(width/2, height/2);

  line (x1(t), y1(t), x2(t), y2(t));
  t += 1;

  if (record) {
    endRecord();
  record = false;
  }

  println(t);
  if (t > 200) {
    stop();
  }
}

float x1(float t) {
  return sin(t / 10) * noise(1000);
}

float y1(float t) {
  return sin(t / 10) * noise(1000);
}

float x2(float t) {
  return cos(t / 8) * noise(1000);
}

float y2(float t) {
  return sin(t / 3) * noise(1000);
}
