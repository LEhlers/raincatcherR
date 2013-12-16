
color c;
rain[] r;
catcher cc;
int timeLeft;
int tS= 50;
int fW=215;
boolean startGame= false;
int RQ= 900;
int score;

void setup () {
  size (600, 600);
  r= new rain[RQ];
  for (int i=0; i<r.length; i++) {
    r[i] = new rain();
  }
  //RQ (Rain Quantity) raindrops will fall at once

  cc= new catcher();
  textAlign(CENTER);
}



void draw() {

  if (startGame ==false) {
    background (random (166, 190));
    frameRate (4);
    textSize (50);
    fill (0, 0, 230);
    text ("RAINDROP CATCHER", width/2, height *.2);
    textSize (25);
    text ("Click screen to start", width/2, height *.5);
  }

  else {

    frameRate (61);
    background (4, 14);
    textSize(tS);
    for (int i=0; i<r.length; i++) {
      r[i].display();
      r[i].move();
      cc.catchDrop(r[i]);
    }

    timeLeft = int (30-(millis()/1000));

    cc.displayC();



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
    
    if (score <=10) {
      fill (225, 255, 0);
    }
    else if (score <=20 && score >10) {
      fill (225, 0, 225);
    }
    else if (score <=30 && score >20){
      fill (0, 225, 225);
    }
    text (score, width/2, 300);
    //Score displays and changes color depending on score
    
    
  }
}

void mousePressed () {
  startGame = !startGame;
}

