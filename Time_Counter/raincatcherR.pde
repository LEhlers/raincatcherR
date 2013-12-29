
color c;
rain[] r;
catcher cc;
int timeLeft;
int tS= 50;
int fW=215;
int gameStage = 0;
int RQ= 920;
int score;
goldRain [] gr;
redRain [] rr;

void setup () {
  size (600, 600);
  r= new rain[RQ];
  //Specified amount of rain will fall
  for (int i=0; i<r.length; i++) {
    r[i] = new rain();
  }
gr= new goldRain [6];
 for (int i=0; i < gr.length; i++) {
   gr [i] = new goldRain() ;
}
rr= new redRain [2];
for (int i=0; i < rr.length; i++) {
  rr [i] = new redRain();
}
  cc= new catcher();
  textAlign(CENTER);
}



void draw() {

  if (gameStage== 0) {
    background (random (166, 190));
    frameRate (4);
    textSize (50);
    fill (0, 0, 230);
    text ("RAINDROP CATCHER", width/2, height *.2);
    textSize (25);
    text ("Click screen to start", width/2, height *.5);
    if (mousePressed) {
      gameStage ++;
    }
  }

  else if (gameStage== 1) {

    frameRate (61);
    background (4, 14);
    textSize(tS);
    for (int i=0; i<r.length; i++) {
      r[i].display();
      r[i].move();
      r[i].moveG();
      r[i].displayG();
      cc.catchDrop(r[i]);
    }
    for (int i=0; i<gr.length; i++) {
        gr[i].displayG();
      gr[i].moveG();
      cc.catchDrop(gr[i]);
    }
    for (int i=0; i<rr.length; i++) {
        rr[i].displayR();
      rr[i].moveR();
      cc.catchDrop(rr[i]);
    }

    timeLeft = int (30-(millis()/1000));

    cc.displayC();



    if (timeLeft <= 0) {
      timeLeft= 0;
      gameStage ++ ;
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
    //visible timer counts down from 30
    textSize (20);
    fill (0, 255, 0);
    text ("STATUS:", width/2, 50);
    //Status bar to show level of rain catching ability
    textSize (50);
    
    if (score <=500) {
      fill (225, 255, 0);
      text ("HYDROPHOBE", width/2, 100);
    }
    else if (score >=500 && score <=1000) {
      fill (225, 0, 225);
      textSize (50);
       text ("WATER RESISTENT", width/2, 100);
    }
    else if (score >=1000 && score <=2000){
      fill (0, 225, 225);
       text ("DAMP", width/2, 100);
    }
     else if (score >=2000 && score <=3000){
      fill (225, 50, 100);
       text ("SATURATED", width/2, 100);
    }
     else if (score >=3000 && score <=4000){
      fill (0, 150, 25);
       text ("POWER WASHED", width/2, 100);
    }
     else if (score >=4000 && score <= 5000) {
      fill (0, 255, 25);
      textSize (50);
      text ("AQUATIC", width/2, 100);
    }
     else if (score >=5000) {
      fill (255, 225, 25);
      textSize (50);
      text ("POSEIDON", width/2, 100);
    }
    //Status and color scheme change as more rain is caught
    
    text (score, width/2, 300);
    //Score displays and changes color depending on score
    
    
  }
  if (gameStage== 2) {
      fill (0, 0, 255);
    text (score, width/2, height/2);
  }
}

