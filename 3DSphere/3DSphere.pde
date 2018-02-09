import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;



PeasyCam cam;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 200);
}

void draw() {
  background(0);

  fill(255);
  lights();
  //translate(width/2,height/2);

  float r = 200;
  int total = 100;
  
  //get the position of every single point
  for (int i = 0; i<total; i++) {
    float lon = map(i, 0, total, -PI, PI);
    for (int j = 0; j<100; j++) {
      float lat = map(j, 0, total, -HALF_PI, HALF_PI);
      float x = r * sin(lon) * cos(lat);
      float y = r * sin(lon) * sin(lat);
      float z = r * cos(lon);
      stroke(255);
      point(x, y, z);
    }
  }
}