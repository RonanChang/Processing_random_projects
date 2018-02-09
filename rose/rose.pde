float a = 0;

void setup() {
  size(600, 600, P3D);
}

void draw() {

  translate(300, 300);
  strokeWeight(3);
  stroke(229, 0, 54, 20);
  rotateY(cos(a));
  rotateZ(sin(a));
  fill(255, 240, 150, 150);

  box(200-a*10);
  a+=0.005;
  if (a>20) {
    a = 20;
  }
}