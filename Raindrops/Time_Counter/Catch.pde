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
      r.loc.y= height*height;
    }
  }
}
