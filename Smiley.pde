float x = 0;
float y = 0;
float diameter = 100;

void setup() {
  size(400, 400);
  x = width/2;
  y = height/2;
}

void draw() {
  background(255);
  smileyFace(x, y, diameter);
  x = x + 1;
  y = y + 1;
  diameter = diameter + 0.5;
  if (x > width || y > height || diameter > 200) {
    x = 0;
    y = 0;
    diameter = 100;
  }
}

void smileyFace(float x, float y, float d) {
  fill(255, 255, 0);
  ellipse(x, y, d, d);
  fill(0, 0, 0);
  ellipse(x-d/4, y-d/4, d/10, d/10);
  ellipse(x+d/4, y-d/4, d/10, d/10);
  arc(x, y, d/2, d/2, 0, PI);
}
