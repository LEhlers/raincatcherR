
color c;
rain[] r;
catcher cc;
int timeLeft;
int tS= 50;
int fW=215;

void setup () {
  size (600, 600);
  r= new rain[400];

  for (int i=0; i<r.length; i++) {
    r[i] = new rain();
  }

  //400 raindrops will fall at once
  cc= new catcher();
  textAlign(CENTER);
 
}

void draw() {
  background (4, 14);
   textSize(tS);
  for (int i=0; i<r.length; i++) {
    r[i].display();
    r[i].move();
//    catcher.catchDrop(r[i]);
  }

  cc.displayC();

  timeLeft = int (30-(millis()/1000));
  
  if (timeLeft <= 0) {
    timeLeft= 0;
    tS= 100;
    text("GAME OVER", width/2, height/2);
  }
  //timer can not go lower than 0


  if (frameCount%200 == 0) {   
    c = color(random(255), random(255), random(255));
  }
  fill (fW);
  //text is white
  if (timeLeft <= 10) {
    fill (fW+40, 0, 0);
  }
  //if you are low on time, the clock turns red
  
  if (timeLeft <= 4) {
    fill (random(255), random (255), random (255));
    tS+= .8;
  }
  // if you are really low on time, the clock falshes and grows to alert you

  text(timeLeft, width/2, height*.75);
  //visible timer counts down from 60
  
  
}


