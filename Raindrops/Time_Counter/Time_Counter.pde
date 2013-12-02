color c;

void setup() {
  size(800, 100);
  textAlign(CENTER);
  textSize(50);
  frameRate(60);
  noStroke();
}

void draw() {
  background(c);
  if (frameCount%200 == 0) {    //if the remainder after dividing the current frame by 2000 is equal to 0...
    c = color(random(255), random(255), random(255));  //c is assigned a new random color
  }
  text(frameCount, width/2, height*.75);
}
