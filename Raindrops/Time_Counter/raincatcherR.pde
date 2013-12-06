
color c;
rain[] r;
catcher cc;

void setup () {
  size (600, 600);
  r= new rain[400];
  for (int i=0; i<r.length; i++) {
    r[i] = new rain();
  }
  //400 raindrops will fall at once
  cc= new catcher();
  textAlign(CENTER);
  textSize(50);
}

void draw() {
  background (4, 14);
  for (int i=0; i<r.length; i++) {
    r[i].display();
    r[i].move();
  }
  cc.displayC();


  if (frameCount%200 == 0) {    //if the remainder after dividing the current frame by 2000 is equal to 0...
    c = color(random(255), random(255), random(255));  //c is assigned a new random color
  }
  fill (215);
  text(int (millis()/1000), width/2, height*.75);
  //text displays elapsed seconds
}

