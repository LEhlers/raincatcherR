class catcher {
  int cxy;
  int dc;
  PVector locc;
  
  
  catcher() {
    dc=40;
    locc= new PVector (mouseX, height-100);
  }
  
  void displayC () {
    ellipse (locc.x+ mouseX, locc.y, dc, dc);
  }
}
