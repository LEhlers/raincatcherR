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
  
//  void catchDrop (rain r) {
//  if (locc.dist (r.locc) < dc/2 + (r.dc)/2) {
//    r.locc.y= height-height;
//  }
  
}
