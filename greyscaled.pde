float xPos, yPos, zPos, r, g, b;
void setup() {
  size(800, 800, P3D);
  background(238, 238, 238);
  xPos = 500;
  zPos = 200;
  yPos = 600;
  translate(xPos, yPos, zPos);
  lights();
}

void draw() {
  // To sky appearance, comment/uncomment fill functions below this line
  fill(0,0,0,2);
  /* UNCOMMENT FOR sky
  r = 50 + random(-10, 10);
  g = 150 + random(-30, 30);
  b = 220 + random(-20, 20);
  fill(r, g, b, 2);
   */
  stroke(255, 255, 255, 5);
  if (millis() < 12500) { // Draw whole screen along 12.5 sec
    translate(random(width), random(height), zPos);
  } else if (millis() > 12500 && millis() < 20000) { // Draw half of screen along 7.5 sec
    translate(random(width), random(300, 800), zPos);
  } else { // And sphere disappears
    noStroke();
    fill(255, 255, 255, 0);
  }
  sphere(100);
}
