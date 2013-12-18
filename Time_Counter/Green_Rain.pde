/*class greenRain {
  float d, dd;
  PVector loc, vel, spd;
  color green;

  greenRain() {
    d= (random(5, 8));
    dd= (random(5, 8));
    //raindrops can be a variety of small sizes
    loc= new PVector (random(width), random(-300, 0));
    //raindrops are staggered as some fall up to 300 pixels above the screen
    spd= new PVector (random(2), random (1, 3));
    //raindrops can fall at a variety of comparable speeds
    green= color (0, 240, 25);
    //raindrops can be different varieties of blue
  }

  void displayG () {
    fill (green);
    ellipse (loc.x, loc.y, d, dd);
  }

  void moveG() {
    loc.add (spd);
    //location changes, creating the "falling" of the raindrops
    if (loc.y >= height) {
      loc.y= 0;
    }
    if (loc.x >= width) {
      loc.x= 0;
    }
    //raindrops reset to top if the pass through the bottom or sides
  }
}
*/
