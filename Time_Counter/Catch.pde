class catcher {

  int dc;
  PVector locc;
  color orange;

  catcher() {
    dc=40;
    locc= new PVector (mouseX, height-100);
    orange = color (220, 50, 30);
  }

  void displayC () {
    fill (orange);
    ellipse (locc.x+ mouseX, locc.y+ (mouseY/25), dc, dc);
    // Y location is mostly fixed, allowing slight verticle movement, X location follows mouse
  }

  //FIX THIS TO MAKE IT CATCH!!!!!

  void catchDrop (rain r) {
    if (r.loc.y < height-60 && r.loc.y > height- 100 && r.loc.x > locc.x+ mouseX - dc && r.loc.x < locc.x+ mouseX +dc) {
      r.loc.y= -10000;
      score ++;
    }
    //if the blue drop hits the circle, it is moved far away, and score increases by one
     if (r.locG.y < height-60 && r.locG.y > height- 100 && r.locG.x > locc.x+ mouseX - dc && r.locG.x < locc.x+ mouseX +dc) {
      r.locG.y= -10000;
      score += 5;
    }
    //if the green drop hits the circle, it is moved far away, and score increases by five
  }
  void catchDrop (goldRain gr) {
    if (gr.locGo.y < height-60 && gr.locGo.y > height- 100 && gr.locGo.x > locc.x+ mouseX - dc && gr.locGo.x < locc.x+ mouseX +dc) {
      gr.locGo.y= -10000;
      score += 20;
    }
    //if the golden drop hits the circle, it is moved far away, and score increases by twenty
  }
  void catchDrop (redRain rr) {
    if (rr.locR.y < height-60 && rr.locR.y > height- 100 && rr.locR.x > locc.x+ mouseX - dc/2 && rr.locR.x < locc.x+ mouseX +dc/2) {
      rr.locR.y= -10000;
      gameStage ++;
      text ("Death by Red Rain", width/2, 550);
    }
  }
  //if the red drop hits the circle, the end screen is displayed, with a message explaining the game is over
}
